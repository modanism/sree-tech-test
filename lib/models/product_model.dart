class ProductModel {
  DetailProduct? detailProduct;
  List<ListIndustry>? listIndustry;
  List<ListCategory>? listCategory;
  List<RelatedProducts>? relatedProducts;

  ProductModel(
      {this.detailProduct,
      this.listIndustry,
      this.listCategory,
      this.relatedProducts});

  ProductModel.fromJson(Map<String, dynamic> json) {
    detailProduct = json['detail_product'] != null
        ? new DetailProduct.fromJson(json['detail_product'])
        : null;
    if (json['list-industry'] != null) {
      listIndustry = <ListIndustry>[];
      json['list-industry'].forEach((v) {
        listIndustry!.add(new ListIndustry.fromJson(v));
      });
    }
    if (json['list-category'] != null) {
      listCategory = <ListCategory>[];
      json['list-category'].forEach((v) {
        listCategory!.add(new ListCategory.fromJson(v));
      });
    }
    if (json['related-products'] != null) {
      relatedProducts = <RelatedProducts>[];
      json['related-products'].forEach((v) {
        relatedProducts!.add(new RelatedProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.detailProduct != null) {
      data['detail_product'] = this.detailProduct!.toJson();
    }
    if (this.listIndustry != null) {
      data['list-industry'] =
          this.listIndustry!.map((v) => v.toJson()).toList();
    }
    if (this.listCategory != null) {
      data['list-category'] =
          this.listCategory!.map((v) => v.toJson()).toList();
    }
    if (this.relatedProducts != null) {
      data['related-products'] =
          this.relatedProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DetailProduct {
  String? productname;
  String? productimage;
  String? iupacName;
  String? casNumber;
  String? hsCode;
  String? formula;
  String? description;
  String? application;
  String? packagingName;

  DetailProduct(
      {this.productname,
      this.productimage,
      this.iupacName,
      this.casNumber,
      this.hsCode,
      this.formula,
      this.description,
      this.application,
      this.packagingName});

  DetailProduct.fromJson(Map<String, dynamic> json) {
    productname = json['productname'];
    productimage = json['productimage'];
    iupacName = json['iupac_name'];
    casNumber = json['cas_number'];
    hsCode = json['hs_code'];
    formula = json['formula'];
    description = json['description'];
    application = json['application'];
    packagingName = json['packaging_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productname'] = this.productname;
    data['productimage'] = this.productimage;
    data['iupac_name'] = this.iupacName;
    data['cas_number'] = this.casNumber;
    data['hs_code'] = this.hsCode;
    data['formula'] = this.formula;
    data['description'] = this.description;
    data['application'] = this.application;
    data['packaging_name'] = this.packagingName;
    return data;
  }
}

class ListIndustry {
  String? industryUrl;
  String? industryName;

  ListIndustry({this.industryUrl, this.industryName});

  ListIndustry.fromJson(Map<String, dynamic> json) {
    industryUrl = json['industry_url'];
    industryName = json['industry_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['industry_url'] = this.industryUrl;
    data['industry_name'] = this.industryName;
    return data;
  }
}

class ListCategory {
  String? categoryUrl;
  String? categoryName;

  ListCategory({this.categoryUrl, this.categoryName});

  ListCategory.fromJson(Map<String, dynamic> json) {
    categoryUrl = json['category_url'];
    categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_url'] = this.categoryUrl;
    data['category_name'] = this.categoryName;
    return data;
  }
}

class RelatedProducts {
  String? productname;
  String? productimage;
  String? casNumber;
  String? hsCode;
  String? seoUrl;

  RelatedProducts(
      {this.productname,
      this.productimage,
      this.casNumber,
      this.hsCode,
      this.seoUrl});

  RelatedProducts.fromJson(Map<String, dynamic> json) {
    productname = json['productname'];
    productimage = json['productimage'];
    casNumber = json['cas_number'];
    hsCode = json['hs_code'];
    seoUrl = json['seo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productname'] = this.productname;
    data['productimage'] = this.productimage;
    data['cas_number'] = this.casNumber;
    data['hs_code'] = this.hsCode;
    data['seo_url'] = this.seoUrl;
    return data;
  }
}
