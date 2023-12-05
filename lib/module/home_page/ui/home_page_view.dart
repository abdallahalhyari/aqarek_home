import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:aqarek_home/module/home_page/bloc/home_page_bloc.dart';
import 'package:aqarek_home/widget/text/custom_text_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePageView extends StatelessWidget {

 late HomePageBloc homePageBloc;
 final _pageController = PageController(initialPage: 0);

 /// Controller to handle bottom nav bar and also handles initial page
 final _controller = NotchBottomBarController(index: 0);
  @override
  Widget build(BuildContext context) {
    homePageBloc=context.read<HomePageBloc>()..add(LoadHomePageEvent());
    return BlocBuilder<HomePageBloc, HomePageState>(

    builder: (context, state) {
      return state is LoadedHomePageState? Scaffold(
        backgroundColor: Colors.white,
          bottomNavigationBar: AnimatedNotchBottomBar(
              onTap: (index){},
              notchBottomBarController: _controller,
              bottomBarItems: [
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 1',
                ),
                const BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.star,
                    color: Colors.blueAccent,
                  ),
                  itemLabel: 'Page 2',
                ),

                ///svg item
                BottomBarItem(
                  inActiveItem: SvgPicture.asset(
                    'assets/search_icon.svg',
                    color: Colors.blueGrey,
                  ),
                  activeItem: SvgPicture.asset(
                    'assets/search_icon.svg',
                    color: Colors.black,
                  ),
                  itemLabel: 'Page 3',)]
          ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height/2.4,
              color:const Color.fromRGBO(20, 76, 237, 1.0),
              padding:const EdgeInsets.only(bottom: 20),
              child: CarouselSlider(
                items:homePageBloc.homePageModel!.headerGallery!.map((e) => SizedBox(width: MediaQuery.sizeOf(context).width,child: Image.network(e.image??'',fit: BoxFit.fill,))).toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  height: double.infinity,
                  enlargeCenterPage: true,
                   viewportFraction: 1,
                   aspectRatio:1,
                  // initialPage: 2,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
                child: ListView(
                  physics:const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 2),
                  children: [
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: homePageBloc.homePageModel!.headerWidgets!.length,
                        itemBuilder:(context,index)=> Row(
                          children: [
                            Column(
                              children: [
                                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 70,width: 70, child: SvgPicture.network(homePageBloc.homePageModel!.headerWidgets![index].imageurl??'')),
                                TextViewCustom(text: homePageBloc.homePageModel!.headerWidgets![index].title.toString(),)
                              ],
                            ),
                            Column(
                              children: [
                                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 70,width: 70, child: SvgPicture.network(homePageBloc.homePageModel!.headerWidgets![index].imageurl??'')),
                                TextViewCustom(text: homePageBloc.homePageModel!.headerWidgets![index].title.toString(),)
                              ],
                            ),
                          ],
                        )
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 160,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      child: CarouselSlider(
                        items: homePageBloc.homePageModel!.headerOffers!.map((e) =>Container(decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: NetworkImage(e.image??''),fit: BoxFit.fill)),width: MediaQuery.sizeOf(context).width)).toList(),
                        options: CarouselOptions(
                          height: double.infinity,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          viewportFraction: 1,
                          aspectRatio: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: TextViewCustom(text: 'أحدث مشاريع عقارك',size: 16,fontWeight: FontWeight.bold,color:Color.fromRGBO(20, 76, 237, 1.0) ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              physics:const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                                itemCount: homePageBloc.homePageModel!.latestProjects!.items!.length,
                                itemBuilder: (context,index)=> Container(decoration: BoxDecoration(color:const Color.fromRGBO(20, 76, 237, 1.0),borderRadius: BorderRadius.circular(15),image: DecorationImage(image:NetworkImage(homePageBloc.homePageModel!.latestProjects!.items![index].image??''),fit: BoxFit.fill )),margin: const EdgeInsets.all(15),height: 190,width: 130,
                                // child: Image.network(homePageBloc.homePageModel!.latestProjects!.items![index].image??'',fit: BoxFit.fill),
                                ),

                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: TextViewCustom(text: 'وحدات عقارية مقترحة',size: 16,fontWeight: FontWeight.bold,color:Color.fromRGBO(20, 76, 237, 1.0) ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              physics:const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: homePageBloc.homePageModel!.units!.items!.length,
                              itemBuilder: (context,index)=>Container(decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(homePageBloc.homePageModel!.units!.items![index].photourl??''),fit: BoxFit.fill),color:const Color.fromRGBO(20, 76, 237, 1.0),borderRadius: BorderRadius.circular(15)),margin: const EdgeInsets.all(15),height: 190,width: MediaQuery.sizeOf(context).width/1.3 ,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView(
                        physics:const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(decoration: BoxDecoration(color:const Color.fromRGBO(20, 76, 237, 1.0),borderRadius: BorderRadius.circular(15)),margin: const EdgeInsets.all(15),height: 100,width: 70 ,),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 100,width: 70),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 100,width: 70),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 100,width: 70),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 100,width: 70),
                          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Color.fromRGBO(20, 76, 237, 1.0)),margin: const EdgeInsets.all(15),height: 100,width: 70)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ):CircularProgressIndicator();
    },
    );
  }
}
