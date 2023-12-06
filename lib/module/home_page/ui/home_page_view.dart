import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:aqarek_home/module/home_page/bloc/home_page_bloc.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/header_gallery.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/header_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/last_seen_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/latest_projects_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/offers_widget.dart';
import 'package:aqarek_home/module/home_page/ui/widgets/units_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
                bottomBarPages.length, (index) => bottomBarPages[index])),
        extendBody: true,
        bottomNavigationBar: (bottomBarPages.length <= maxCount)
            ? Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: const Color.fromRGBO(20, 76, 237, 1.0),
                        width: MediaQuery.sizeOf(context).width,
                        height: 25,
                      )),
                  AnimatedNotchBottomBar(
                    showShadow: false,
                    notchBottomBarController: _controller,
                    color: const Color.fromRGBO(20, 76, 237, 1.0),
                    showLabel: true,
                    notchColor: Colors.black87,
                    removeMargins: true,
                    bottomBarWidth: MediaQuery.sizeOf(context).width,
                    durationInMilliSeconds: 300,
                    bottomBarItems: const [
                      BottomBarItem(
                          inActiveItem:
                              Icon(Icons.home_filled, color: Colors.blueGrey),
                          activeItem:
                              Icon(Icons.home_filled, color: Colors.blueAccent),
                          itemLabel: 'Page 1'),
                      BottomBarItem(
                          inActiveItem:
                              Icon(Icons.star, color: Colors.blueGrey),
                          activeItem:
                              Icon(Icons.star, color: Colors.blueAccent),
                          itemLabel: 'Page 2'),
                      BottomBarItem(
                          inActiveItem: Icon(Icons.home),
                          activeItem: Icon(Icons.search),
                          itemLabel: 'Page 3'),
                      BottomBarItem(
                          inActiveItem:
                              Icon(Icons.settings, color: Colors.blueGrey),
                          activeItem: Icon(Icons.settings, color: Colors.pink),
                          itemLabel: 'Page 4'),
                      BottomBarItem(
                          inActiveItem:
                              Icon(Icons.person, color: Colors.blueGrey),
                          activeItem: Icon(Icons.person, color: Colors.yellow),
                          itemLabel: 'Page 5')
                    ],
                    onTap: (index) {
                      // log('current selected index $index');
                      _pageController.jumpToPage(index);
                    },
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
