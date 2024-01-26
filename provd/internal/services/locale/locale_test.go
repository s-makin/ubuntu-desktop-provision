package locale_test

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/locale"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetLocale(t *testing.T) {
	t.Parallel()
	tests := map[string]struct {
		wantError bool
	}{
		// Success case
		"find locale": {},

		// Error case
		"locale error": {wantError: true},
	}
	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			var opts []locale.Option
			if tc.wantError {
				opts = append(opts, locale.WithLocalePath("localeerror"))
			}

			cleint := newLocaleClient(t, opts...)

			_, err := cleint.GetLocale(context.Background(), &emptypb.Empty{})

			if tc.wantError {
				require.Error(t, err, "GetLocale should have returned an error, but did not")
				return
			}
			require.NoError(t, err, "GetLocale should not return an error, but did")
		})
	}
}

func TestSetLocale(t *testing.T) {
	t.Parallel()
	tests := map[string]struct {
		locale    string
		wantError bool
	}{
		// Success case
		"valid locale": {locale: "en_US.UTF-8"},

		// Error cases
		"empty locale": {locale: "", wantError: true},
		"locale error": {locale: "locale_error", wantError: true},
	}
	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			cleint := newLocaleClient(t)

			_, err := cleint.SetLocale(context.Background(), &pb.SetLocaleRequest{Locale: tc.locale})

			if tc.wantError {
				require.Error(t, err, "SetLocale should have returned an error, but did not")
				return
			}
			require.NoError(t, err, "SetLocale should not return an error, but did")
		})
	}
}

// newLocaleClient creates a new locale client for testing, with a temp unix socket and mock Dbus connection.
func newLocaleClient(t *testing.T, opts ...locale.Option) pb.LocaleServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := locale.New(bus, opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterLocaleServiceServer(grpcServer, service)
	done := make(chan struct{})
	go func() {
		defer close(done)
		_ = grpcServer.Serve(lis)
	}()
	t.Cleanup(func() {
		grpcServer.Stop()
		<-done
	})

	conn, err := grpc.Dial("unix://"+socketPath, grpc.WithTransportCredentials(insecure.NewCredentials()))
	require.NoError(t, err, "Setup: Could not connect to GRPC server")
	t.Cleanup(func() { _ = conn.Close() })

	return pb.NewLocaleServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	defer testutils.StartLocalSystemBus()()

	conn, err := testutils.GetSystemBusConnection()

	if err != nil {
		slog.Error(fmt.Sprintf("Could not get system bus connection: %v", err))
		os.Exit(1)
	}

	err = testutils.ExportLocaleMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export locale mock: %v", err))
		os.Exit(1)
	}

	m.Run()
}
