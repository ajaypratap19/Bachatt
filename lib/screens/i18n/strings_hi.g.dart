///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsHi implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	// Translations
	@override String get appName => 'बचट';
	@override String get appPunchLine => 'बचत करेगा भारत';
	@override String get verificationOneHeading => 'आपका व्हाट्सएप नंबर क्या है?';
	@override String get verificationOneSubHeading => 'कृपया अपना आधार से जुड़ा मोबाइल नंबर दर्ज करें';
	@override String get mobileNumber => 'मोबाइल नंबर';
	@override String get enterOtp => 'कृपया ओटीपी दर्ज करें';
	@override String get sent => 'हमने इसे यहां भेजा है:';
	@override String get AppInfoSplashOneHeading => 'FD के रिटर्न,\n₹100 रोज़ाना से';
	@override String get AppInfoSplashTwoHeading => 'कोई जुर्माना नहीं,\nकभी भी निकलें';
	@override String get AppInfoSplashThirdHeading => '100% सुरक्षित और\nसुनिशचित';
	@override String get AppInfoSplashOneSubHeading => 'छोटा निवेश, बड़ा भविष्य';
	@override String get AppInfoSplashTwoSubHeading => '24 घंटे, कोई भी दिन, जरूरी के\nअनुसर कितना भी निकलेगा।';
	@override String get AppInfoSplashThreeSubHeading => 'आपकी बचत, एसबीआई और आईसीआईसीआई के\nभरोसे के साथ।';
	@override String get kContinue => 'जारी रखना';
	@override String get startSaving => 'सहेजना प्रारंभ करें';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appName': return 'बचट';
			case 'appPunchLine': return 'बचत करेगा भारत';
			case 'verificationOneHeading': return 'आपका व्हाट्सएप नंबर क्या है?';
			case 'verificationOneSubHeading': return 'कृपया अपना आधार से जुड़ा मोबाइल नंबर दर्ज करें';
			case 'mobileNumber': return 'मोबाइल नंबर';
			case 'enterOtp': return 'कृपया ओटीपी दर्ज करें';
			case 'sent': return 'हमने इसे यहां भेजा है:';
			case 'AppInfoSplashOneHeading': return 'FD के रिटर्न,\n₹100 रोज़ाना से';
			case 'AppInfoSplashTwoHeading': return 'कोई जुर्माना नहीं,\nकभी भी निकलें';
			case 'AppInfoSplashThirdHeading': return '100% सुरक्षित और\nसुनिशचित';
			case 'AppInfoSplashOneSubHeading': return 'छोटा निवेश, बड़ा भविष्य';
			case 'AppInfoSplashTwoSubHeading': return '24 घंटे, कोई भी दिन, जरूरी के\nअनुसर कितना भी निकलेगा।';
			case 'AppInfoSplashThreeSubHeading': return 'आपकी बचत, एसबीआई और आईसीआईसीआई के\nभरोसे के साथ।';
			case 'kContinue': return 'जारी रखना';
			case 'startSaving': return 'सहेजना प्रारंभ करें';
			default: return null;
		}
	}
}

