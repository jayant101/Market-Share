import 'package:flutter/material.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/material.dart' as prefix0;
import 'package:marketshare/style/theme.dart' as Theme;
import 'package:share/share.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Third extends StatelessWidget{
  var user;
  Third({this.user});

  
getData() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection(user.uid).getDocuments();

    return qn.documents;
  }
  @override
Widget build(BuildContext context){
  return new Scaffold(
    body: Container(
      
     

      child: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              child: Image.asset('images/h1.png')
            ),

            Text('or'),

            Container(
              height: 150.0,
              width: 150.0,
              child: Image.asset('images/h2.png'),
            ),
          ],),

          SizedBox(height: 30.0,),

          Container(
            height: 200.0,
            width: 320.0,
            child: Column(children: <Widget>[
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('INVITE MEMBER',style: TextStyle(fontFamily: 'WorkSansSemiBold'),)
              ],),

              SizedBox(height: 5.0,),

              Container(
                width: 280.0,
                height: 1.0,
                color: Colors.grey[400],

              ),

              SizedBox(height: 8.0,),

              Stack(
                children: <Widget>[
                Container(
                      height: 100.0,
                      width: 320.0,
                      decoration: prefix0.BoxDecoration(border: 
                      Border.all(color: Colors.blue)),

                      child: Center(child:  FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                     
                        }
                        else{
                          return    Text(snapshot.data[0].data['name'],style: TextStyle(color: Colors.blue,fontFamily: 'WorkSansBold',letterSpacing: 3.0,fontSize: 20.0),);
                     }
                      },
                    ),
                      
                      
                      
                      
                      
                     ),),



                      FutureBuilder(
                      future: getData(),
                      builder: (context,snapshot)
                      {
                        if(snapshot.connectionState==ConnectionState.waiting){
                             return Center(child: Container(child: Text('Loading',style:TextStyle(fontFamily: 'Maven Pro')),),);
                     
                        }
                        else{
                          return  Column(
                    
                    children: <Widget>[
                      SizedBox(height: 3.0,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Your Referral',style: TextStyle(fontSize: 10.0,color: Colors.grey[400],fontFamily: 'WorkSansMedium'),),
                        ],
                      ),

                      SizedBox(height: 30.0,),
                        Container(
                margin: EdgeInsets.only(top: 50.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 10.0,
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
                          vertical: 10.0, horizontal: 4.0),
                      child: Text(
                        "INVITE",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {        
                        Share.share('Here is the Best Marketing Scheme for you just have a look at it and experience the best feeling in the world #earningmoney_withlittleEfforts_only https://market-share2.webnode.com/'+''+'  use ${snapshot.data[0].data['name']} as referral code');
                    }

                    
                      
                      ),

                      

                    
                          
                        
              ),
                    ],
                  ); }
                      },
                    ),
                  
                  



                
                ],
              ),


             



            ],),
          ),

           SizedBox(
                height: 20.0,
              ),


              Text('Invite more',style: TextStyle(color:Colors.grey[400],fontFamily: 'Maven Pro'),),
              SizedBox(height: 10.0,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Container(
                  height: 1.0,
                  width: 50.0,
                  color: Colors.grey[400],
                ),

                Text('  and  ',style: TextStyle(color:Colors.grey[400],fontFamily: 'Maven Pro')),

                Container(
                  height: 1.0,
                  width: 50.0,
                  color: Colors.grey[400],
                ),

                



              ],),

              SizedBox(height: 10.0,),
              

              Text('Earn More',style: TextStyle(color:Colors.grey[400],fontFamily: 'Maven Pro'))


        ],
        
      ),
    ),
  );
}
}