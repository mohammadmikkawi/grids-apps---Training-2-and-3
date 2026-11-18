import 'package:baraa_gallery/Widgets/loginpage.dart';
import 'package:flutter/material.dart';



class TitleWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Text("Bara'a Gallery",
    style: TextStyle(
    fontSize: 50,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),

);
  }
}

class DescriptionWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Text("Crafted with feelings, drawn by Bara’a.",
style: TextStyle(
    fontWeight:FontWeight.bold,
        color: Colors.white
),
);
  }
  
  
}


class LogoWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Center(
  child: Image.asset('assets/image5.png',
      width: 200,
    height: 200,
  ),
);
  }
}

class Flowbutton extends StatelessWidget{
  final Widget keey;
  String titlee;
  double num6;
  double num7;
  double num8;
  Color color;
  Color color2;
  Image image;
  Flowbutton(this.keey,this.titlee,this.num6,this.num7,this.num8,this.color,this.color2,this.image);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:(){
        Navigator.push(context,//الحالي
            MaterialPageRoute(builder: (context) =>keey));
      },
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
            fixedSize: Size(num7, num8)

          ),
      child: Row(
          mainAxisSize: MainAxisSize.min, // عشان يحجز حجم المحتوى فقط
          children: [
          if (image != null) ...[
      image,
      SizedBox(width: 15), // مسافة بين الصورة والنص
      ],
      Text(
      titlee,
      style: TextStyle(
      fontSize: num6,
      color: color2,
      fontWeight: FontWeight.bold,
    )

              )
          ]
      )

    );


  }
}


class Signature extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Image.asset('assets/image7.png',
    opacity:  AlwaysStoppedAnimation(0.6),

)   ;
  }
}

class WelcomePage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
 return Scaffold(
  body: Center(
    child: Container(
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.pink, Colors.white]),
    ),
    child: Column(
      children: [
        SizedBox(height: 80,),
        TitleWidget(),
        SizedBox(height: 20,),
          DescriptionWidget(),
          SizedBox(height: 70,),
          LogoWidget(),
        SizedBox(height: 100,),
        Flowbutton(Login(), "Login", 20, 300,70,Colors.pink,Colors.white,Image.asset('assets/login.png')),
        SizedBox(height: 20,),
        Signature()
      ],
    ),
  ),
  )
 );

  }
  
  
  
}