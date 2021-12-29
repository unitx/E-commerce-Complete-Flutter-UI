class ProductModel {
  List<Items> items;
  SearchCriteria searchCriteria;
  int totalCount;

  ProductModel(
      {required this.items,
      required this.searchCriteria,
      required this.totalCount});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    // ignore: deprecated_member_use
    final qq = <Items>[];

    if (json['items'] != null) {
      json['items'].forEach((v) {
        qq.add(new Items.fromJson(v));
      });
    }
    return ProductModel(
        items: qq,
        searchCriteria: new SearchCriteria.fromJson(json['search_criteria']),
        totalCount: json['total_count']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    if (this.searchCriteria != null) {
      data['search_criteria'] = this.searchCriteria.toJson();
    }
    data['total_count'] = this.totalCount;
    return data;
  }
}

class Items {
  int id;
  String sku;
  String name;
  int attributeSetId;
  int price;
  int status;
  int visibility;
  String typeId;
  String createdAt;
  String updatedAt;
  int weight;
  ExtensionAttributes extensionAttributes;
  List<ProductLinks> productLinks;
  List<Null> options;
  List<MediaGalleryEntries> mediaGalleryEntries;
  List<Null> tierPrices;
  List<CustomAttributes> customAttributes;

  Items(
      {required this.id,
      required this.sku,
      required this.name,
      required this.attributeSetId,
      required this.price,
      required this.status,
      required this.visibility,
      required this.typeId,
      required this.createdAt,
      required this.updatedAt,
      required this.weight,
      required this.extensionAttributes,
      required this.productLinks,
      required this.options,
      required this.mediaGalleryEntries,
      required this.tierPrices,
      required this.customAttributes});

