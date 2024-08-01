import 'package:audi_books/tab_bar.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudiBooksScreen extends StatelessWidget {
  static const String routeName ="home";
  const AudiBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Column(
        children: [

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,left: 25),
                child: Image.asset("assets/images/app_name.png",
                  width: 165,
                  height: 40,),),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 41),
                child: IconButton(onPressed: () {},
                    icon: Icon(Icons.settings_outlined,
                      color: Color(0xff4838D1),)),),
              SizedBox(width: 15,)
            ],),
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 40,),
              Text("Categories",style:
              GoogleFonts.poppins(fontSize: 16,
                  fontWeight: FontWeight.w500)),
              Spacer(),
              Text("see more",style: GoogleFonts.poppins(fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4838D1))),
              SizedBox(width: 27,)
            ],),


        ],),

    );
  }

}
