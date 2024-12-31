class AppBarModel {
  String? appBarName;
  CardProperties? cardProperties;
  List<AppBarIconProperties>? appBarIconProperties;
  List<TextProperties>? textProperties;
  SpacingProperties? spacingProperties;

  AppBarModel(
      {this.appBarName,
        this.cardProperties,
        this.appBarIconProperties,
        this.textProperties,
        this.spacingProperties});

  AppBarModel.fromJson(Map<String, dynamic> json) {
    appBarName = json['appBarName'];
    cardProperties = json['cardProperties'] != null
        ? CardProperties.fromJson(json['cardProperties'])
        : null;
    if (json['appBarIconProperties'] != null) {
      appBarIconProperties = <AppBarIconProperties>[];
      json['appBarIconProperties'].forEach((v) {
        appBarIconProperties!.add(AppBarIconProperties.fromJson(v));
      });
    }
    if (json['textProperties'] != null) {
      textProperties = <TextProperties>[];
      json['textProperties'].forEach((v) {
        textProperties!.add(TextProperties.fromJson(v));
      });
    }
    spacingProperties = json['spacingProperties'] != null
        ? SpacingProperties.fromJson(json['spacingProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['appBarName'] = appBarName;
    if (cardProperties != null) {
      data['cardProperties'] = cardProperties!.toJson();
    }
    if (appBarIconProperties != null) {
      data['appBarIconProperties'] =
          appBarIconProperties!.map((v) => v.toJson()).toList();
    }
    if (textProperties != null) {
      data['textProperties'] =
          textProperties!.map((v) => v.toJson()).toList();
    }
    if (spacingProperties != null) {
      data['spacingProperties'] = spacingProperties!.toJson();
    }
    return data;
  }
}

class CardProperties {
  dynamic borderRadius;
  String? borderColor;
  String? cardColor;
  dynamic borderWidth;
  int? elevation;
  int? paddingHorizontal;
  int? paddingVertical;

  CardProperties(
      {this.borderRadius,
        this.borderColor,
        this.borderWidth,
        this.elevation,
        this.paddingHorizontal,
        this.paddingVertical,
        this.cardColor,

      });

  CardProperties.fromJson(Map<String, dynamic> json) {
    borderRadius = json['borderRadius'];
    borderColor = json['borderColor'];
    borderWidth = json['borderWidth'];
    elevation = json['elevation'];
    paddingHorizontal = json['paddingHorizontal'];
    paddingVertical = json['paddingVertical'];
    cardColor = json['cardColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['borderRadius'] = borderRadius;
    data['borderColor'] = borderColor;
    data['borderWidth'] = borderWidth;
    data['elevation'] = elevation;
    data['paddingHorizontal'] = paddingHorizontal;
    data['paddingVertical'] = paddingVertical;
    data['cardColor'] = cardColor;
    return data;
  }
}

class AppBarIconProperties {
  String? iconName;
  int? iconSize;
  String? shadowColor;
  int? blurRadius;
  String ?iconColor;

  AppBarIconProperties(
      {this.iconName, this.iconSize, this.shadowColor, this.blurRadius});

  AppBarIconProperties.fromJson(Map<String, dynamic> json) {
    iconName = json['iconName'];
    iconSize = json['iconSize'];
    shadowColor = json['shadowColor'];
    blurRadius = json['blurRadius'];
    iconColor = json['iconColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['iconName'] = iconName;
    data['iconSize'] = iconSize;
    data['shadowColor'] = shadowColor;
    data['blurRadius'] = blurRadius;
    data['iconColor'] = iconColor;
    return data;
  }
}

class TextProperties {
  String? text;
  String? color;
  int? fontSize;

  TextProperties({this.text, this.color, this.fontSize});

  TextProperties.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    color = json['color'];
    fontSize = json['fontSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['color'] = color;
    data['fontSize'] = fontSize;
    return data;
  }
}

class SpacingProperties {
  int? betweenIcons;
  int? betweenIconAndText;

  SpacingProperties({this.betweenIcons, this.betweenIconAndText});

  SpacingProperties.fromJson(Map<String, dynamic> json) {
    betweenIcons = json['betweenIcons'];
    betweenIconAndText = json['betweenIconAndText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['betweenIcons'] = betweenIcons;
    data['betweenIconAndText'] = betweenIconAndText;
    return data;
  }
}