  factory Items.fromJson(Map<String, dynamic> json) {
    final productLinks = <ProductLinks>[];
    final options = <Null>[];
    final mediaGalleryEntries = <MediaGalleryEntries>[];
    final tierPrices = <Null>[];
    final customAttributes = <CustomAttributes>[];

    if (json['product_links'] != null) {
      json['product_links'].forEach((v) {
        productLinks.add(new ProductLinks.fromJson(v));
      });
    }
    if (json['options'] != null) {
      json['options'].forEach((v) {
        options.add(v);
      });
    }
    if (json['media_gallery_entries'] != null) {
      json['media_gallery_entries'].forEach((v) {
        mediaGalleryEntries.add(new MediaGalleryEntries.fromJson(v));
      });
    }
    if (json['tier_prices'] != null) {
      json['tier_prices'].forEach((v) {
        tierPrices.add(v);
      });
    }
    if (json['custom_attributes'] != null) {
      json['custom_attributes'].forEach((v) {
        customAttributes.add(new CustomAttributes.fromJson(v));
      });
    }
    return Items(
      id: json['id'],
      sku: json['sku'],
      name: json['name'],
      attributeSetId: json['attribute_set_id'],
      price: json['price'],
      status: json['status'],
      visibility: json['visibility'],
      typeId: json['type_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      weight: json['weight'],
      extensionAttributes:
          ExtensionAttributes.fromJson(json['extension_attributes']),
      customAttributes: customAttributes,
      mediaGalleryEntries: mediaGalleryEntries,
      options: options,
      productLinks: productLinks,
      tierPrices: tierPrices,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sku'] = this.sku;
    data['name'] = this.name;
    data['attribute_set_id'] = this.attributeSetId;
    data['price'] = this.price;
    data['status'] = this.status;
    data['visibility'] = this.visibility;
    data['type_id'] = this.typeId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['weight'] = this.weight;
    if (this.extensionAttributes != null) {
      data['extension_attributes'] = this.extensionAttributes.toJson();
    }
    if (this.productLinks != null) {
      data['product_links'] = this.productLinks.map((v) => v.toJson()).toList();
    }
    if (this.options != null) {
      data['options'] = this.options.map((v) => v).toList();
    }
    if (this.mediaGalleryEntries != null) {
      data['media_gallery_entries'] =
          this.mediaGalleryEntries.map((v) => v.toJson()).toList();
    }
    if (this.tierPrices != null) {
      data['tier_prices'] = this.tierPrices.map((v) => v).toList();
    }
    if (this.customAttributes != null) {
      data['custom_attributes'] =
          this.customAttributes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExtensionAttributes {
  List<int> websiteIds;
  List<CategoryLinks> categoryLinks;

  ExtensionAttributes({required this.websiteIds, required this.categoryLinks});

  factory ExtensionAttributes.fromJson(Map<String, dynamic> json) {
    final categoryLinks = <CategoryLinks>[];
    if (json['category_links'] != null) {
      json['category_links'].forEach((v) {
        categoryLinks.add(new CategoryLinks.fromJson(v));
      });
    }
    return ExtensionAttributes(
        websiteIds: json['website_ids'].cast<int>(),
        categoryLinks: categoryLinks);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['website_ids'] = this.websiteIds;
    if (this.categoryLinks != null) {
      data['category_links'] =
          this.categoryLinks.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryLinks {
  int position;
  String categoryId;

  CategoryLinks({required this.position, required this.categoryId});

  factory CategoryLinks.fromJson(Map<String, dynamic> json) {
    return CategoryLinks(
      position: json['position'],
      categoryId: json['category_id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['position'] = this.position;
    data['category_id'] = this.categoryId;
    return data;
  }
}

class ProductLinks {
  String sku;
  String linkType;
  String linkedProductSku;
  String linkedProductType;
  int position;

  ProductLinks(
      {required this.sku,
      required this.linkType,
      required this.linkedProductSku,
      required this.linkedProductType,
      required this.position});

  factory ProductLinks.fromJson(Map<String, dynamic> json) {
    return ProductLinks(
      sku: json['sku'],
      linkType: json['link_type'],
      linkedProductSku: json['linked_product_sku'],
      linkedProductType: json['linked_product_type'],
      position: json['position'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sku'] = this.sku;
    data['link_type'] = this.linkType;
    data['linked_product_sku'] = this.linkedProductSku;
    data['linked_product_type'] = this.linkedProductType;
    data['position'] = this.position;
    return data;
  }
}

class MediaGalleryEntries {
  int id;
  String mediaType;
  String label;
  int position;
  bool disabled;
  List<String> types;
  String file;

  MediaGalleryEntries(
      {required this.id,
      required this.mediaType,
      required this.label,
      required this.position,
      required this.disabled,
      required this.types,
      required this.file});

  factory MediaGalleryEntries.fromJson(Map<String, dynamic> json) {
    return MediaGalleryEntries(
        id: json['id'],
        mediaType: json['media_type'],
        label: "json['label']",
        position: json['position'],
        disabled: json['disabled'],
        types: json['types'].cast<String>(),
        file: json['file']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['media_type'] = this.mediaType;
    data['label'] = this.label;
    data['position'] = this.position;
    data['disabled'] = this.disabled;
    data['types'] = this.types;
    data['file'] = this.file;
    return data;
  }
}

class CustomAttributes {
  String attributeCode;
  dynamic value;

  CustomAttributes({required this.attributeCode, required this.value});

  factory CustomAttributes.fromJson(Map<String, dynamic> json) {
    return CustomAttributes(
        attributeCode: json['attribute_code'], value: json['value']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['attribute_code'] = this.attributeCode;
    data['value'] = this.value;
    return data;
  }
}

class SearchCriteria {
  List<Null> filterGroups;

  SearchCriteria({required this.filterGroups});

  factory SearchCriteria.fromJson(Map<String, dynamic> json) {
    final filterGroups = <Null>[];

    if (json['filter_groups'] != null) {
      json['filter_groups'].forEach((v) {
        filterGroups.add(v);
      });
    }
    return SearchCriteria(filterGroups: filterGroups);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.filterGroups != null) {
      data['filter_groups'] = this.filterGroups.map((v) => v).toList();
    }
    return data;
  }
}
