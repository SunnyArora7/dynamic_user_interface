class OffersModel {
  OffersSection? offersSection;

  OffersModel({this.offersSection});

  OffersModel.fromJson(Map<String, dynamic> json) {
    offersSection = json['offers_section'] != null
        ? OffersSection.fromJson(json['offers_section'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (offersSection != null) {
      data['offers_section'] = offersSection!.toJson();
    }
    return data;
  }
}

class OffersSection {
  Header? header;
  OffersList? offersList;

  OffersSection({this.header, this.offersList});

  OffersSection.fromJson(Map<String, dynamic> json) {
    header =
    json['header'] != null ? Header.fromJson(json['header']) : null;
    offersList = json['offers_list'] != null
        ? OffersList.fromJson(json['offers_list'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (header != null) {
      data['header'] = header!.toJson();
    }
    if (offersList != null) {
      data['offers_list'] = offersList!.toJson();
    }
    return data;
  }
}

class Header {
  String? title;
  TitleStyle? titleStyle;
  SeeAll? seeAll;

  Header({this.title, this.titleStyle, this.seeAll});

  Header.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleStyle = json['title_style'] != null
        ? TitleStyle.fromJson(json['title_style'])
        : null;
    seeAll =
    json['see_all'] != null ? SeeAll.fromJson(json['see_all']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (titleStyle != null) {
      data['title_style'] = titleStyle!.toJson();
    }
    if (seeAll != null) {
      data['see_all'] = seeAll!.toJson();
    }
    return data;
  }
}

class TitleStyle {
  int? fontSize;
  String? fontWeight;
  String? color;

  TitleStyle({this.fontSize, this.fontWeight, this.color});

  TitleStyle.fromJson(Map<String, dynamic> json) {
    fontSize = json['font_size'];
    fontWeight = json['font_weight'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['font_size'] = fontSize;
    data['font_weight'] = fontWeight;
    data['color'] = color;
    return data;
  }
}

class SeeAll {
  String? text;
  TitleStyle? textStyle;
  Icon? icon;

  SeeAll({this.text, this.textStyle, this.icon});

  SeeAll.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    textStyle = json['text_style'] != null
        ? TitleStyle.fromJson(json['text_style'])
        : null;
    icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (textStyle != null) {
      data['text_style'] = textStyle!.toJson();
    }
    if (icon != null) {
      data['icon'] = icon!.toJson();
    }
    return data;
  }
}

class Icon {
  String? name;
  String? color;
  int? size;

  Icon({this.name, this.color, this.size});

  Icon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    color = json['color'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['color'] = color;
    data['size'] = size;
    return data;
  }
}

class OffersList {
  String? scrollDirection;
  int? listSize;
  int? sizedBoxSize;
  List<Items>? items;

  OffersList(
      {this.scrollDirection, this.listSize, this.sizedBoxSize, this.items});

  OffersList.fromJson(Map<String, dynamic> json) {
    scrollDirection = json['scroll_direction'];
    listSize = json['list_size'];
    sizedBoxSize = json['sized_box_size'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['scroll_direction'] = scrollDirection;
    data['list_size'] = listSize;
    data['sized_box_size'] = sizedBoxSize;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? image;
  ImageSize? imageSize;
  OfferDetails? offerDetails;
  ContainerStyle? containerStyle;

  Items({this.image, this.imageSize, this.offerDetails, this.containerStyle});

  Items.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    imageSize = json['image_size'] != null
        ? ImageSize.fromJson(json['image_size'])
        : null;
    offerDetails = json['offer_details'] != null
        ? OfferDetails.fromJson(json['offer_details'])
        : null;
    containerStyle = json['container_style'] != null
        ? ContainerStyle.fromJson(json['container_style'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    if (imageSize != null) {
      data['image_size'] = imageSize!.toJson();
    }
    if (offerDetails != null) {
      data['offer_details'] = offerDetails!.toJson();
    }
    if (containerStyle != null) {
      data['container_style'] = containerStyle!.toJson();
    }
    return data;
  }
}

class ImageSize {
  int? height;

  ImageSize({this.height});

  ImageSize.fromJson(Map<String, dynamic> json) {
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    return data;
  }
}

class OfferDetails {
  String? title;
  TitleStyle? titleStyle;
  String? description;
  DescriptionStyle? descriptionStyle;
  String? note;
  TitleStyle? noteStyle;

  OfferDetails(
      {this.title,
        this.titleStyle,
        this.description,
        this.descriptionStyle,
        this.note,
        this.noteStyle});

  OfferDetails.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    titleStyle = json['title_style'] != null
        ? TitleStyle.fromJson(json['title_style'])
        : null;
    description = json['description'];
    descriptionStyle = json['description_style'] != null
        ? DescriptionStyle.fromJson(json['description_style'])
        : null;
    note = json['note'];
    noteStyle = json['note_style'] != null
        ? TitleStyle.fromJson(json['note_style'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    if (titleStyle != null) {
      data['title_style'] = titleStyle!.toJson();
    }
    data['description'] = description;
    if (descriptionStyle != null) {
      data['description_style'] = descriptionStyle!.toJson();
    }
    data['note'] = note;
    if (noteStyle != null) {
      data['note_style'] = noteStyle!.toJson();
    }
    return data;
  }
}

class DescriptionStyle {
  int? fontSize;
  String? fontWeight;
  String? overflow;
  String? color;

  DescriptionStyle({this.fontSize, this.fontWeight, this.overflow, this.color});

  DescriptionStyle.fromJson(Map<String, dynamic> json) {
    fontSize = json['font_size'];
    fontWeight = json['font_weight'];
    overflow = json['overflow'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['font_size'] = fontSize;
    data['font_weight'] = fontWeight;
    data['overflow'] = overflow;
    data['color'] = color;
    return data;
  }
}

class ContainerStyle {
  String? backgroundColor;
  int? padding;

  ContainerStyle({this.backgroundColor, this.padding});

  ContainerStyle.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['background_color'];
    padding = json['padding'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['background_color'] = backgroundColor;
    data['padding'] = padding;
    return data;
  }
}
