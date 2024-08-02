import 'package:audi_books/app_colors.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AudiBooksScreen extends StatelessWidget {
  static const String routeName ="home";
  List<String>recommended =[
    'assets/images/book1.png',
    'assets/images/book2.png',
  ];
  List<String>bestSeller =[
    'assets/images/best_seller1.png',
    'assets/images/best_seller2.png',
  ];

   AudiBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        toolbarHeight: 95,
        title: Padding(
          padding: const EdgeInsets.only(top: 60,left: 15),
          child: Image.asset("assets/images/app_name.png"),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(top: 50,right: 10),
          child: IconButton(onPressed: () {},
              icon: Icon(Icons.settings_outlined,
                color: AppColors.Primary,)),
        )],
      ),

      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [SizedBox(width: 30,),
                    Text("Categories",style:
                    GoogleFonts.poppins(fontSize: 16,
                        fontWeight: FontWeight.w500)),
                    Spacer(),
                    Text("see more",style: GoogleFonts.poppins(fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color:AppColors.Primary)),
                    SizedBox(width: 27,)],
                ),
              ),
              SizedBox(height: 20,width: 50,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    SizedBox(width: 7,)
                    , DefaultTabController(
                    length: 4,
                    child: Column(
                      children: [
                        ButtonsTabBar(
                          contentPadding: EdgeInsets.only
                            (top: 8,bottom: 8,right: 22,left: 22),
                            buttonMargin: EdgeInsets.only(left: 15,right: 15),
                            radius: 12,
                            unselectedBackgroundColor: Color(0xFFF5F5FA),
                            backgroundColor: Color(0xFFF5F5FA),
                            borderWidth: 0,
                            borderColor: Color(0xFFF5F5FA),
                            labelStyle: TextStyle(
                              color: Color(0xff2E2E5D),
                              fontWeight: FontWeight.w400,
                              fontSize: 17
                            ),
                            unselectedLabelStyle: TextStyle(
                              color: Color(0xff2E2E5D),
                              fontWeight: FontWeight.w400,
                              fontSize: 17
                            ),
                            // Add your tabs here
                            tabs:[
                              Tab(text: "Art"),
                              Tab(text: "Business"),
                              Tab(text: "Comedy"),
                              Tab(text: "Drama"),
                            ]
                        ),
                      ],
                    ),
                  )
                  ],
                ),
              ),
              SizedBox(height: 42,),
              Row(
                children: [
                  SizedBox(width: 30,),
                Text("Recommended For You",style:
              GoogleFonts.poppins(fontSize: 16,
              fontWeight: FontWeight.w500)),
                  Spacer(),
                  Text("see more",style:
                  GoogleFonts.poppins(fontSize: 16,
                      fontWeight: FontWeight.w500,color: AppColors.Primary)),
                  SizedBox(width: 27,)
              ],),
              SizedBox(height: 22,),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: CarouselSlider(items: recommended.map((item)=>
                    Container(child: Center(child:
                    Image.asset(item,fit: BoxFit.fill,
                      width: 200,),))).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      height: 300,
                        disableCenter: false,
                      //enlargeCenterPage: true,
                      padEnds: false,
                      viewportFraction: .569,

                    )),
              ),
              SizedBox(height: 30,),
              Row(children: [
                SizedBox(width: 30,),
                Text("Best seller",style:
              GoogleFonts.poppins(fontSize: 16,
                  fontWeight: FontWeight.w500)),
                Spacer(),
                Text("see more",style: GoogleFonts.poppins(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color:AppColors.Primary)),
                SizedBox(width: 27,)],),
              SizedBox(height: 22,),
              CarouselSlider(items: bestSeller.map((item)=>
                  Container(child: Center(child:
                  Image.asset(item,fit: BoxFit.fill,
                    width: 315,),))).toList(),
                  options: CarouselOptions(
                    autoPlay: false,
                    height: 144,
                    disableCenter: false,
                    //enlargeCenterPage: true,
                    padEnds: false,
                    viewportFraction: .855,

                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/Home.png")),label: "Home",),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/Search.png")),label: "Search"),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/Document.png")),label: "Document"),
        ],
      ),
        );
  }


}
