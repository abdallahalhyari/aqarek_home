import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:aqarek_home/module/home_page/bloc/home_page_bloc.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/header_gallery.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/header_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/last_seen_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/latest_projects_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/offers_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/units_items_widget.dart';
import 'package:aqarek_home/utils/constant/path_icons.dart';
import 'package:aqarek_home/utils/constant/path_svg.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _pageController = PageController(initialPage: 4);
  final _controller = NotchBottomBarController(index: 4);
  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomBarPages = [
    Container(),
    Container(),
    Container(),
    Container(),
    const Page1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            controller: PageController(initialPage: 4),
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                bottomBarPages.length, (index) => bottomBarPages[index])),
        extendBody: true,
        bottomNavigationBar: (bottomBarPages.length <= maxCount)
            ? Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          color: const Color.fromRGBO(20, 76, 237, 1.0),
                          width: MediaQuery.sizeOf(context).width,
                          height: 45)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AnimatedNotchBottomBar(
                        itemLabelStyle:
                            const TextStyle(color: Colors.white, fontSize: 12),
                        showShadow: false,
                        notchBottomBarController:
                            NotchBottomBarController(index: 4),
                        color: const Color.fromRGBO(20, 76, 237, 1.0),
                        showLabel: true,
                        notchColor: Colors.transparent,
                        removeMargins: true,
                        bottomBarWidth: MediaQuery.sizeOf(context).width,
                        durationInMilliSeconds: 300,
                        bottomBarItems: [
                          BottomBarItem(
                              inActiveItem: PathSvg.category,
                              activeItem: PathSvg.category,
                              itemLabel: 'أخرى'),
                          BottomBarItem(
                              inActiveItem: SvgPicture.asset(PathIcons.orders,
                                  fit: BoxFit.cover,
                                  // ignore: deprecated_member_use
                                  color: Colors.grey),
                              activeItem: SvgPicture.asset(
                                PathIcons.orders,
                                fit: BoxFit.cover,
                                // ignore: deprecated_member_use
                                color: const Color.fromRGBO(20, 76, 237, 1.0),
                              ),
                              itemLabel: 'طلباتي'),
                          BottomBarItem(
                              inActiveItem: SvgPicture.asset(PathIcons.map,
                                  fit: BoxFit.cover,
                                  // ignore: deprecated_member_use
                                  color: Colors.grey),
                              activeItem: SvgPicture.asset(
                                PathIcons.map,
                                fit: BoxFit.cover,
                                // ignore: deprecated_member_use
                                color: const Color.fromRGBO(20, 76, 237, 1.0),
                              ),
                              itemLabel: 'خريطة عقارك'),
                          BottomBarItem(
                              inActiveItem: PathSvg.search,
                              activeItem: PathSvg.search,
                              itemLabel: 'بحث'),
                          BottomBarItem(
                              inActiveItem: SvgPicture.asset(
                                PathIcons.others,
                                fit: BoxFit.cover,
                                //color: Colors.grey,
                              ),
                              // Icon(Icons.person, color: Colors.blueGrey),
                              activeItem: SvgPicture.asset(
                                PathIcons.others,
                                fit: BoxFit.cover,
                                //color: const Color.fromRGBO(20, 76, 237, 1.0),
                              ),
                              //Icon(Icons.person, color: Colors.yellow),
                              itemLabel: 'الرئيسية')
                        ],
                        onTap: (index) {
                          // log('current selected index $index');
                          _pageController.jumpToPage(index);
                        },
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width,
                        color: const Color.fromRGBO(20, 76, 237, 1.0),
                        height: 20,
                        child: const Row(children: [
                          Spacer(),
                          TextViewCustom(
                              size: 14, text: 'الرئيسية', color: Colors.white),
                          SizedBox(
                            width: 35,
                          ),
                        ]),
                      )
                    ],
                  ),
                ],
              )
            : null);
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late HomePageBloc homePageBloc;

  @override
  Widget build(BuildContext context) {
    homePageBloc = context.read<HomePageBloc>()..add(LoadHomePageEvent());

    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return state is LoadedHomePageState
            ? Scaffold(
                body: SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: Column(children: [
                      HeaderGalleryWidget(
                          headerGallery:
                              homePageBloc.homePageModel!.headerGallery!),
                      const SizedBox(height: 15),
                      Expanded(
                          child: ListView(
                              physics: const BouncingScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 2),
                              children: [
                            HeaderWidgetsWidget(
                                headerWidgets:
                                    homePageBloc.homePageModel!.headerWidgets!),
                            const SizedBox(height: 15),
                            OffersWidget(
                                headerOffers:
                                    homePageBloc.homePageModel!.headerOffers!),
                            const SizedBox(height: 20),
                            LatestprojectWidget(
                                latestProjectsItems: homePageBloc
                                    .homePageModel!.latestProjects!.items!),
                            UnitsItemsWidget(
                                item:
                                    homePageBloc.homePageModel!.units!.items!),
                            const LastSeenWidget(),
                          ]))
                    ])))
            : const Center(child: CircularProgressIndicator());
      },
    );
  }
}
