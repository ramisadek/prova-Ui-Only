import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  Color start = const Color(0xFFE6B3CB);
  Color end = const Color(0xFF8A71E5);
  String prove_logo =  "assets/images/asset-1.png";
  String fb_logo = "assets/images/fb logo.png";

  @override
  Widget build(BuildContext context) {

    final MediaQueryData mediaQuery = MediaQuery.of(context);

    return Scaffold(

      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0),
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[

                //////////////////////////////////////  Prova Logo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                Image.asset('$prove_logo',height: 120.0,width: 120.0,),

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top + 20)),

                //////////////////////////////////////  Email TextField  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                Container(
                  width: mediaQuery.size.width * 0.83,
                  child: TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                        hintText: "Email",
                        contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 20.0),
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        )
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 25.0 )),

                //////////////////////////////////////  Password TextField  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                Container(
                  width: mediaQuery.size.width * 0.83,
                  child: TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 20.0),
                        hintStyle: TextStyle(
                          color: Colors.black26,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        )
                    ),
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 20.0 )),

                //////////////////////////////////////  Forogt password Button  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                InkWell(
                  child: Text("Forgot password ?",style: TextStyle(color: Colors.black26),),
                  onTap: null,
                ),

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 5)),

                //////////////////////////////////////  Login Button \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                Container(
                    width: mediaQuery.size.width * 0.83,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        colors: [
                          start,end
                        ],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                      ),
                    ),
                    child: MaterialButton(
                      height: 55.0,
                      minWidth: 300.0,
                      textColor: Colors.white,
                      child: new Text("Log in"),
                      onPressed: () => {},
                    )
                ),

                Padding(padding: EdgeInsets.only(top: 20.0 )),

                //////////////////////////////////////  Policy And Privacy  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                InkWell(
                  child: Text("Policy and privacy",style: TextStyle(decoration: TextDecoration.underline,)),
                  onTap: null,
                ),

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 5)),

              ],
            ),
          ),

          //////////////////////////////////////   OR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Stack(
                 // alignment: Alignment(1.75, 0.0),
                  children: <Widget>[

                    //////////////////////////////////////  Left UnderLine of OR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                    Container(
                      margin: EdgeInsets.only(left: mediaQuery.padding.left +26.0,top: mediaQuery.padding.top - 23.0),
                      width: mediaQuery.size.width * 0.37,
                      padding: EdgeInsets.only(top: mediaQuery.padding.top - 4.0),
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))),
                    ),

                    //////////////////////////////////////  Circle of OR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                    Container(
                      margin: EdgeInsets.only(left: mediaQuery.padding.left +160.0,bottom: mediaQuery.padding.bottom +20.0),
                      decoration:
                      BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black26),),
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Or", style: TextStyle(fontSize: 15.0,color: Colors.black26))),
                    ),

                    //////////////////////////////////////  Right UnderLine of OR  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                    Container(
                      margin: EdgeInsets.only(left: mediaQuery.padding.left +202.0,top: mediaQuery.padding.top -3),
                      width: mediaQuery.size.width * 0.36,
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))),
                    ),

                    //////////////////////////////////////  FaceBook Login Button  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

                    Container(
                        margin: EdgeInsets.only(left: mediaQuery.padding.left +30.0,top: mediaQuery.padding.top +55.0),
                        width: mediaQuery.size.width * 0.85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Color(0xFF3B5998)
                        ),
                        child: MaterialButton(
                          height: 55.0,
                          minWidth: 300.0,
                          textColor: Colors.white,
                          padding: EdgeInsets.only(left: 30.0),
                          child: new Text("continue with facebook",),
                          onPressed: () => {},
                        )
                    ),

                    Container(
                      margin: EdgeInsets.only(left: mediaQuery.padding.left + 80,top: mediaQuery.padding.top + 68.0),
                      child: Image.asset('$fb_logo',width: 20.0,height: 30.0,),
                    )

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
