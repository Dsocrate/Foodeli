import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;
  const LoginWidget({
    Key? key,
    required this.onClickedSignUp
  }) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailContoller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose(){
    emailContoller.dispose();
    passwordController.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('images/logo.png')),
            SizedBox(height: 80,),
            TextField(
                controller: emailContoller,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'EMAIL'
                )
            ),
            SizedBox(height: 10,),
            TextField(
                controller: passwordController,
                cursorColor: Colors.white,
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration:InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD'
                )
            ),
            SizedBox(height: 20,),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50)
                ),
                onPressed: signIn,
                icon: Icon(Icons.lock_open_outlined),
                label: Text('Sign In',
                    style:TextStyle(fontSize: 20))),
            SizedBox(height: 20,),
            RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  text: 'No account ?   ',
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickedSignUp,
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20,
                        decoration: TextDecoration.underline,

                      ),
                    ),

                  ]
                ))




          ],
        ),
      ),
    );
  }
  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailContoller.text.trim(),
        password: passwordController.text.trim(),
      );
    }on FirebaseAuthException catch (e){
      print(e);
    }
  }
}
