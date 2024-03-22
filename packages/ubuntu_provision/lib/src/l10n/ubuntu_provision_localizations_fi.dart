import 'ubuntu_provision_localizations.dart';

/// The translations for Finnish (`fi`).
class UbuntuProvisionLocalizationsFi extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibility';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accessibility in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Customise $DISTRO to your needs before you set up. You can change them later in System Settings.';
  }

  @override
  String get accessibilitySeeingLabel => 'Seeing';

  @override
  String get accessibilityHearingLabel => 'Hearing';

  @override
  String get accessibilityTypingLabel => 'Typing';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'High contrast';

  @override
  String get accessibilityLargeTextLabel => 'Large text';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Screen reader';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Something went wrong';

  @override
  String get errorPageUnexpected => 'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String get errorPageShowLog => 'Show log';

  @override
  String get errorPageHideLog => 'Hide log';

  @override
  String get restart => 'Restart';

  @override
  String get close => 'Close';

  @override
  String get timezonePageTitle => 'Valitse aikavyöhyke';

  @override
  String get timezoneLocationLabel => 'Sijainti';

  @override
  String get timezoneTimezoneLabel => 'Aikavyöhyke';

  @override
  String get keyboardTitle => 'Näppäimistön asettelu';

  @override
  String get keyboardHeader => 'Valitse näppäimistön asettelu:';

  @override
  String get keyboardTestHint => 'Kokeile näppäimistön asetuksia kirjoittamalla tähän';

  @override
  String get keyboardDetectTitle => 'Tunnista näppäimistön asettelu';

  @override
  String get keyboardDetectButton => 'Tunnista';

  @override
  String get keyboardVariantLabel => 'Näppäimistömuunnelma:';

  @override
  String get keyboardPressKeyLabel => 'Paina yhtä seuraavista näppäimistä:';

  @override
  String get keyboardKeyPresentLabel => 'Löytyykö seuraava näppäin näppäimistöstäsi?';

  @override
  String get themePageTitle => 'Valitse teema';

  @override
  String get themePageHeader => 'Voit vaihtaa ulkoasua milloin tahansa asetusten kautta.';

  @override
  String get themeDark => 'Tumma';

  @override
  String get themeLight => 'Vaalea';

  @override
  String localePageTitle(String DISTRO) {
    return 'Tervetuloa, tämä on $DISTRO';
  }

  @override
  String get localeHeader => 'Valitse kieli:';

  @override
  String get identityPageTitle => 'Määritä tili';

  @override
  String get identityAutoLogin => 'Kirjaudu sisään automaattisesti';

  @override
  String get identityRequirePassword => 'Vaadi salasana sisäänkirjautumiseen';

  @override
  String get identityRealNameLabel => 'Nimi';

  @override
  String get identityRealNameRequired => 'Nimi vaaditaan';

  @override
  String get identityRealNameTooLong => 'Nimi on liian pitkä.';

  @override
  String get identityHostnameLabel => 'Tietokoneen nimi';

  @override
  String get identityHostnameInfo => 'Nimi, jolla tietokone tunnistautuu toisille tietokoneille.';

  @override
  String get identityHostnameRequired => 'Tietokoneen nimi vaaditaan';

  @override
  String get identityHostnameTooLong => 'Tietokoneen nimi on liian pitkä.';

  @override
  String get identityInvalidHostname => 'Tietokoneen nimi on virheellinen';

  @override
  String get identityUsernameLabel => 'Valitse käyttäjätunnus';

  @override
  String get identityUsernameRequired => 'Käyttäjätunnus vaaditaan';

  @override
  String get identityInvalidUsername => 'Käyttäjätunnus on virheellinen';

  @override
  String get identityUsernameInUse => 'Kyseinen käyttäjänimi on jo olemassa.';

  @override
  String get identityUsernameSystemReserved => 'Kyseinen nimi on varattu järjestelmän käytettäväksi.';

  @override
  String get identityUsernameTooLong => 'Kyseinen nimi on liian pitkä.';

  @override
  String get identityUsernameInvalidChars => 'Kyseinen nimi sisältää virheellisiä merkkejä.';

  @override
  String get identityPasswordLabel => 'Valitse salasana';

  @override
  String get identityPasswordRequired => 'Salasana vaaditaan';

  @override
  String get identityConfirmPasswordLabel => 'Vahvista salasana';

  @override
  String get identityPasswordMismatch => 'Salasanat eivät täsmää';

  @override
  String get identityPasswordShow => 'Näytä';

  @override
  String get identityPasswordHide => 'Piilota';

  @override
  String get identityActiveDirectoryOption => 'Käytä Active Directorya';

  @override
  String get identityActiveDirectoryInfo => 'Kirjoitat domainin ja muut tiedot seuraavassa vaiheessa.';

  @override
  String get activeDirectoryTitle => 'Määritä Active Directory';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testaa domain-yhdistettävyyttä';

  @override
  String get activeDirectoryDomainLabel => 'Domain';

  @override
  String get activeDirectoryDomainEmpty => 'Vaadittu';

  @override
  String get activeDirectoryDomainTooLong => 'Liian pitkä';

  @override
  String get activeDirectoryDomainInvalidChars => 'Virheellisiä merkkejä';

  @override
  String get activeDirectoryDomainStartDot => 'Alkaa pisteellä (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Päättyy pisteeseen (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Alkaa tavuviivalla (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Päättyy tavuviivaan (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Sisältää lukuisia peräkkäisiä pisteitä (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domainia ei löydy';

  @override
  String get activeDirectoryAdminLabel => 'Domainiin liittävä käyttäjä';

  @override
  String get activeDirectoryAdminEmpty => 'Vaadittu';

  @override
  String get activeDirectoryAdminInvalidChars => 'Virheellisiä merkkejä';

  @override
  String get activeDirectoryPasswordLabel => 'Salasana';

  @override
  String get activeDirectoryPasswordEmpty => 'Vaadittu';

  @override
  String get activeDirectoryErrorTitle => 'Virhe määrittäessä yhteyttä Active Directoryyn';

  @override
  String get activeDirectoryErrorMessage => 'Valitettavasti Active Directorya ei voi määrittää tällä hetkellä. Kun tietokoneesi on valmis ja käynnissä, käy osoitteessa <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> saadaksesi ohjeita.';

  @override
  String get networkPageTitle => 'Yhdistä verkkoon';

  @override
  String get networkPageHeader => 'Tietokoneen liittäminen internetiin auttaa Ubuntua asentamaan tarvittavat lisäohjelmistot ja valitsemaan aikavyöhykkeen.\n\nYhdistä Ethernet-kaapelilla tai valitse Wi-Fi-verkko';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Käytä langallista yhteyttä';

  @override
  String get networkWiredNone => 'Langallista yhteyttä ei havaittu';

  @override
  String get networkWiredOff => 'Langallinen yhteys on kytketty pois päältä';

  @override
  String get networkWiredDisabled => 'Jos haluat käyttää Ethernet-yhteyttä tässä tietokoneessa, langallinen yhteys on otettava käyttöön';

  @override
  String get networkWiredEnable => 'Ota langallinen yhteys käyttöön';

  @override
  String get networkWifiOption => 'Yhdistä Wi-Fi-verkkoon';

  @override
  String get networkWifiOff => 'Langaton verkko ei käytössä';

  @override
  String get networkWifiNone => 'Wi-Fi-laitteita ei havaittu';

  @override
  String get networkWifiDisabled => 'Jos haluat käyttää Wi-Fi-yhteyttä tällä tietokoneella, langaton verkko on otettava käyttöön';

  @override
  String get networkWifiEnable => 'Ota Wi-Fi käyttöön';

  @override
  String get networkHiddenWifiOption => 'Yhdistä piilotettuun wifi-verkkoon';

  @override
  String get networkHiddenWifiNameLabel => 'Verkon nimi';

  @override
  String get networkHiddenWifiNameRequired => 'Verkon nimi vaaditaan';

  @override
  String get networkNoneOption => 'En halua muodostaa yhteyttä internetiin juuri nyt';

  @override
  String get eulaPageTitle => 'License agreement';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms => 'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'I have read and accept these terms';
}
