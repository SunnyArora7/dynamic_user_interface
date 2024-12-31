class CarouselModel {
  UiProperties? uiProperties;

  CarouselModel({this.uiProperties});

  CarouselModel.fromJson(Map<String, dynamic> json) {
    uiProperties = json['uiProperties'] != null
        ? UiProperties.fromJson(json['uiProperties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (uiProperties != null) {
      data['uiProperties'] = uiProperties!.toJson();
    }
    return data;
  }
}

class UiProperties {
  Carousel? carousel;
  ImageIndicators? imageIndicators;
  List<Images>? images;

  UiProperties({this.carousel, this.imageIndicators, this.images});

  UiProperties.fromJson(Map<String, dynamic> json) {
    carousel =
        json['carousel'] != null ? Carousel.fromJson(json['carousel']) : null;
    imageIndicators = json['imageIndicators'] != null
        ? ImageIndicators.fromJson(json['imageIndicators'])
        : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (carousel != null) {
      data['carousel'] = carousel!.toJson();
    }
    if (imageIndicators != null) {
      data['imageIndicators'] = imageIndicators!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Carousel {
  int? height;
  Padding? padding;
  Padding? margin;
  int? borderRadius;
  bool? autoPlay;
  String? scrollPhysics;
  int? aspectRatio;
  int? viewportFraction;

  Carousel(
      {this.height,
      this.padding,
      this.margin,
      this.borderRadius,
      this.autoPlay,
      this.scrollPhysics,
      this.aspectRatio,
      this.viewportFraction});

  Carousel.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    padding =
        json['padding'] != null ? Padding.fromJson(json['padding']) : null;
    margin = json['margin'] != null ? Padding.fromJson(json['margin']) : null;
    borderRadius = json['borderRadius'];
    autoPlay = json['autoPlay'];
    scrollPhysics = json['scrollPhysics'];
    aspectRatio = json['aspectRatio'];
    viewportFraction = json['viewportFraction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['height'] = height;
    if (padding != null) {
      data['padding'] = padding!.toJson();
    }
    if (margin != null) {
      data['margin'] = margin!.toJson();
    }
    data['borderRadius'] = borderRadius;
    data['autoPlay'] = autoPlay;
    data['scrollPhysics'] = scrollPhysics;
    data['aspectRatio'] = aspectRatio;
    data['viewportFraction'] = viewportFraction;
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

class ImageIndicators {
  IndicatorSize? indicatorSize;
  Spacing? spacing;
  String? activeColor;
  String? inactiveColor;

  ImageIndicators(
      {this.indicatorSize, this.spacing, this.activeColor, this.inactiveColor});

  ImageIndicators.fromJson(Map<String, dynamic> json) {
    indicatorSize = json['indicatorSize'] != null
        ? IndicatorSize.fromJson(json['indicatorSize'])
        : null;
    spacing =
        json['spacing'] != null ? Spacing.fromJson(json['spacing']) : null;
    activeColor = json['activeColor'];
    inactiveColor = json['inactiveColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (indicatorSize != null) {
      data['indicatorSize'] = indicatorSize!.toJson();
    }
    if (spacing != null) {
      data['spacing'] = spacing!.toJson();
    }
    data['activeColor'] = activeColor;
    data['inactiveColor'] = inactiveColor;
    return data;
  }
}

class IndicatorSize {
  int? width;
  int? height;

  IndicatorSize({this.width, this.height});

  IndicatorSize.fromJson(Map<String, dynamic> json) {
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

class Spacing {
  int? vertical;
  int? horizontal;

  Spacing({this.vertical, this.horizontal});

  Spacing.fromJson(Map<String, dynamic> json) {
    vertical = json['vertical'];
    horizontal = json['horizontal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vertical'] = vertical;
    data['horizontal'] = horizontal;
    return data;
  }
}

class Images {
  String? url;
  String? fit;

  Images({this.url, this.fit});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    fit = json['fit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['fit'] = fit;
    return data;
  }
}
