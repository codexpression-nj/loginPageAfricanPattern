import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff000637),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2.0),
                child: ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 320.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/path.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(height: 90),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(34.0, 8.0, 34.10, 0),
                // child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xff000c68),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(34.0, 8.0, 34.10, 0),
                // child: Center(
                child: Text(
                  "Welcome back",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff000c68),
                      fontWeight: FontWeight.w300),
                ),
              ),

              SizedBox(height: 60),

              Padding(
                padding: EdgeInsets.fromLTRB(34.0, 8.0, 34.0, 8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff000637).withOpacity(0.2),
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        icon: Icon(Icons.alternate_email),
                      ),
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 90),
              Padding(
                padding: EdgeInsets.fromLTRB(34.0, 8.0, 34.0, 18.0),
                child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff000637).withOpacity(0.2),
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        icon: Icon(Icons.alternate_email),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(44.0, 8.0, 44.0, 8.0),
                child: Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Color(0xff000637),
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(44.0, 0, 44.0, 8.0),
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                            color: Color(0xff000637),
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);

    path.quadraticBezierTo(
        size.width / 2, size.height - 90, size.width, size.height - 90);
    // path.quadraticBezierTo(size.width , size.height,
    //     size.width, size.height );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
