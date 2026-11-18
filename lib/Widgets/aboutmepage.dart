import 'package:baraa_gallery/Widgets/homepage.dart';
import 'package:baraa_gallery/Widgets/welcomepage.dart';
import 'package:flutter/material.dart';




class DescriptionWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Center(
  child:Padding(
    padding: EdgeInsets.all(15),
    child: Column(
    children: [
  Text(
  "My name is Baraa Hanoun, born on July 15, 2003, from the city of Nablus, Palestine.\n"
  "Since childhood, I’ve been passionate about drawing—it has grown with me, shaped me, and become a part of who I am.\n"
  "Over the years, I’ve developed my skills across various mediums, and today I specialize in:\n"
  "Watercolor, charcoal, acrylic, graphite (pencil), colored pencils, and pastel drawing.\n"
  "I have the ability to capture both portraits and landscapes, no matter how complex or detailed.\n"
  "My dream is to blend art with work, and for my drawings to serve as a source of inspiration to others.\n"
    "I don’t just draw with my hands—I draw with my heart. This is the principle I live by in every piece I create.",
    textAlign: TextAlign.start,
  style: TextStyle(
    fontSize: 18,
        color:Colors.black
  ),
),
    ],
)
  )
  
);
  }



}




    class AboutMePage extends StatelessWidget
    {
      @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.pink,
    title: Row(
      children: [
        SizedBox(width:40,),
Text("About Me",
  style: TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.bold
  ),
)
      ],
    )
    ),

  body: Center(
    child: Column(
    children: [
      SizedBox(height: 50,),
DescriptionWidget(),
  SizedBox(height: 30,),
  Flowbutton(DrawerWidget(), "Back To Menu", 20, 300, 70, Colors.pink, Colors.white,Image.asset('assets/back.png'))
    ],
    ),
  ),
);
  }
    }