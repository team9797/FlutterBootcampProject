//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:boot1_project/screens/widgetss/headerwidget.dart';
import 'package:boot1_project/theme_helper/theme_helper.dart';

//import 'package:loginpage/screens/widgets/forgotpassword_page.dart';
import 'package:boot1_project/screens/widgetss/profilepage.dart';
import 'package:boot1_project/screens/widgetss/registrationpage.dart';

//void main() async {
//WidgetsFlutterBinding.ensureInitialized();
// var DefaultFirebaseOptions;
// await Firebase.initializeApp(
//  options: DefaultFirebaseOptions.currentPlatform,
// );
runApp(LoginPage()) {
  // TODO: implement runApp
  throw UnimplementedError();
}
//}
class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final double _headerHeight = 250;
  final Key _formKey = GlobalKey<FormState>();

  get colorScheme => null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, FontAwesomeIcons.recycle), //let's create a common header widget
            ),
            SafeArea(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),// This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Green Points',
                        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontStyle: colorScheme, height: 0.5),
                      ),
                      const Text(
                        'Sign in into your account',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, height: 3),
                      ),
                      const SizedBox(height: 20.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                child: TextField(
                                  decoration: ThemeHelper().textInputDecoration('User Name', 'Enter your user name'),
                                ),
                                decoration: ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(height: 30.0),
                              Container(
                                child: TextField(
                                  obscureText: true,
                                  decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                                ),
                                decoration: ThemeHelper().inputBoxDecorationShaddow(),
                              ),
                              const SizedBox(height: 15.0),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10,0,10,20),
                                alignment: Alignment.topRight,
                                //  child: GestureDetector(
                                //  onTap: () {
                                //    Navigator.push( context, MaterialPageRoute( builder: (context) => const ForgotPasswordPage()), );
                                //  },
                                //   child: const Text( "Forgot your password?", style: TextStyle( color: Colors.grey, ),
                                //        ),
                                //    ),
                              ),
                              Container(
                                decoration: ThemeHelper().buttonBoxDecoration(context),
                                child: ElevatedButton(
                                  style: ThemeHelper().buttonStyle(),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),

                                    child: Text('Sign In'.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                  ),
                                  onPressed: (){

                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
                                  },
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(10,20,10,20),

                                child: Text.rich(
                                    TextSpan(
                                        children: [
                                          const TextSpan(text: "Don't have an account? "),
                                          TextSpan(
                                            text: 'Create an account',
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()));
                                              },
                                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrangeAccent),
                                          ),
                                        ]
                                    )
                                ),
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );

  }
}