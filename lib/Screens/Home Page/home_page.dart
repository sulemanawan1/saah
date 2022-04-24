import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../App Theme/app_theme.dart';
import '../../Widgets/My Drawer/my_drawer.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    var appBarHeight = kToolbarHeight;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppTheme.White,

          iconTheme: IconThemeData(color: AppTheme.DarkPastelGreen),
          actions: [
            Icon(Icons.library_add,color: AppTheme.DarkPastelGreen,),
            SizedBox(width: 5,),
            Icon(Icons.notifications,color: AppTheme.DarkPastelGreen,),
            SizedBox(width: 5,),
            Icon(Icons.search,color: AppTheme.DarkPastelGreen,),
            SizedBox(width: 5,)



          ],
          leading: Transform.scale(
            scale: 0.6,
            child: GestureDetector(

              onTap: (){

                scaffoldKey.currentState?.openDrawer();


              },
              child: Icon(Icons.menu,color: AppTheme.DarkPastelGreen,size: 60,),
            ),
          ),
        ),

        drawer: Container(
            padding: EdgeInsets.only(top: statusBarHeight+ appBarHeight -20),
          child: Drawer(

              shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child:MyDrawer()),
        ),


        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
    child: Text("Hi ,Sara",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
Padding(padding: EdgeInsets.fromLTRB(10, 0, 80, 0),
    child: Text("Check out nearby products, recycling groups, event and more !",style: TextStyle(),)),

Center(
  child:   Container(width: 200,
  
    decoration: BoxDecoration(
  
      borderRadius: BorderRadius.circular(40)
  
      
  
    ),
  
    child:   ElevatedButton(onPressed: (){}, child: Text("Filter & Sort"),
  
  
  
    style: ElevatedButton.styleFrom(
  
      shape:
  
          RoundedRectangleBorder(
  
              borderRadius: BorderRadius.circular(8.0),
  
              
  
          ),
  
        primary: AppTheme.DarkPastelGreen,elevation: 0),
  
  
  
    ),
  
  ),
)
              ,
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
Card(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


    Container(width: 300,height: 150,
    decoration: BoxDecoration(color: Colors.red,
    image: DecorationImage(image: AssetImage('images/room.jpg'),fit: BoxFit.fitWidth),


    ),),
    Padding(
        padding: EdgeInsets.symmetric(vertical: 4 ,horizontal: 10),
        child: Text('get inspired with Mona',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
      SizedBox(height: 30,),
      Padding(   padding: EdgeInsets.symmetric(vertical: 4 ,horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.place),
            Text('Saudia ,Arabia', maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),


          ],),
      ),
      Padding(   padding: EdgeInsets.symmetric(vertical: 4 ,horizontal: 10),
        child: Row(

          children: [
            Icon(Icons.people),
            Text('8 member')

          ],),
      ),
      Padding(   padding: EdgeInsets.symmetric(vertical: 4 ,horizontal: 10),
        child: Row(

          children: [
            Icon(Icons.person),
            Text('Organized by Mona')

          ],),
      ),




  ],),
)


                  ],),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
