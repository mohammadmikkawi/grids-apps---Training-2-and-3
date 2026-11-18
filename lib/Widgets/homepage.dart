import 'package:baraa_gallery/Widgets/aboutmepage.dart';
import 'package:baraa_gallery/Widgets/loginpage.dart';
import 'package:baraa_gallery/Widgets/welcomepage.dart';
import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
@override
  Widget build(BuildContext context) {
return AppBar(
  backgroundColor: Colors.pink,
  iconTheme:IconThemeData(color: Colors.white,
      weight: 330
  ),
  title: Row(
    children:
    [
      SizedBox(width: 50,),
      Text("Home Page",
          style:TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      ),
SizedBox(width:20 ,),
Image.asset('assets/search.png',width: 30,height: 30,),
      SizedBox(width:10 ,),
      Image.asset('assets/cart.png')
    ],
  ),
) ;
  }
@override
Size get preferredSize => Size.fromHeight(kToolbarHeight);
}





class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Drawer(
backgroundColor: Colors.white,
child: Column(
children: [
  SizedBox(height: 40,),
  Text("Menu",
style:TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Colors.pink
),
  ),
  SizedBox(height: 40,),
  Flowbutton(HomePage(),"Home Page", 25, 250, 40,Colors.pink,Colors.white,Image.asset('assets/home.png')),
  SizedBox(height: 15,),
  Flowbutton(WelcomePage(), "Favorites", 30, 250, 40,Colors.pink, Colors.white,Image.asset('assets/favorite.png')),
  SizedBox(height: 15,),
Flowbutton(WelcomePage(), "Shop", 30, 250, 40, Colors.pink, Colors.white, Image.asset('assets/cart.png')),
  SizedBox(height: 15,),
Flowbutton(WelcomePage(), "Manage",30 , 250, 40, Colors.pink, Colors.white,Image.asset('assets/manager.png')),
SizedBox(height: 15,),
  Flowbutton(AboutMePage(), "About Me", 27, 250, 40,Colors.pink,Colors.white,Image.asset('assets/about.png')),
  SizedBox(height: 270,),
Text("Content Us:baraahannon@gmail.com",
  style: TextStyle(
    fontSize: 15,
    color: Colors.pink
  ),
),
  SizedBox(height:10,),
Flowbutton(WelcomePage(), "Log Out", 30, 200, 20, Colors.red, Colors.white, Image.asset('assets/logout.png')),
  
],
  
),

);
  }
}




class BodyWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
crossAxisSpacing:5,
childAspectRatio:0.6,
padding: EdgeInsets.all(10),
children: [
Container(
  child:Column(
    children: [
      Image.asset('assets/draw1.jpeg'),
      SizedBox(height: 15,),
      Text('data')
    ],
  )
),

  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),

  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),

  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),

  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),

  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),
  Container(
      child:Column(
        children: [
          Image.asset('assets/image2.png'),
          SizedBox(height: 15,),
          Text('data')
        ],
      )
  ),

]
    
    );
  }
}


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body:BodyWidget() ,
    );
  }
}


class SearchWidget extends StatefulWidget{
  @override
  State<SearchWidget> createState() {
  return SearchWidgetState();
  }
}
class SearchWidgetState  extends State<SearchWidget>{
@override
  Widget build(BuildContext context) {
return Column(

) ;
  }


}