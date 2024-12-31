class DealsModel {
  Header? header;
  Padding? padding;
  ListView? listView;
  List<Items>? items;

  DealsModel({this.header, this.padding, this.listView, this.items});

  DealsModel.fromJson(Map<String, dynamic> json) {
    header = json['header'] != null ? Header.fromJson(json['header']) : null;
    padding =
        json['padding'] != null ? Padding.fromJson(json['padding']) : null;
    listView =
        json['listView'] != null ? ListView.fromJson(json['listView']) : null;
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (header != null) {
      data['header'] = header!.toJson();
    }
    if (padding != null) {
      data['padding'] = padding!.toJson();
    }
    if (listView != null) {
      data['listView'] = listView!.toJson();
    }
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Header {
  String? title;
  String? subtitle;
  String? viewAllText;
  TextStyle? textStyle;
  TextStyle? subtitleStyle;
  TextStyle? viewAllStyle;

  Header(
      {this.title,
      this.subtitle,
      this.viewAllText,
      this.textStyle,
      this.subtitleStyle,
      this.viewAllStyle});

  Header.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    viewAllText = json['viewAllText'];
    textStyle = json['textStyle'] != null
        ? TextStyle.fromJson(json['textStyle'])
        : null;
    subtitleStyle = json['subtitleStyle'] != null
        ? TextStyle.fromJson(json['subtitleStyle'])
        : null;
    viewAllStyle = json['viewAllStyle'] != null
        ? TextStyle.fromJson(json['viewAllStyle'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['viewAllText'] = viewAllText;
    if (textStyle != null) {
      data['textStyle'] = textStyle!.toJson();
    }
    if (subtitleStyle != null) {
      data['subtitleStyle'] = subtitleStyle!.toJson();
    }
    if (viewAllStyle != null) {
      data['viewAllStyle'] = viewAllStyle!.toJson();
    }
    return data;
  }
}

class TextStyle {
  int? fontSize;
  String? fontWeight;
  String? color;

  TextStyle({this.fontSize, this.fontWeight, this.color});

  TextStyle.fromJson(Map<String, dynamic> json) {
    fontSize = json['fontSize'];
    fontWeight = json['fontWeight'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fontSize'] = fontSize;
    data['fontWeight'] = fontWeight;
    data['color'] = color;
    return data;
  }
}

class Padding {
  int? all;
  int? vertical;
  int? horizontal;

  Padding({this.all, this.vertical, this.horizontal});

  Padding.fromJson(Map<String, dynamic> json) {
    all = json['all'];
    vertical = json['vertical'];
    horizontal = json['horizontal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['all'] = all;
    data['vertical'] = vertical;
    data['horizontal'] = horizontal;
    return data;
  }
}

class ListView {
  int? height;
  String? scrollDirection;
  int? separatorWidth;
  bool? shrinkWrap;

  ListView(
      {this.height,
      this.scrollDirection,
      this.separatorWidth,
      this.shrinkWrap});

  ListView.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    scrollDirection = json['scrollDirection'];
    separatorWidth = json['separatorWidth'];
    shrinkWrap = json['shrinkWrap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    data['scrollDirection'] = scrollDirection;
    data['separatorWidth'] = separatorWidth;
    data['shrinkWrap'] = shrinkWrap;
    return data;
  }
}

class Items {
  String? image;
  String? name;
  String? description;
  String? discount;
  String? price;
  TextStyle? textStyle;
  TextStyle? priceStyle;
  TextStyle? discountStyle;
  String? discountBackgroundColor;
  CardShape? cardShape;
  CardPadding? cardPadding;

  Items(
      {this.image,
      this.name,
      this.description,
      this.discount,
      this.price,
      this.textStyle,
      this.priceStyle,
      this.discountStyle,
      this.discountBackgroundColor,
      this.cardShape,
      this.cardPadding});

  Items.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    description = json['description'];
    discount = json['discount'];
    price = json['price'];
    textStyle = json['textStyle'] != null
        ? TextStyle.fromJson(json['textStyle'])
        : null;
    priceStyle = json['priceStyle'] != null
        ? TextStyle.fromJson(json['priceStyle'])
        : null;
    discountStyle = json['discountStyle'] != null
        ? TextStyle.fromJson(json['discountStyle'])
        : null;
    discountBackgroundColor = json['discountBackgroundColor'];
    cardShape = json['cardShape'] != null
        ? CardShape.fromJson(json['cardShape'])
        : null;
    cardPadding = json['cardPadding'] != null
        ? CardPadding.fromJson(json['cardPadding'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['description'] = description;
    data['discount'] = discount;
    data['price'] = price;
    if (textStyle != null) {
      data['textStyle'] = textStyle!.toJson();
    }
    if (priceStyle != null) {
      data['priceStyle'] = priceStyle!.toJson();
    }
    if (discountStyle != null) {
      data['discountStyle'] = discountStyle!.toJson();
    }
    data['discountBackgroundColor'] = discountBackgroundColor;
    if (cardShape != null) {
      data['cardShape'] = cardShape!.toJson();
    }
    if (cardPadding != null) {
      data['cardPadding'] = cardPadding!.toJson();
    }
    return data;
  }
}

class CardShape {
  int? borderRadius;
  int? elevation;

  CardShape({this.borderRadius, this.elevation});

  CardShape.fromJson(Map<String, dynamic> json) {
    borderRadius = json['borderRadius'];
    elevation = json['elevation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['borderRadius'] = borderRadius;
    data['elevation'] = elevation;
    return data;
  }
}

class CardPadding {
  int? horizontal;
  int? vertical;

  CardPadding({this.horizontal, this.vertical});

  CardPadding.fromJson(Map<String, dynamic> json) {
    horizontal = json['horizontal'];
    vertical = json['vertical'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['horizontal'] = horizontal;
    data['vertical'] = vertical;
    return data;
  }
}
