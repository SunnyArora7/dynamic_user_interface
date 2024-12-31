class ConditionModel {
  List<ConditionCards>? conditionCards;
  Padding? padding;

  ConditionModel({this.conditionCards, this.padding});

  ConditionModel.fromJson(Map<String, dynamic> json) {
    if (json['conditionCards'] != null) {
      conditionCards = <ConditionCards>[];
      json['conditionCards'].forEach((v) {
        conditionCards!.add(ConditionCards.fromJson(v));
      });
    }
    padding =
        json['padding'] != null ? Padding.fromJson(json['padding']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (conditionCards != null) {
      data['conditionCards'] = conditionCards!.map((v) => v.toJson()).toList();
    }
    if (padding != null) {
      data['padding'] = padding!.toJson();
    }
    return data;
  }
}

class ConditionCards {
  String? backgroundColor;
  Icon? icon;
  Title? title;
  Title? subtitle;
  ArrowIcon? arrowIcon;

  ConditionCards(
      {this.backgroundColor,
      this.icon,
      this.title,
      this.subtitle,
      this.arrowIcon});

  ConditionCards.fromJson(Map<String, dynamic> json) {
    backgroundColor = json['backgroundColor'];
    icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    subtitle =
        json['subtitle'] != null ? Title.fromJson(json['subtitle']) : null;
    arrowIcon = json['arrowIcon'] != null
        ? ArrowIcon.fromJson(json['arrowIcon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backgroundColor'] = backgroundColor;
    if (icon != null) {
      data['icon'] = icon!.toJson();
    }
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (subtitle != null) {
      data['subtitle'] = subtitle!.toJson();
    }
    if (arrowIcon != null) {
      data['arrowIcon'] = arrowIcon!.toJson();
    }
    return data;
  }
}

class Icon {
  String? name;
  int? size;
  String? color;

  Icon({this.name, this.size, this.color});

  Icon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    size = json['size'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['size'] = size;
    data['color'] = color;
    return data;
  }
}

class Title {
  String? text;
  Style? style;

  Title({this.text, this.style});

  Title.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    style = json['style'] != null ? Style.fromJson(json['style']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    if (style != null) {
      data['style'] = style!.toJson();
    }
    return data;
  }
}

class Style {
  int? fontSize;
  String? color;
  String? fontWeight;

  Style({this.fontSize, this.color, this.fontWeight});

  Style.fromJson(Map<String, dynamic> json) {
    fontSize = json['fontSize'];
    color = json['color'];
    fontWeight = json['fontWeight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fontSize'] = fontSize;
    data['color'] = color;
    data['fontWeight'] = fontWeight;
    return data;
  }
}

class ArrowIcon {
  String? name;
  dynamic size;
  dynamic color;

  ArrowIcon({this.name, this.size, this.color});

  ArrowIcon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    size = json['size'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['size'] = size;
    data['color'] = color;
    return data;
  }
}

class Padding {
  int? horizontal;
  int? vertical;

  Padding({this.horizontal, this.vertical});

  Padding.fromJson(Map<String, dynamic> json) {
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
