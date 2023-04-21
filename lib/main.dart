import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red),
      home: Home(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var email = TextEditingController();
  var pwd = TextEditingController();

  update() {
    print("email $email");
    if ((email.text == "user@appfoster.com") &&
        (pwd.text == "appfoster@flutter")) {
      Get.snackbar("SUCCESSFUL", "attempt");
    }
  else{
    Get.snackbar("Invalid Credentials", "Try Again");
    }}
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: Color(0xff365b59),
          body: Column(
            children:
            [Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 100),
                  child: Image.asset("assets/image/girlimage.png", width: 100),
                ),
                SizedBox(width: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 100),
                  child: Image.asset("assets/image/form.jpg", width: 100,),
                )
              ],),
              SizedBox(height: 20,),
              Text("LOGIN", style: TextStyle(fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30),),
              SizedBox(height: 5,),
              Text("Please log in to continue", style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  controller: email,
                  decoration: new InputDecoration(
                    fillColor: Color(0xff97a6a5),
                    filled: true,
                    prefixIcon: new Icon(Icons.mail_outline_rounded, size: 40,),
                    labelText: "Enter your Email id",
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),

                    ),),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextField(
                  controller: pwd,
                  decoration: new InputDecoration(
                    fillColor: Color(0xff97a6a5),
                    filled: true,
                    prefixIcon: new Icon(Icons.password, size: 40,),
                    labelText: "Enter your Password",
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),

                    ),),),
              ),

              SizedBox(height: 20,),

              SizedBox(height: 20,),
              Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(25),
                    //border: Border.all(color:Colors.black),
                  ),
                  child: ClipOval(

                    child: ElevatedButton(onPressed: () {
                      setState(() {
                        update();
                      });
                    }, child: Text("LOGIN", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white30
                    ),),),
                  )

              ),
              SizedBox(height: 5,),
              TextButton(onPressed: () {},
                  child: Text("Forgot Password?", style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),)),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white30),),
                  Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white30),)

                ],
              ),


            ],
          )


      );
    }
  }

