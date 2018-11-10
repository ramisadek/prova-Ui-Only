import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  Color start = const Color(0xFFE6B3CB);
  Color end = const Color(0xFF8A71E5);
  String img =  "images/asset-1.png";

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
                Image.asset('$img',height: 120.0,width: 120.0,),
                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top + 20)),
                Container(
                  width: 300.0,
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

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top )),

                Container(
                  width: 300.0,
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

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 10)),

                InkWell(
                  child: Text("Forgot password ?",style: TextStyle(color: Colors.black26),),
                  onTap: null,
                ),

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 5)),

                Container(
                  //width: 200,
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

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 5)),

                InkWell(
                  child: Text("Police and privecy",style: TextStyle(decoration: TextDecoration.underline,)),
                  onTap: null,
                ),

                Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top - 5)),

              ],
            ),
          ),

          Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: <Widget>[
                Stack(
                 // alignment: Alignment(1.75, 0.0),
                  children: <Widget>[

                    Container(
                      width: 170.0,
                      padding: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 170.0,bottom: 20.0),
                      decoration:
                      BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black26),),
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Or", style: TextStyle(fontSize: 15.0,color: Colors.black26))),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 210.0,top: 20.0),
                      width: 160.0,
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black26))),
                    ),

                  ],
                )
              ],
            ),
          )



        ],
      ),
    );
  }
}
