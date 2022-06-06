

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boot1_project/screens/login_page.dart';
import 'package:boot1_project/screens/splashscreen.dart';
import 'headerwidget.dart';

import 'forgotpassword_page.dart';
import 'forgotpassword_verification.dart';
import 'registrationpage.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage>{

  final double  _drawerIconSize = 24;
  final double _drawerFontSize = 17;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
              )
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                const Icon(FontAwesomeIcons.bell),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration:BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [0.0, 1.0],
                  colors: [
                    Colors.tealAccent.withOpacity(0.2),
                    Colors.blueAccent.withOpacity(0.2),
                  ]
              )
          ) ,
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.0, 0.7],
                    colors: [ Colors.blue,Colors.green,],
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Green Points",
                    style: TextStyle(fontSize: 25,color: Colors.white, fontFamily: "Montserrat", fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.magic, size: _drawerIconSize, color: Theme.of(context).colorScheme.secondary,),
                title: Text('Splash Screen', style: TextStyle(fontSize: 17, fontFamily: "Montserrat", color: Theme.of(context).shadowColor),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashScreen(title: "Splash Screen")));
                },
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.lockOpen,size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary),
                title: Text('Login Page', style: TextStyle(fontSize: _drawerFontSize,
                    fontFamily:"Montserrat",
                    color: Theme.of(context).shadowColor),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
                },
              ),
              // Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(FontAwesomeIcons.registered, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary),
                title: Text('Registration Page',style: TextStyle(fontSize: _drawerFontSize,fontFamily: "Montserrat", color: Theme.of(context).shadowColor),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()),);
                },
              ),
              //   Divider(color: Theme.of(context).primaryColor, height: 1,),
              ListTile(
                leading: Icon(FontAwesomeIcons.questionCircle, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
                title: Text('Forgot Password Page',style: TextStyle(fontSize: _drawerFontSize, fontFamily: "Montserrat",color: Theme.of(context).shadowColor),),
                onTap: () {
                  Navigator.push( context, MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),);
                },
              ),
              //      const Divider(color: Colors.transparent, height: 1,),
              //    ListTile(
              //    leading: Icon(Icons.verified_user_sharp, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
              //  title: Text('Verification Page',style: TextStyle(fontSize: _drawerFontSize,color: Theme.of(context).shadowColor),),
              //  onTap: () {
              //       Navigator.push( context, MaterialPageRoute(builder: (context) => const ForgotPasswordVerificationPage()), );
              //   },
              //    ),
              const Divider(color: Colors.transparent, height: 1,),
              ListTile(
                leading: Icon(FontAwesomeIcons.signOutAlt, size: _drawerIconSize,color: Theme.of(context).colorScheme.secondary,),
                title: Text('Logout',style: TextStyle(fontSize: _drawerFontSize,fontFamily:"Montserrat" ,color: Theme.of(context).shadowColor),),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const SizedBox(height: 140, child: HeaderWidget(80,false,FontAwesomeIcons.recycle),),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(25, 10, 25, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.transparent),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(5, 5),),
                      ],
                    ),
                    alignment: Alignment.center,
                    width: 106.5,
                    child: Icon(Icons.person, size: 80, color: Colors.black,),
                  ),
                  const Divider(color: Colors.transparent,),
                  const SizedBox(height: 10,),
                  const Text('', style: TextStyle(fontSize: 22,),),
                  const Text('Ömer Mert Gülseven', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 18,),
                  const Text('23', style: TextStyle(fontSize: 22, fontFamily:"Montserrat", fontWeight: FontWeight.bold),),
                  const SizedBox(height: 13,),
                  const Text('Developer', style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  const Divider(color: Colors.transparent,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 3.0),
                          alignment: Alignment.topLeft,
                          child: const Text(
                            "User Information",
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Card(
                          child: Container(
                            decoration: BoxDecoration( color: Colors.indigoAccent, borderRadius: BorderRadiusDirectional.circular(10)),
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    ...ListTile.divideTiles(
                                      color: Colors.black,
                                      tiles: [
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 1),
                                          leading: Icon(FontAwesomeIcons.mapMarked),
                                          title: Text("Location",),
                                          subtitle: Text("USA"),
                                        ),
                                        const ListTile(
                                          contentPadding: EdgeInsets.symmetric( horizontal: 20, vertical: 8),
                                          leading: Icon(Icons.email),

                                          title: Text("Email"),
                                          subtitle: Text("omergulseven@gmail.com"),

                                        ),

                                        const ListTile(
                                          leading: Icon(Icons.person),
                                          title: Text("About Me"),
                                          subtitle: Text(
                                              "This is a about me link and you can khow about me in this section."),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}