import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({super.key});

  @override
  State<LoginScreens> createState() => _LoginScreensState();
}

class _LoginScreensState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color.fromARGB(255, 169, 134, 255),
              ],
              begin: Alignment.center,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height - 400,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/06.jpg")),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff9e94b7),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Color.fromARGB(255, 217, 205, 248),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 30, right: 30, top: 60),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 217, 205, 248),
                        spreadRadius: 0.5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Nama Lengkap',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  controller: TextEditingController(),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 217, 205, 248),
                        spreadRadius: 0.5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Umur',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                  ),
                  controller: TextEditingController(),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.only(left: 100, right: 100, top: 70),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color:
                            Color.fromARGB(195, 70, 67, 101).withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 5),
                      ),
                    ],
                    color: Color.fromARGB(255, 214, 197, 255),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "MASUK",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
