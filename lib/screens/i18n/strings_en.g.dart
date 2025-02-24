///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get appName => 'Bachatt';
	String get appPunchLine => 'Bachatt Karega Bharat';
	String get verificationOneHeading => 'What is your\nWhatsapp number?';
	String get verificationOneSubHeading => 'Please enter yur aadhaar linked\nmobile number';
	String get mobileNumber => 'Mobile Number';
	String get enterOtp => 'Please enter OTP';
	String get sent => 'We have sent it to:';
	String get AppInfoSplashOneHeading => 'FD ke returns,\n₹100 rozana se';
	String get AppInfoSplashTwoHeading => 'Koi penalty nahin,\nkabhi bhi nikalen';
	String get AppInfoSplashThirdHeading => '100% surakshit aur\nsunishchit';
	String get AppInfoSplashOneSubHeading => 'chhota nivesh, bada bhavishya';
	String get AppInfoSplashTwoSubHeading => '24 ghante, kisi bhi din, jarurat ke\nanusar kitna bhi nikalne.';
	String get AppInfoSplashThreeSubHeading => 'Aapki bachatt, SBI aur ICICI ke\nbharose ke saath.';
	String get kContinue => 'Continue';
	String get startSaving => 'Start Saving';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'Bachatt';
			case 'appPunchLine': return 'Bachatt Karega Bharat';
			case 'verificationOneHeading': return 'What is your\nWhatsapp number?';
			case 'verificationOneSubHeading': return 'Please enter yur aadhaar linked\nmobile number';
			case 'mobileNumber': return 'Mobile Number';
			case 'enterOtp': return 'Please enter OTP';
			case 'sent': return 'We have sent it to:';
			case 'AppInfoSplashOneHeading': return 'FD ke returns,\n₹100 rozana se';
			case 'AppInfoSplashTwoHeading': return 'Koi penalty nahin,\nkabhi bhi nikalen';
			case 'AppInfoSplashThirdHeading': return '100% surakshit aur\nsunishchit';
			case 'AppInfoSplashOneSubHeading': return 'chhota nivesh, bada bhavishya';
			case 'AppInfoSplashTwoSubHeading': return '24 ghante, kisi bhi din, jarurat ke\nanusar kitna bhi nikalne.';
			case 'AppInfoSplashThreeSubHeading': return 'Aapki bachatt, SBI aur ICICI ke\nbharose ke saath.';
			case 'kContinue': return 'Continue';
			case 'startSaving': return 'Start Saving';
			default: return null;
		}
	}
}

