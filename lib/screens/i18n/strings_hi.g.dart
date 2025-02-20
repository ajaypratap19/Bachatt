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
			default: return null;
		}
	}
}

