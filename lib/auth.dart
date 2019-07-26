import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/material.dart' as prefix0;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:marketshare/main.dart';

import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketshare/style/theme.dart' as Theme;
import 'package:marketshare/utils/bubble_indication_painter.dart';







class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final FocusNode myFocusNodeEmailLogin = FocusNode();
  final FocusNode myFocusNodePasswordLogin = FocusNode();

  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeName = FocusNode();
  final FocusNode myFocusNodeConfirmation = FocusNode();

  TextEditingController loginEmailController = new TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();
  TextEditingController signupReferal = new TextEditingController();

  bool _obscureTextLogin = true;
  bool _obscureTextSignup = true;
  bool _obscureTextSignupConfirm = true;



    final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn _googleSignIn = GoogleSignIn();



Future<FirebaseUser>signUp(String emails,String passwords ) async{
  final FirebaseUser user = await _auth.createUserWithEmailAndPassword(email: emails,password: passwords);
  print(user.uid);
  return user;
}

Future<FirebaseUser> signIn(String emails,String passwords) async{
  final FirebaseUser user = await _auth.signInWithEmailAndPassword(email: emails,password: passwords);
  print(user.uid);
  return user;
}


  TextEditingController signupEmailController = new TextEditingController();
  TextEditingController signupNameController = new TextEditingController();
  TextEditingController signupPasswordController = new TextEditingController();
  TextEditingController signupConfirmPasswordController =
      new TextEditingController();

  PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height >= 775.0
                    ? MediaQuery.of(context).size.height
                    : 775.0,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientStart,
                        Theme.Colors.loginGradientEnd
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 75.0),
                      child: new Image(
                          width: 250.0,
                          height: 191.0,
                          fit: BoxFit.fill,
                          image: new AssetImage('assets/img/login_logo.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: _buildMenuBar(context),
                    ),
                    Expanded(
                      flex: 2,
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (i) {
                          if (i == 0) {
                            setState(() {
                              right = Colors.white;
                              left = Colors.black;
                            });
                          } else if (i == 1) {
                            setState(() {
                              right = Colors.black;
                              left = Colors.white;
                            });
                          }
                        },
                        children: <Widget>[
                          new ConstrainedBox(
                            constraints: const BoxConstraints.expand(),
                            child: _buildSignIn(context),
                          ),
                          new ConstrainedBox(
                            constraints: const BoxConstraints.expand(),
                            child: _buildSignUp(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }

  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeName.dispose();
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignInButtonPress,
                child: Text(
                  "Existing",
                  style: TextStyle(
                      color: left,
                      fontSize: 16.0,
                      fontFamily: "WorkSansSemiBold"),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignUpButtonPress,
                child: Text(
                  "New",
                  style: TextStyle(
                      color: right,
                      fontSize: 16.0,
                      fontFamily: "WorkSansSemiBold"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 190.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          
                          focusNode: myFocusNodeEmailLogin,
                          controller: loginEmailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodePasswordLogin,
                          controller: loginPasswordController,
                          obscureText: _obscureTextLogin,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              size: 22.0,
                              color: Colors.black,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleLogin,
                              child: Icon(
                                _obscureTextLogin
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {
             //  _handleSignIn().then((FirebaseUser user){ Navigator.push(context, MaterialPageRoute(builder: (context)=> Home(user:user)));});
                       
                      
                       
                       signIn(loginEmailController.text,loginPasswordController.text).then((FirebaseUser user){
                         Navigator.of(context).pushReplacement(
                           new MaterialPageRoute(
                             settings:RouteSettings(name: 'homepage'),
                             builder: (context)=>new Home(user: user,)
                           )
                         );
                      
                      
                      
                       });
                      
                    }

                    
                      
                      ),

                      

                    
                          
                        
              ),
              

              
            ],
          ),
          
           Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "WorkSansMedium"),
                )),
          ),
         
          
        ],
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: ListView(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 460.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeName,
                          controller: signupNameController,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.user,
                              color: Colors.black,
                            ),
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeEmail,
                          controller: signupEmailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black,
                            ),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodePassword,
                          controller: signupPasswordController,
                          obscureText: _obscureTextSignup,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleSignup,
                              child: Icon(
                                _obscureTextSignup
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeConfirmation,
                          controller: signupConfirmPasswordController,
                          obscureText: _obscureTextSignup,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Confirmation",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleSignup,
                              child: Icon(
                                _obscureTextSignup
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          controller: signupReferal,
                          
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.handHolding,
                              color: Colors.black,
                            ),
                            hintText: "Referral Name",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                           
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 440.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {


                      if(signupNameController.text.isEmpty||signupEmailController.text.isEmpty||signupPasswordController.text.isEmpty||signupConfirmPasswordController.text.isEmpty||signupReferal.text.isEmpty
                      ){
                          showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0,
                                          decoration: prefix0.BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Error',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.red,decoration: prefix0.TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('please enter valid value',style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration: prefix0.TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                                              children: <Widget>[
                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  try again  ",style: prefix0.TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),
                                              ],),

                                            
                                          
                                          ],),
                                          
                                        ),
                                                                        ),
                                      );
                                    }
                                  );



                      }

                            else{

                              showDialog(
                                    context: context,
                                    builder: (builder){
                                      return Center(
                                       child: Material(
                                            child: Container(
                                          height: 300.0,
                                          width: 300.0, 
                                          decoration: prefix0.BoxDecoration(
                                            border: Border.all(color:Colors.black),
                                          ),
                                          child: Column(children: <Widget>[

                                            SizedBox(height: 50.0,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text('Account Created Successfully!!!',style: TextStyle(fontFamily: 'Maven Pro',color: Colors.green,decoration: prefix0.TextDecoration.none),),
                                              ],),

                                              SizedBox(height: 20.0,),

                                              Text('Enjoy the Experience',style:TextStyle(fontFamily: 'Maven Pro',fontSize: 12.0,decoration: prefix0.TextDecoration.none,color: Colors.grey))
,
                                              SizedBox(height: 80.0,),

                                              Row(mainAxisAlignment: prefix0.MainAxisAlignment.center,
                                              children: <Widget>[
                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),

                                                Text("  Pleasure to have you  ",style: prefix0.TextStyle(fontFamily: 'Maven Pro',color: Colors.grey,fontSize: 10.0),),

                                                prefix0.Container(
                                                  height: 1.0,
                                                  width: 30.0,
                                                  color: Colors.grey,
                                                ),
                                              ],),

                                            
                                          
                                          ],),
                                          
                                        ),
                                                                        ),
                                      );
                                    }
                                  );
                            }




                      signUp(signupEmailController.text,signupConfirmPasswordController.text).then((FirebaseUser user){

                           Firestore.instance.collection(user.uid).add
                    ({

                        'name':signupNameController.text,
                        'coins':'0',
                        'drawer space':'......',
                        'current level':'Cypher L1',
                        'current investment':'Cypher',
                        'Team Count':"0",
                        'leader':signupReferal.text,

                        '50':'https://p-y.tm/IvX-AwY',
                        '100':'https://p-y.tm/rRjR-Ib',
                        '500':'https://p-y.tm/3-qyRIb',
                        '1000':'https://p-y.tm/0T6-n6G',

                        "Cypher Investment no":'0',
                        "Alpha Investment no":'0',
                        "Chroma Investment no":'0',
                        "Titan Investment no":'0',

                        'Cypher member count':'0',

                        'Cypher level-1 member': '1',
                        'Cypher level-2 member': '0',
                        'Cypher level-3 member': '0',
                        

                        'Alpha member count':'0',

                        "Alpha level-1 member":'1',
                        "Alpha level-2 member":'0',
                        "Alpha level-3 member":'0',
                        "Alpha level-4 member":'0',

                        'Chroma member count':'0',

                        'Chroma level-1 member':'1',
                        'Chroma level-2 member':'0',
                        'Chroma level-3 member':'0',
                        'Chroma level-4 member':'0',
                        'Chroma level-5 member':'0',
                        'Chroma level-6 member':'0',
                        'Chroma level-7 member':'0',
                        'Chroma level-8 member':'0',

                        'Titan member count':'0',

                        'Titan level-1 member':'1',
                        'Titan level-2 member':'0',
                        'Titan level-3 member':'0',
                        'Titan level-4 member':'0',
                        'Titan level-5 member':'0',
                        'Titan level-6 member':'0',
                        'Titan level-7 member':'0',
                        'Titan level-8 member':'0',

                        'Cf1':'  ','Cf2':'  ','Cf3':'  ',
                     
                        'Cs1':'  ','Cs2':'  ','Cs3':'  ','Cs4':'  ','Cs5':'  ','Cs6':'  ','Cs7':'  ','Cs8':'  ', 'Cs9':'  ',

                      
                     
                    
                    
                      
                   
                    'Af1':"  ",'Af2':"  ",'Af3':"  ",

                    'As1':"  ",'As2':"  ",'As3':"  ",'As4':"  ",'As5':"  ",'As6':"  ",'As7':"  ",'As8':"  ",'As9':"  ",

                    'At1':"  ",'At2':"  ",'At3':"  ",'At4':"  ",'At5':"  ",'At6':"  ",'At7':"  ",'At8':"  ",
                    'At9':"  ",'At10':"  ",'At11':"  ",'At12':"  ",'At13':"  ",'At14':"  ",'At15':"  ",'At16':"  ",
                    'At17':"  ",'At18':"  ",'At19':"  ",'At20':"  ",'At21':"  ",'At22':"  ",'At23':"  ",'At24':"  ",
                    'At25':"  ",'At26':"  ",'At27':"  ",

                    'Chf1':'  ','Chf2':'  ','Chf3':'  ',

                    'Chs1':'  ','Chs2':'  ','Chs3':'  ','Chs4':'  ','Chs5':'  ','Chs6':'  ','Chs7':'  ','Chs8':'  ','Chs9':'  ',
                    
                    'Cht1':'  ','Cht2':'  ','Cht3':'  ','Cht4':'  ','Cht5':'  ','Cht6':'  ','Cht7':'  ','Cht8':'  ','Cht9':'  ',
                    'Cht10':'  ','Cht11':'  ','Cht12':'  ','Cht13':'  ','Cht14':'  ','Cht15':'  ','Cht16':'  ','Cht17':'  ','Cht18':'  ',
                    'Cht19':'  ','Cht20':'  ','Cht21':'  ','Cht22':'  ','Cht23':'  ','Cht24':'  ','Cht25':'  ','Cht26':'  ','Cht27':'  ',
                    
                    'Chforth1':'  ','Chforth2':'  ','Chforth3':'  ','Chforth4':'  ','Chforth5':'  ','Chforth6':'  ','Chforth7':'  ','Chforth8':'  ','Chforth9':'  ',
                    'Chforth10':'  ','Chforth11':'  ','Chforth12':'  ','Chforth13':'  ','Chforth14':'  ','Chforth15':'  ','Chforth16':'  ','Chforth17':'  ','Chforth18':'  ',
                    'Chforth19':'  ','Chforth20':'  ','Chforth21':'  ','Chforth22':'  ','Chforth23':'  ','Chforth24':'  ','Chforth25':'  ','Chforth26':'  ','Chforth27':'  ',
                    'Chforth28':'  ','Chforth29':'  ','Chforth30':'  ','Chforth31':'  ','Chforth32':'  ','Chforth33':'  ','Chforth34':'  ','Chforth35':'  ','Chforth36':'  ',
                    'Chforth37':'  ','Chforth38':'  ','Chforth39':'  ','Chforth40':'  ','Chforth41':'  ','Chforth42':'  ','Chforth43':'  ','Chforth44':'  ','Chforth45':'  ',
                    'Chforth46':'  ','Chforth47':'  ','Chforth48':'  ','Chforth49':'  ','Chforth50':'  ','Chforth51':'  ','Chforth52':'  ','Chforth53':'  ','Chforth54':'  ',
                    'Chforth55':'  ','Chforth56':'  ','Chforth57':'  ','Chforth58':'  ','Chforth59':'  ','Chforth60':'  ','Chforth61':'  ','Chforth62':'  ','Chforth63':'  ',
                    'Chforth64':'  ','Chforth65':'  ','Chforth66':'  ','Chforth67':'  ','Chforth68':'  ','Chforth69':'  ','Chforth70':'  ','Chforth71':'  ','Chforth72':'  ',
                    'Chforth73':'  ','Chforth74':'  ','Chforth75':'  ','Chforth76':'  ','Chforth77':'  ','Chforth78':'  ','Chforth79':'  ','Chforth80':'  ','Chforth81':'  ',
                    
                    'Chfive1':'  ','Chfive2':'  ','Chfive3':'  ','Chfive4':'  ','Chfive5':'  ','Chfive6':'  ','Chfive7':'  ','Chfive8':'  ','Chfive9':'  ',
                    'Chfive10':'  ','Chfive11':'  ','Chfive12':'  ','Chfive13':'  ','Chfive14':'  ','Chfive15':'  ','Chfive16':'  ','Chfive17':'  ','Chfive18':'  ',
                    'Chfive19':'  ','Chfive20':'  ','Chfive21':'  ','Chfive22':'  ','Chfive23':'  ','Chfive24':'  ','Chfive25':'  ','Chfive26':'  ','Chfive27':'  ',
                    'Chfive28':'  ','Chfive29':'  ','Chfive30':'  ','Chfive31':'  ','Chfive32':'  ','Chfive33':'  ','Chfive34':'  ','Chfive35':'  ','Chfive36':'  ',
                    'Chfive37':'  ','Chfive38':'  ','Chfive39':'  ','Chfive40':'  ','Chfive41':'  ','Chfive42':'  ','Chfive43':'  ','Chfive44':'  ','Chfive45':'  ',
                    'Chfive46':'  ','Chfive47':'  ','Chfive48':'  ','Chfive49':'  ','Chfive50':'  ','Chfive51':'  ','Chfive52':'  ','Chfive53':'  ','Chfive54':'  ',
                    'Chfive55':'  ','Chfive56':'  ','Chfive57':'  ','Chfive58':'  ','Chfive59':'  ','Chfive60':'  ','Chfive61':'  ','Chfive62':'  ','Chfive63':'  ',
                    'Chfive64':'  ','Chfive65':'  ','Chfive66':'  ','Chfive67':'  ','Chfive68':'  ','Chfive69':'  ','Chfive70':'  ','Chfive71':'  ','Chfive72':'  ',
                    'Chfive73':'  ','Chfive74':'  ','Chfive75':'  ','Chfive76':'  ','Chfive77':'  ','Chfive78':'  ','Chfive79':'  ','Chfive80':'  ','Chfive81':'  ',
                    
                     'Chsix1':'  ','Chsix2':'  ','Chsix3':'  ','Chsix4':'  ','Chsix5':'  ','Chsix6':'  ','Chsix7':'  ','Chsix8':'  ','Chsix9':'  ',
                    'Chsix10':'  ','Chsix11':'  ','Chsix12':'  ','Chsix13':'  ','Chsix14':'  ','Chsix15':'  ','Chsix16':'  ','Chsix17':'  ','Chsix18':'  ',
                    'Chsix19':'  ','Chsix20':'  ','Chsix21':'  ','Chsix22':'  ','Chsix23':'  ','Chsix24':'  ','Chsix25':'  ','Chsix26':'  ','Chsix27':'  ',
                    'Chsix28':'  ','Chsix29':'  ','Chsix30':'  ','Chsix31':'  ','Chsix32':'  ','Chsix33':'  ','Chsix34':'  ','Chsix35':'  ','Chsix36':'  ',
                    'Chsix37':'  ','Chsix38':'  ','Chsix39':'  ','Chsix40':'  ','Chsix41':'  ','Chsix42':'  ','Chsix43':'  ','Chsix44':'  ','Chsix45':'  ',
                    'Chsix46':'  ','Chsix47':'  ','Chsix48':'  ','Chsix49':'  ','Chsix50':'  ','Chsix51':'  ','Chsix52':'  ','Chsix53':'  ','Chsix54':'  ',
                    'Chsix55':'  ','Chsix56':'  ','Chsix57':'  ','Chsix58':'  ','Chsix59':'  ','Chsix60':'  ','Chsix61':'  ','Chsix62':'  ','Chsix63':'  ',
                    'Chsix64':'  ','Chsix65':'  ','Chsix66':'  ','Chsix67':'  ','Chsix68':'  ','Chsix69':'  ','Chsix70':'  ','Chsix71':'  ','Chsix72':'  ',
                    'Chsix73':'  ','Chsix74':'  ','Chsix75':'  ','Chsix76':'  ','Chsix77':'  ','Chsix78':'  ','Chsix79':'  ','Chsix80':'  ','Chsix81':'  ',
                   
                     'Chseven1':'  ','Chseven2':'  ','Chseven3':'  ','Chseven4':'  ','Chseven5':'  ','Chseven6':'  ','Chseven7':'  ','Chseven8':'  ','Chseven9':'  ',
                    'Chseven10':'  ','Chseven11':'  ','Chseven12':'  ','Chseven13':'  ','Chseven14':'  ','Chseven15':'  ','Chseven16':'  ','Chseven17':'  ','Chseven18':'  ',
                    'Chseven19':'  ','Chseven20':'  ','Chseven21':'  ','Chseven22':'  ','Chseven23':'  ','Chseven24':'  ','Chseven25':'  ','Chseven26':'  ','Chseven27':'  ',
                    'Chseven28':'  ','Chseven29':'  ','Chsseven30':'  ','Chseven31':'  ','Chseven32':'  ','Chseven33':'  ','Chseven34':'  ','Chseven35':'  ','Chseven36':'  ',
                    'Chseven37':'  ','Chseven38':'  ','Chseven39':'  ','Chseven40':'  ','Chseven41':'  ','Chseven42':'  ','Chseven43':'  ','Chseven44':'  ','Chseven45':'  ',
                    'Chseven46':'  ','Chseven47':'  ','Chseven48':'  ','Chseven49':'  ','Chseven50':'  ','Chseven51':'  ','Chseven52':'  ','Chseven53':'  ','Chseven54':'  ',
                    'Chseven55':'  ','Chseven56':'  ','Chseven57':'  ','Chseven58':'  ','Chseven59':'  ','Chseven60':'  ','Chseven61':'  ','Chseven62':'  ','Chseven63':'  ',
                    'Chseven64':'  ','Chseven65':'  ','Chseven66':'  ','Chseven67':'  ','Chseven68':'  ','Chseven69':'  ','Chseven70':'  ','Chseven71':'  ','Chseven72':'  ',
                    'Chseven73':'  ','Chseven74':'  ','Chseven75':'  ','Chseven76':'  ','Chseven77':'  ','Chseven78':'  ','Chseven79':'  ','Chseven80':'  ','Chseven81':'  ',
                   

                    'Tf1':"  ",'Tf2':"  ",'Tf3':"  ",

                    'Ts1':"  ",'Ts2':"  ",'Ts3':"  ",'Ts4':"  ",'Ts5':"  ",'Ts6':"  ",'Ts7':"  ",'Ts8':"  ",'Ts9':"  ",

                    'Tt1':"  ",'Tt2':"  ",'Tt3':"  ",'Tt4':"  ",'Tt5':"  ",'Tt6':"  ",'Tt7':"  ",'Tt8':"  ",
                    'Tt9':"  ",'Tt10':"  ",'Tt11':"  ",'Tt12':"  ",'Tt13':"  ",'Tt14':"  ",'Tt15':"  ",'Tt16':"  ",
                    'Tt17':"  ",'Tt18':"  ",'Tt19':"  ",'Tt20':"  ",'Tt21':"  ",'Tt22':"  ",'Tt23':"  ",'Tt24':"  ",
                    'Tt25':"  ",'Tt26':"  ",'Tt27':"  ",


                    'Tforth1':'  ','Tforth2':'  ','Tforth3':'  ','Tforth4':'  ','Tforth5':'  ','Tforth6':'  ','Tforth7':'  ','Tforth8':'  ','Tforth9':'  ',
                    'Tforth10':'  ','Tforth11':'  ','Tforth12':'  ','Tforth13':'  ','Tforth14':'  ','Tforth15':'  ','Tforth16':'  ','Tforth17':'  ','Tforth18':'  ',
                    'Tforth19':'  ','Tforth20':'  ','Tforth21':'  ','Tforth22':'  ','Tforth23':'  ','Tforth24':'  ','Tforth25':'  ','Tforth26':'  ','Tforth27':'  ',
                    'Tforth28':'  ','Tforth29':'  ','Tforth30':'  ','Tforth31':'  ','Tforth32':'  ','Tforth33':'  ','Tforth34':'  ','Tforth35':'  ','Tforth36':'  ',
                    'Tforth37':'  ','Tforth38':'  ','Tforth39':'  ','Tforth40':'  ','Tforth41':'  ','Tforth42':'  ','Tforth43':'  ','Tforth44':'  ','Tforth45':'  ',
                    'Tforth46':'  ','Tforth47':'  ','Tforth48':'  ','Tforth49':'  ','Tforth50':'  ','Tforth51':'  ','Tforth52':'  ','Tforth53':'  ','Tforth54':'  ',
                    'Tforth55':'  ','Tforth56':'  ','Tforth57':'  ','Tforth58':'  ','Tforth59':'  ','Tforth60':'  ','Tforth61':'  ','Tforth62':'  ','Tforth63':'  ',
                    'Tforth64':'  ','Tforth65':'  ','Tforth66':'  ','Tforth67':'  ','Tforth68':'  ','Tforth69':'  ','Tforth70':'  ','Tforth71':'  ','Tforth72':'  ',
                    'Tforth73':'  ','Tforth74':'  ','Tforth75':'  ','Tforth76':'  ','Tforth77':'  ','Tforth78':'  ','Tforth79':'  ','Tforth80':'  ','Tforth81':'  ',
                    
                    'Tff1':'  ','Tff2':'  ','Tff3':'  ','Tff4':'  ','Tff5':'  ','Tff6':'  ','Tff7':'  ','Tff8':'  ','Tff9':'  ',
                    'Tff10':'  ','Tff11':'  ','Tff12':'  ','Tff13':'  ','Tff14':'  ','Tff15':'  ','Tff16':'  ','Tff17':'  ','Tff18':'  ',
                    'Tff19':'  ','Tff20':'  ','Tff21':'  ','Tff22':'  ','Tff23':'  ','Tff24':'  ','Tff25':'  ','Tff26':'  ','Tff27':'  ',
                    'Tff28':'  ','Tff29':'  ','Tff30':'  ','Tff31':'  ','Tff32':'  ','Tff33':'  ','Tff34':'  ','Tff35':'  ','Tff36':'  ',
                    'Tff37':'  ','Tff38':'  ','Tff39':'  ','Tff40':'  ','Tff41':'  ','Tff42':'  ','Tff43':'  ','Tff44':'  ','Tff45':'  ',
                    'Tff46':'  ','Tff47':'  ','Tff48':'  ','Tff49':'  ','Tff50':'  ','Tff51':'  ','Tff52':'  ','Tff53':'  ','Tff54':'  ',
                    'Tff55':'  ','Tff56':'  ','Tff57':'  ','Tff58':'  ','Tff59':'  ','Tff60':'  ','Tff61':'  ','Tff62':'  ','Tff63':'  ',
                    'Tff64':'  ','Tff65':'  ','Tff66':'  ','Tff67':'  ','Tff68':'  ','Tff69':'  ','Tff70':'  ','Tff71':'  ','Tff72':'  ',
                    'Tff73':'  ','Tff74':'  ','Tff75':'  ','Tff76':'  ','Tff77':'  ','Tff78':'  ','Tff79':'  ','Tff80':'  ','Tff81':'  ',
                   

                      'Tss1':'  ','Tss2':'  ','Tss3':'  ','Tss4':'  ','Tss5':'  ','Tss6':'  ','Tss7':'  ','Tss8':'  ','Tss9':'  ',
                    'Tss10':'  ','Tss11':'  ','Tss12':'  ','Tss13':'  ','Tss14':'  ','Tss15':'  ','Tss16':'  ','Tss17':'  ','Tss18':'  ',
                    'Tss19':'  ','Tss20':'  ','Tss21':'  ','Tss22':'  ','Tss23':'  ','Tss24':'  ','Tss25':'  ','Tss26':'  ','Tss27':'  ',
                    'Tss28':'  ','Tss29':'  ','Tss30':'  ','Tss31':'  ','Tss32':'  ','Tss33':'  ','Tss34':'  ','Tss35':'  ','Tss36':'  ',
                    'Tss37':'  ','Tss38':'  ','Tss39':'  ','Tss40':'  ','Tss41':'  ','Tss42':'  ','Tss43':'  ','Tss44':'  ','Tss45':'  ',
                    'Tss46':'  ','Tss47':'  ','Tss48':'  ','Tss49':'  ','Tss50':'  ','Tss51':'  ','Tss52':'  ','Tss53':'  ','Tss54':'  ',
                    'Tss55':'  ','Tss56':'  ','Tss57':'  ','Tss58':'  ','Tss59':'  ','Tss60':'  ','Tss61':'  ','Tss62':'  ','Tss63':'  ',
                    'Tss64':'  ','Tss65':'  ','Tss66':'  ','Tss67':'  ','Tss68':'  ','Tss69':'  ','Tss70':'  ','Tss71':'  ','Tss72':'  ',
                    'Tss73':'  ','Tss74':'  ','Tss75':'  ','Tss76':'  ','Tss77':'  ','Tss78':'  ','Tss79':'  ','Tss80':'  ','Tss81':'  ',
                   





                    }).catchError((e)=>print(e));
                      });
                    }
                    //    showInSnackBar("SignUp button pressed")),
                ),
              ),
            ],
          ),




          

          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController?.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }

  void _toggleSignup() {
    setState(() {
      _obscureTextSignup = !_obscureTextSignup;
    });
  }

  void _toggleSignupConfirm() {
    setState(() {
      _obscureTextSignupConfirm = !_obscureTextSignupConfirm;
    });
  }
}