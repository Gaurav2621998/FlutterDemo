import 'package:flutter/material.dart';
import 'package:flutterdemo/HomePageDemo.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginpageState createState() => LoginpageState();
}

class LoginpageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  AnimationController animationController;
  Animation<double> iconAnimation;

  @override
  void initState()
  {
      super.initState();

      animationController=new AnimationController(
        vsync: this,duration: new Duration(milliseconds: 100)
      );
      iconAnimation=new CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceOut
      );

      iconAnimation.addListener(() => this.setState(() {}));
      animationController.forward();



  }

    final loginkey= GlobalKey<FormState>();

    var value="LOGIN";

    final TextEditingController email=new TextEditingController();
    final TextEditingController pass=new TextEditingController();
    

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
          body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        new Image(
          image: new AssetImage("assets/Gauravimg2.jpg"),
          fit: BoxFit.cover,
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,

        ),
        new Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: <Widget>[

              new FlutterLogo(
                size: iconAnimation.value * 120,
              ),
              new Form(
                key: loginkey,
                child:new  Theme(
                  data: ThemeData(
                      brightness: Brightness.dark,
                      primaryColor: Colors.teal ,
                      inputDecorationTheme: new InputDecorationTheme(
                        labelStyle: new TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0
                        )
                      ) 
                     ),
                    
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new TextFormField(
                          controller: email,
                          validator: (value){
                            if(value.isEmpty)
                            {
                              return 'Please enter value';
                            }
                            return null;

                          },
                          decoration: new InputDecoration(
                            labelText: "Enter Email"

                            
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        new TextFormField(
                        
                          controller: pass,
                          validator: (value) {
                            if(value.isEmpty)
                            {
                              return 'Please enter value';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "Enter Password"

                            
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),

                        new Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                        ),
                         new MaterialButton(
                           height: 40.0,
                           minWidth: 60.0,
                           color: Colors.teal,
                           textColor: Colors.white,
                           child: Text("$value"),  
                           onPressed: ()=>{

                      

                             if( loginkey.currentState.validate() )
                             {
                      
                               
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomePageDemo()),
                                )
                                
                             }
                            },
                           splashColor: Colors.redAccent,

                         )


      
                      ],
                  ),
                    ), 
                ),
              )

            
            // new Container(
            //   width: iconAnimation.value * 130,
            //   height: iconAnimation.value * 130,
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     image: new DecorationImage(
            //       fit: BoxFit.cover,
            //       image: new AssetImage("assets/Gauravimg2.jpg")
            //       //  image: new NetworkImage(
            //       //        "https://www.woolha.com/media/2019/06/buneary.jpg")
                

            //     )

            //   ),
            //  )
          ],
          )


        ],
      ),
    );
  }
}