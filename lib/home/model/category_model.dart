class CategoryModel {
  Title? title;
  List<CategoryItems>? categoryItems;
  Layout? layout;

  CategoryModel({this.title, this.categoryItems, this.layout});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    if (json['categoryItems'] != null) {
      categoryItems = <CategoryItems>[];
      json['categoryItems'].forEach((v) {
        categoryItems!.add(CategoryItems.fromJson(v));
      });
    }
    layout = json['layout'] != null ? Layout.fromJson(json['layout']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (categoryItems != null) {
      data['categoryItems'] = categoryItems!.map((v) => v.toJson()).toList();
    }
    if (layout != null) {
      data['layout'] = layout!.toJson();
    }
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
  String? fontWeight;
  String? fontStyle;
  String? color;

  Style({this.fontSize, this.fontWeight, this.fontStyle, this.color});

  Style.fromJson(Map<String, dynamic> json) {
    fontSize = json['fontSize'];
    fontWeight = json['fontWeight'];
    fontStyle = json['fontStyle'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fontSize'] = fontSize;
    data['fontWeight'] = fontWeight;
    data['fontStyle'] = fontStyle;
    data['color'] = color;
    return data;
  }
}

class CategoryItems {
  String? name;
  String? image;
  Size? size;
  Padding? padding;
  String? alignment;
  Style? textStyle;

  CategoryItems(
      {this.name,
      this.image,
      this.size,
      this.padding,
      this.alignment,
      this.textStyle});

  CategoryItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    size = json['size'] != null ? Size.fromJson(json['size']) : null;
    padding =
        json['padding'] != null ? Padding.fromJson(json['padding']) : null;
    alignment = json['alignment'];
    textStyle =
        json['textStyle'] != null ? Style.fromJson(json['textStyle']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    if (size != null) {
      data['size'] = size!.toJson();
    }
    if (padding != null) {
      data['padding'] = padding!.toJson();
    }
    data['alignment'] = alignment;
    if (textStyle != null) {
      data['textStyle'] = textStyle!.toJson();
    }
    return data;
  }
}

class Size {
  int? width;
  int? height;

  Size({this.width, this.height});

  Size.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}

class Padding {
  int? top;
  int? bottom;
  int? left;
  int? right;

  Padding({this.top, this.bottom, this.left, this.right});

  Padding.fromJson(Map<String, dynamic> json) {
    top = json['top'];
    bottom = json['bottom'];
    left = json['left'];
    right = json['right'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['top'] = top;
    data['bottom'] = bottom;
    data['left'] = left;
    data['right'] = right;
    return data;
  }
}

class Layout {
  int? spacing;
  int? runSpacing;
  String? wrapAlignment;

  Layout({this.spacing, this.runSpacing, this.wrapAlignment});

  Layout.fromJson(Map<String, dynamic> json) {
    spacing = json['spacing'];
    runSpacing = json['runSpacing'];
    wrapAlignment = json['wrapAlignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['spacing'] = spacing;
    data['runSpacing'] = runSpacing;
    data['wrapAlignment'] = wrapAlignment;
    return data;
  }
}
