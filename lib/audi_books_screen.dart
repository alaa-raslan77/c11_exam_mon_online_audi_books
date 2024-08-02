import 'package:audi_books/app_colors.dart';
import 'package:audi_books/slider.dart';
import 'package:audi_books/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child:
                Row(
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

              TabBarr(),

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

              SliderCard(item_card: recommended, width: 200, height: 300, fraction: .569),

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

              SliderCard(item_card: bestSeller, width: 315, height: 144, fraction: .855)
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
