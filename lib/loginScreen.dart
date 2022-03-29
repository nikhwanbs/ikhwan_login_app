// Library untuk coding material design
import 'package:flutter/material.dart';

// Library untuk coding SystemUiOverlayStyle pada body
import 'package:flutter/services.dart';

// Class utama yang diarahkan dan diimport ke main.dart
class LoginScreen extends StatefulWidget {


  // Menggunakan stateful widget
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  // Deklarasi / subclass state untuk value isRememberMe pada Widget buildRememberCb() berisi false
  bool isRememberMe = false;

  // Widget buildEmail untuk form pengisian Email
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      // Text yang berada di atas form pengisian email, beserta style nya (warna putih, fontsize 16, dan bold)
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),

        // Box untuk form email beserta style nya(berwarna putih, terdapat shadow, dan juga offset)
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,

          // Child untuk Form pengisian email
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),

                // Icon yang berada di sisi kiri form email
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffc51f5d),
                ),

                // Text hint yang terlihat di dalam form email
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  // Widget buildPassword untuk form pengisian Passowrd
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      // Text yang berada di atas form pengisian passowrd, beserta style nya (warna putih, fontsize 16, dan bold)
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),

        // Box untuk form password beserta style nya (berwarna putih, terdapat shadow, dan juga offset)
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,

          // Child untuk Form pengisian password
          child: TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),

                // Icon yang berada di sisi kiri form password
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xffc51f5d),
                ),

                // Text hint yang terlihat di dalam form password
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),
          ),
        )
      ],
    );
  }

  // Widget buildForgotPassBtn untuk button 'Forgot Password?'
  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(

        // Jika btn ditekan maka akan ada feedback pada IDE dengan print sbb:
        onPressed: () => print("Forgot Password Pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Forgot Password?',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  // Widget buildRememberCb untuk checkbox 'Remember Me' beserta style nya
  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,

              // Jika ditekan maka akan muncul centang warna merah
              checkColor: Colors.red,
              activeColor: Colors.white,
              onChanged: (value) {
                setState((){
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  // Widget buildLoginBtn untuk button 'LOGIN'
  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,

        // Jika btn ditekan maka akan muncul feedback pada IDE dengan print sbb:
        onPressed:  () => print('Login Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color:  Colors.white,

        //Text 'LOGIN' berwarna sesuai main color dikarenakan btn berwarna putih
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xffc51f5d),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  // Widget buildSignUpBtn untuk button "Don't have an Account? Sign Up" beserta style nya
  Widget buildSignUpBtn() {
  return GestureDetector(

    // Jika btn ditekan maka akan muncul feedback pada IDE dengan keterangan print sbb:
    onTap: () => print('Sign Up Pressed'),
    child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text:
              'Don\'t have An Account? Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
          ),
        ]
      ),
    ),
  )  ;
  }

  @override

  // Widget build di bawah ini digunakan untuk body dari aplikasi
  Widget build(BuildContext context) {

    // Widget scaffold untuk penggunaan basic fungsi seperti container
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[

              // Design dan style untuk layout pada body aplikasi
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(

                  // Style yang digunakan untuk menghasilkan warna gradasi pada body
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffc51f5d),
                      Color(0xccc51f5d),
                      Color(0x99c51f5d),
                      Color(0x66c51f5d),
                    ]
                  )
                ),

                // Digunakan agar aplikasi dapat discroll
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),

                  // Berupa column child untuk pemanggilan widget yang sudah dibuat
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    // Text untuk 'Sign In' pada aplikasi
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignUpBtn(),
                    ],
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