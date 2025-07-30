import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
    country: json['country'] as String?,
    saleability: json['saleability'] as String?,
    isEbook: json['isEbook'] as bool?,
    listPrice:
        json['listPrice'] == null
            ? null
            : ListPrice.fromJson(json[''] as Map<String, dynamic>),
    retailPrice:
        json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
    buyLink: json['buyLink'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'listPrice': listPrice?.toJson(),
    'retailPrice': retailPrice?.toJson(),
    'buyLink': buyLink,
  };

  @override
  List<Object?> get props => [
    country,
    saleability,
    isEbook,
    listPrice,
    retailPrice,
    buyLink,
  ];
  // Placeholder for testing purposes
  static SaleInfo placeholder() {
    return const SaleInfo(
      country: 'US',
      saleability: 'FOR_SALE',
      isEbook: true,
      listPrice: ListPrice(amount: 9.99, currencyCode: 'USD'),
      retailPrice: RetailPrice(amount: 9.99, currencyCode: 'USD'),
      buyLink: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
    );
  }
}
