import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Homescreen extends StatelessWidget{

@override
Widget build(BuildContext context)
{
  return Scaffold(

      appBar: buildAppBar(),


  );
}


AppBar buildAppBar(){



  return AppBar(

    elevation: 0,
    leading: IconButton(onPressed: (){},
    icon: SvgPicture.asset(""),    
    )
  );
}




}