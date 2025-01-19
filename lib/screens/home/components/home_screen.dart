import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/screens/home/components/bottom_nav_bar.dart';


class Homescreen extends StatelessWidget{

@override
Widget build(BuildContext context)
{
  return Scaffold(

      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar()


  );
}


AppBar buildAppBar(){
  return AppBar(
    elevation: 0,
    leading: IconButton(onPressed: (){},
    icon: SvgPicture.asset("assets/icons/menu.svg"),    
    ),
  );
}




}
