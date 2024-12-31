import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAF7F7),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: AppBar(homeController: homeController),
            ),
            Carousel(homeController: homeController),
            Categories(homeController: homeController),
            ConditionCard(
              homeController: homeController,
            ),
            Offers(homeController: homeController),
            DealsCard(homeController: homeController)
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  final HomeController homeController;

  const AppBar({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Card(
        color: Color(
          int.parse(
            "0Xff${homeController.appBarModel.value.cardProperties?.cardColor ?? "000000"}",
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            homeController.appBarModel.value.cardProperties?.borderRadius ??
                100,
          ),
        ),
        elevation: homeController.appBarModel.value.cardProperties?.elevation
                ?.toDouble() ??
            4.0,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: homeController
                    .appBarModel.value.cardProperties?.paddingHorizontal
                    ?.toDouble() ??
                12,
            vertical: homeController
                    .appBarModel.value.cardProperties?.paddingVertical
                    ?.toDouble() ??
                6,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(
                      int.parse(
                        "0Xff${homeController.appBarModel.value.appBarIconProperties?[0].iconColor ?? "000000"}",
                      ),
                    ),
                    size: homeController
                            .appBarModel.value.appBarIconProperties?[0].iconSize
                            ?.toDouble() ??
                        35,
                    shadows: [
                      BoxShadow(
                        color: Color(
                          int.parse(
                            "0Xff${homeController.appBarModel.value.appBarIconProperties?[0].shadowColor ?? '000000'}",
                          ),
                        ),
                        blurRadius: homeController.appBarModel.value
                                .appBarIconProperties?[0].blurRadius
                                ?.toDouble() ??
                            10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: homeController.appBarModel.value.spacingProperties
                            ?.betweenIconAndText
                            ?.toDouble() ??
                        6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        homeController
                                .appBarModel.value.textProperties?[0].text ??
                            'Delivery to',
                        style: TextStyle(
                          color: Color(
                            int.parse(
                              "0Xff${homeController.appBarModel.value.textProperties?[0].color ?? '000000'}",
                            ),
                          ),
                          fontSize: homeController
                                  .appBarModel.value.textProperties?[0].fontSize
                                  ?.toDouble() ??
                              14,
                        ),
                      ),
                      Text(
                        homeController
                                .appBarModel.value.textProperties?[1].text ??
                            '201301',
                        style: TextStyle(
                          color: Color(
                            int.parse(
                              "0Xff${homeController.appBarModel.value.textProperties?[1].color ?? '000000'}",
                            ),
                          ),
                          fontSize: homeController
                                  .appBarModel.value.textProperties?[1].fontSize
                                  ?.toDouble() ??
                              14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: homeController
                            .appBarModel.value.appBarIconProperties?[1].iconSize
                            ?.toDouble() ??
                        30,
                    color: Color(
                      int.parse(
                        "0Xff${homeController.appBarModel.value.appBarIconProperties?[1].iconColor ?? "000000"}",
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(
                          int.parse(
                            "0Xff${homeController.appBarModel.value.appBarIconProperties?[1].shadowColor ?? '000000'}",
                          ),
                        ),
                        blurRadius: homeController.appBarModel.value
                                .appBarIconProperties?[1].blurRadius
                                ?.toDouble() ??
                            10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: homeController
                            .appBarModel.value.spacingProperties?.betweenIcons
                            ?.toDouble() ??
                        8,
                  ),
                  Icon(
                    color: Color(
                      int.parse(
                        "0Xff${homeController.appBarModel.value.appBarIconProperties?[2].iconColor ?? "000000"}",
                      ),
                    ),
                    Icons.favorite_border,
                    size: homeController
                            .appBarModel.value.appBarIconProperties?[2].iconSize
                            ?.toDouble() ??
                        30,
                    shadows: [
                      BoxShadow(
                        color: Color(
                          int.parse(
                            "0Xff${homeController.appBarModel.value.appBarIconProperties?[2].shadowColor ?? '000000'}",
                          ),
                        ),
                        blurRadius: homeController.appBarModel.value
                                .appBarIconProperties?[2].blurRadius
                                ?.toDouble() ??
                            10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: homeController
                            .appBarModel.value.spacingProperties?.betweenIcons
                            ?.toDouble() ??
                        8,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: homeController
                            .appBarModel.value.appBarIconProperties?[3].iconSize
                            ?.toDouble() ??
                        30,
                    color: Color(
                      int.parse(
                        "0Xff${homeController.appBarModel.value.appBarIconProperties?[3].iconColor ?? "000000"}",
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(
                          int.parse(
                            "0Xff${homeController.appBarModel.value.appBarIconProperties?[3].shadowColor ?? '000000'}",
                          ),
                        ),
                        blurRadius: homeController.appBarModel.value
                                .appBarIconProperties?[3].blurRadius
                                ?.toDouble() ??
                            10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final HomeController homeController;
  const Carousel({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: EdgeInsets.only(
            right: homeController
                    .carouselModel.value.uiProperties?.carousel?.padding?.right
                    ?.toDouble() ??
                0,
            left: homeController
                    .carouselModel.value.uiProperties?.carousel?.padding?.left
                    ?.toDouble() ??
                0),
        child: SizedBox(
          height: homeController
                  .carouselModel.value.uiProperties?.carousel?.height
                  ?.toDouble() ??
              0,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  homeController.carouselModel.value.uiProperties?.carousel
                          ?.borderRadius
                          ?.toDouble() ??
                      10,
                ),
                child: CarouselSlider(

                  items: homeController.carouselModel.value.uiProperties?.images
                      ?.map((image) {
                    return Image.network(
                      image.url ?? '',
                      fit: image.fit == 'cover' ? BoxFit.cover : BoxFit.contain,
                      width: double.infinity,
                    );
                  }).toList(),
                  options: CarouselOptions(
                    scrollPhysics: _getScrollPhysics(
                      homeController.carouselModel.value.uiProperties?.carousel
                              ?.scrollPhysics ??
                          'BouncingScrollPhysics',
                    ),
                    autoPlay: homeController.carouselModel.value.uiProperties
                            ?.carousel?.autoPlay ??
                        true,
                    aspectRatio: homeController.carouselModel.value.uiProperties
                            ?.carousel?.aspectRatio
                            ?.toDouble() ??
                        2,
                    viewportFraction: homeController.carouselModel.value
                            .uiProperties?.carousel?.viewportFraction
                            ?.toDouble() ??
                        1,
                    onPageChanged: (index, reason) {
                      homeController.currentIndex.value = index;
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  homeController
                          .carouselModel.value.uiProperties?.images?.length ??
                      0,
                  (index) {
                    return Container(
                      width: homeController.carouselModel.value.uiProperties
                              ?.imageIndicators?.indicatorSize?.width
                              ?.toDouble() ??
                          15,
                      height: homeController.carouselModel.value.uiProperties
                              ?.imageIndicators?.indicatorSize?.height
                              ?.toDouble() ??
                          15,
                      margin: EdgeInsets.symmetric(
                        vertical: homeController
                                .carouselModel
                                .value
                                .uiProperties
                                ?.imageIndicators
                                ?.spacing
                                ?.vertical
                                ?.toDouble() ??
                            10,
                        horizontal: homeController
                                .carouselModel
                                .value
                                .uiProperties
                                ?.imageIndicators
                                ?.spacing
                                ?.horizontal
                                ?.toDouble() ??
                            2,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: homeController.currentIndex.value == index
                            ? Color(int.parse(
                                '0xff${homeController.carouselModel.value.uiProperties?.imageIndicators?.activeColor ?? '000000'}',
                              ))
                            : Color(int.parse(
                                '0xff${homeController.carouselModel.value.uiProperties?.imageIndicators?.inactiveColor ?? '808080'}',
                              )),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ScrollPhysics _getScrollPhysics(String scrollPhysics) {
    switch (scrollPhysics) {
      case 'ClampingScrollPhysics':
        return const ClampingScrollPhysics();
      case 'NeverScrollableScrollPhysics':
        return const NeverScrollableScrollPhysics();
      default:
        return const BouncingScrollPhysics();
    }
  }
}

class Categories extends StatelessWidget {
  final HomeController homeController;

  const Categories({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          // Title Section
          Text(
            homeController.categoryModel.value.title?.text ?? '',
            style: TextStyle(
              fontSize: homeController
                      .categoryModel.value.title?.style?.fontSize
                      ?.toDouble() ??
                  30,
              fontWeight: _getFontWeight(
                  homeController.categoryModel.value.title?.style?.fontWeight),
              fontStyle: _getFontStyle(
                  homeController.categoryModel.value.title?.style?.fontStyle),
              color: Color(int.parse(
                '0xff${homeController.categoryModel.value.title?.style?.color ?? '000000'}',
              )),
            ),
          ),
          const SizedBox(height: 30),

          // Category Items
          Wrap(
            alignment: _getWrapAlignment(
                homeController.categoryModel.value.layout?.wrapAlignment),
            spacing: homeController.categoryModel.value.layout?.spacing
                    ?.toDouble() ??
                10.0,
            runSpacing: homeController.categoryModel.value.layout?.runSpacing
                    ?.toDouble() ??
                20.0,
            children: List.generate(
                homeController.categoryModel.value.categoryItems?.length ?? 0,
                (index) {
              var categoryItem =
                  homeController.categoryModel.value.categoryItems![index];

              return Padding(
                padding: EdgeInsets.only(
                  top: categoryItem.padding?.top?.toDouble() ?? 0.0,
                  bottom: categoryItem.padding?.bottom?.toDouble() ?? 0.0,
                  left: categoryItem.padding?.left?.toDouble() ?? 0.0,
                  right: categoryItem.padding?.right?.toDouble() ?? 0.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Category Image
                    Image.asset(
                      categoryItem.image ?? '',
                      height: categoryItem.size?.height?.toDouble() ?? 50.0,
                      width: categoryItem.size?.width?.toDouble() ?? 100.0,
                    ),
                    const SizedBox(height: 20),

                    // Category Name
                    Text(
                      categoryItem.name ?? '',
                      style: TextStyle(
                        fontSize:
                            categoryItem.textStyle?.fontSize?.toDouble() ??
                                15.0,
                        fontWeight:
                            _getFontWeight(categoryItem.textStyle?.fontWeight),
                        fontStyle:
                            _getFontStyle(categoryItem.textStyle?.fontStyle),
                        color: Color(int.parse(
                          '0xff${categoryItem.textStyle!.color! ?? '000000'}',
                        )),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      );
    });
  }

  // Helper methods for fontWeight and fontStyle conversion
  FontWeight _getFontWeight(String? weight) {
    switch (weight) {
      case 'bold':
        return FontWeight.bold;
      case 'normal':
        return FontWeight.normal;
      default:
        return FontWeight.normal;
    }
  }

  FontStyle _getFontStyle(String? style) {
    switch (style) {
      case 'italic':
        return FontStyle.italic;
      case 'normal':
        return FontStyle.normal;
      default:
        return FontStyle.normal;
    }
  }

  WrapAlignment _getWrapAlignment(String? alignment) {
    switch (alignment) {
      case 'center':
        return WrapAlignment.center;
      case 'start':
        return WrapAlignment.start;
      case 'end':
        return WrapAlignment.end;
      default:
        return WrapAlignment.center;
    }
  }
}

class ConditionCard extends StatelessWidget {
  final HomeController homeController;

  const ConditionCard({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: homeController.conditionModel.value.padding?.horizontal
                  ?.toDouble() ??
              0,
          vertical: homeController.conditionModel.value.padding?.vertical
                  ?.toDouble() ??
              0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: homeController.conditionModel.value.conditionCards
                    ?.map((card) {
                  return Card(
                    color: Color(int.parse(
                        card.backgroundColor!.replaceFirst('#', '0xff'))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            _getIconByName(card.icon?.name),
                            size: card.icon?.size?.toDouble() ?? 24.0,
                            color: Color(int.parse(
                                card.icon?.color?.replaceFirst('#', '0xff') ??
                                    '0xff000000')),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            card.title?.text ?? '',
                            style: TextStyle(
                              fontSize:
                                  card.title?.style?.fontSize?.toDouble() ?? 14.0,
                              color: Color(int.parse(card.title?.style?.color
                                      ?.replaceFirst('#', '0xff') ??
                                  '0xff000000')),
                              fontWeight: _parseFontWeight(
                                  card.title?.style?.fontWeight ?? 'normal'),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                card.subtitle?.text ?? '',
                                style: TextStyle(
                                  fontSize: card.subtitle?.style?.fontSize
                                          ?.toDouble() ??
                                      14.0,
                                  color: Color(int.parse(card
                                          .subtitle?.style?.color
                                          ?.replaceFirst('#', '0xff') ??
                                      '0xff000000')),
                                  fontWeight: _parseFontWeight(
                                      card.subtitle?.style?.fontWeight ??
                                          'normal'),
                                ),
                              ),
                              Icon(
                                _getIconByName(card.arrowIcon?.name),
                                size: card.arrowIcon?.size?.toDouble() ?? 24.0,
                                color: Color(int.parse(card.arrowIcon?.color
                                        ?.replaceFirst('#', '0xff') ??
                                    '0xff000000')),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      );
    });
  }

  FontWeight _parseFontWeight(String fontWeight) {
    switch (fontWeight.toLowerCase()) {
      case 'bold':
        return FontWeight.bold;
      case '500':
        return FontWeight.w500;
      case '400':
        return FontWeight.w400;
      default:
        return FontWeight.normal;
    }
  }

  IconData _getIconByName(String? name) {
    switch (name) {
      case 'shopping_bag_outlined':
        return Icons.shopping_bag_outlined;
      case 'recycling':
        return Icons.recycling;
      case 'arrow_right_alt_outlined':
        return Icons.arrow_right_alt_outlined;
      default:
        return Icons.help_outline; // Default icon if the name doesn't match
    }
  }
}

class Offers extends StatelessWidget {
  final HomeController homeController;

  const Offers({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
      child: Column(
        children: [
          // Header Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Text(
                  homeController
                          .offersModel.value.offersSection?.header?.title ??
                      "Offers & Discounts",
                  style: TextStyle(
                    fontSize: homeController.offersModel.value.offersSection
                            ?.header?.titleStyle?.fontSize
                            ?.toDouble() ??
                        20,
                    fontWeight: FontWeight.w600,
                    color: Color(int.parse(
                        '0xff${homeController.offersModel.value.offersSection?.header?.titleStyle?.color ?? "7002783"}')),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    homeController.offersModel.value.offersSection?.header
                            ?.seeAll?.text ??
                        "See All",
                    style: TextStyle(
                      fontSize: homeController.offersModel.value.offersSection
                              ?.header?.seeAll?.textStyle?.fontSize
                              ?.toDouble() ??
                          14,
                      fontWeight: FontWeight.w600,
                      color: Color(int.parse(
                          '0xff${homeController.offersModel.value.offersSection?.header?.seeAll?.textStyle?.color ?? "7002783"}')),
                    ),
                  ),
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Color(int.parse(
                        '0xff${homeController.offersModel.value.offersSection?.header?.seeAll?.icon?.color ?? "6786189"}')),
                    size: homeController.offersModel.value.offersSection?.header
                            ?.seeAll?.icon?.size
                            ?.toDouble() ??
                        20,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25),

          // Offers List Section
          SizedBox(
            height: homeController
                    .offersModel.value.offersSection?.offersList?.sizedBoxSize
                    ?.toDouble() ??
                120,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 20),
              shrinkWrap: true,
              scrollDirection: homeController.offersModel.value.offersSection
                          ?.offersList?.scrollDirection ==
                      'horizontal'
                  ? Axis.horizontal
                  : Axis.vertical,
              itemBuilder: (context, index) {
                final item = homeController
                    .offersModel.value.offersSection?.offersList?.items?[index];
                return Container(
                  color: Color(int.parse(
                      '0xff${item?.containerStyle?.backgroundColor ?? "f5e79a"}')),
                  padding: EdgeInsets.all(
                      item?.containerStyle?.padding?.toDouble() ?? 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        item?.image ?? "assets/images/citi.png",
                        height: item?.imageSize?.height?.toDouble() ?? 30,
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item?.offerDetails?.title ?? "Extra 10% off on SBI",
                            style: TextStyle(
                              fontSize: item?.offerDetails?.titleStyle?.fontSize
                                      ?.toDouble() ??
                                  16,
                              fontWeight: FontWeight.w600,
                              color: Color(int.parse(
                                  '0xff${item?.offerDetails?.titleStyle?.color ?? "7002783"}')),
                            ),
                          ),
                          Text(
                            item?.offerDetails?.description ??
                                "Applicable on SBI Credit Cards",
                            style: TextStyle(
                              fontSize: item
                                      ?.offerDetails?.descriptionStyle?.fontSize
                                      ?.toDouble() ??
                                  14,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                              color: Color(int.parse(
                                  '0xff${item?.offerDetails?.descriptionStyle?.color ?? "7002783"}')),
                            ),
                          ),
                          Text(
                            item?.offerDetails?.note ?? "No Code Required",
                            style: TextStyle(
                              fontSize: item?.offerDetails?.noteStyle?.fontSize
                                      ?.toDouble() ??
                                  14,
                              fontWeight: FontWeight.w600,
                              color: Color(int.parse(
                                  '0xff${item?.offerDetails?.noteStyle?.color ?? "7002783"}')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: homeController
                      .offersModel.value.offersSection?.offersList?.listSize ??
                  3,
            ),
          ),
        ],
      ),
    );
  }
}

class DealsCard extends StatelessWidget {
  final HomeController homeController;

  const DealsCard({super.key, required this.homeController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeController.dealsModel.value.header?.title ??
                        "Deals of the Day",
                    style: TextStyle(
                      fontSize: homeController
                              .dealsModel.value.header?.textStyle?.fontSize
                              ?.toDouble() ??
                          20.0,
                      fontWeight: FontWeight.w600,
                      color: Color(int.parse(
                          "0xff${homeController.dealsModel.value.header?.textStyle?.color ?? '7002783'}")),
                    ),
                  ),
                  Text(
                    homeController.dealsModel.value.header?.subtitle ??
                        "To buy",
                    style: TextStyle(
                      fontSize: homeController
                              .dealsModel.value.header?.subtitleStyle?.fontSize
                              ?.toDouble() ??
                          14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(int.parse(
                          "0xff${homeController.dealsModel.value.header?.subtitleStyle?.color ?? '7002783'}")),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    homeController.dealsModel.value.header?.viewAllText ??
                        "View All",
                    style: TextStyle(
                      fontSize: homeController
                              .dealsModel.value.header?.viewAllStyle?.fontSize
                              ?.toDouble() ??
                          14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(int.parse(
                          "0xff${homeController.dealsModel.value.header?.viewAllStyle?.color ?? '7002783'}")),
                    ),
                  ),
                  Icon(Icons.arrow_right_alt),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height:
              homeController.dealsModel.value.listView?.height?.toDouble() ??
                  250.0,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: homeController.dealsModel.value.listView?.separatorWidth
                        ?.toDouble() ??
                    20.0,
              );
            },
            shrinkWrap:
                homeController.dealsModel.value.listView?.shrinkWrap ?? true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final item = homeController.dealsModel.value.items?[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    item?.image ?? "assets/images/sofa5.jpeg",
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                  Text(
                    item?.name ?? "Item Name",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: item?.textStyle?.fontSize?.toDouble() ?? 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(int.parse(
                          "0xff${item?.textStyle?.color ?? '7002783'}")),
                    ),
                  ),
                  Card(
                    elevation: item?.cardShape?.elevation?.toDouble() ?? 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          item?.cardShape?.borderRadius?.toDouble() ?? 5.0),
                    ),
                    color: Color(int.parse(
                        "0xff${item?.discountBackgroundColor ?? 'F7DC6F'}")),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            item?.cardPadding?.horizontal?.toDouble() ?? 26.0,
                        vertical:
                            item?.cardPadding?.vertical?.toDouble() ?? 15.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item?.discount ?? "-72% off",
                            style: TextStyle(
                              fontSize:
                                  item?.discountStyle?.fontSize?.toDouble() ??
                                      20.0,
                              fontWeight: FontWeight.w600,
                              color: Color(int.parse(
                                  "0xff${item?.discountStyle?.color ?? '7002783'}")),
                            ),
                          ),
                          Text(
                            item?.price ?? "₹1,99,999",
                            style: TextStyle(
                              fontSize:
                                  item?.priceStyle?.fontSize?.toDouble() ??
                                      16.0,
                              fontWeight: FontWeight.w600,
                              color: Color(int.parse(
                                  "0xff${item?.priceStyle?.color ?? '7002783'}")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: homeController.dealsModel.value.items?.length ?? 0,
          ),
        ),
      ],
    );
  }
}
