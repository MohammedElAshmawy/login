import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen()
    );
  }
}

var emailController=TextEditingController();
var passwordController=TextEditingController();

class LoginScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: DrawClip1(),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.orange
                ),
              ),
            ),
            ClipPath(
              clipper: DrawClip(),
              child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.black
                ),
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 260,left: 20),
                    child: Text('Welcome !',style: TextStyle(fontSize: 30,color: Colors.orange),),

                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          width: 180,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText:'First Name',
                              border:OutlineInputBorder(
                                borderRadius:BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: 180,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:'Last Name',
                            border:OutlineInputBorder(
                              borderRadius:BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText:'Email Address',
                        suffixIcon: Icon(Icons.email),
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText:'Password',
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:8),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText:'Confirm Password',
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: FlatButton(
                        minWidth: 200,
                        height: 60,
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        onPressed: (){},
                        child: Text('Sign Up')),
                  ),

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}



class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.3, 50.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
  }
}
