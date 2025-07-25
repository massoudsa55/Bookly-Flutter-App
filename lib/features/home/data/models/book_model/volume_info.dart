import 'package:equatable/equatable.dart';

import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
	final String? title;
	final List<String>? authors;
	final String? publishedDate;
	final List<IndustryIdentifier>? industryIdentifiers;
	final ReadingModes? readingModes;
	final String? printType;
	final String? maturityRating;
	final bool? allowAnonLogging;
	final String? contentVersion;
	final PanelizationSummary? panelizationSummary;
	final String? language;
	final String? previewLink;
	final String? infoLink;
	final String? canonicalVolumeLink;

	const VolumeInfo({
		this.title, 
		this.authors, 
		this.publishedDate, 
		this.industryIdentifiers, 
		this.readingModes, 
		this.printType, 
		this.maturityRating, 
		this.allowAnonLogging, 
		this.contentVersion, 
		this.panelizationSummary, 
		this.language, 
		this.previewLink, 
		this.infoLink, 
		this.canonicalVolumeLink, 
	});

	factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
				title: json['title'] as String?,
				authors: json['authors'] as List<String>?,
				publishedDate: json['publishedDate'] as String?,
				industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
						?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
						.toList(),
				readingModes: json['readingModes'] == null
						? null
						: ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
				printType: json['printType'] as String?,
				maturityRating: json['maturityRating'] as String?,
				allowAnonLogging: json['allowAnonLogging'] as bool?,
				contentVersion: json['contentVersion'] as String?,
				panelizationSummary: json['panelizationSummary'] == null
						? null
						: PanelizationSummary.fromJson(json['panelizationSummary'] as Map<String, dynamic>),
				language: json['language'] as String?,
				previewLink: json['previewLink'] as String?,
				infoLink: json['infoLink'] as String?,
				canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'title': title,
				'authors': authors,
				'publishedDate': publishedDate,
				'industryIdentifiers': industryIdentifiers?.map((e) => e.toJson()).toList(),
				'readingModes': readingModes?.toJson(),
				'printType': printType,
				'maturityRating': maturityRating,
				'allowAnonLogging': allowAnonLogging,
				'contentVersion': contentVersion,
				'panelizationSummary': panelizationSummary?.toJson(),
				'language': language,
				'previewLink': previewLink,
				'infoLink': infoLink,
				'canonicalVolumeLink': canonicalVolumeLink,
			};

	@override
	List<Object?> get props {
		return [
				title,
				authors,
				publishedDate,
				industryIdentifiers,
				readingModes,
				printType,
				maturityRating,
				allowAnonLogging,
				contentVersion,
				panelizationSummary,
				language,
				previewLink,
				infoLink,
				canonicalVolumeLink,
		];
	}
}
