import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);


  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _Checked1 = true;
  bool _Checked2 = true;



  @override
  Widget build(BuildContext context) => Scaffold(
      body: Scaffold(
              body: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Pattern.png'),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                child: Column(
                  children: [
                    Divider(height: 0,
                      color: Colors.transparent,
                    ),
                    Container(
                      child: Image.asset('assets/Full Logo.png'),
                      height: 200,
                    ),

                    Divider(height: 20,
                      color: Colors.transparent,
                    ),

                    Text('Sign Up For Free',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                        ),

                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsetsDirectional.only(start: 12.0),
                              child: Image.asset('assets/Profile.png'),
                            ),
                            label: Text('Name'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your Name';
                            } else if (value.length < 1) {
                              return 'Please enter a valid Name';
                            } else if (value.length > 13) {
                              return 'maximum character is 13';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 30,
                          left: 30,
                          top:  30,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            label: Text('Email'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your email';
                            } else if (value.length < 4) {
                              return 'at least enter 4 characters';
                            } else if (value.length > 13) {
                              return 'maximum character is 13';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          right: 30,
                          top: 30,
                        ),

                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            label: Text('Password'),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your email';
                            } else if (value.length < 4) {
                              return 'at least enter 4 characters';
                            } else if (value.length > 13) {
                              return 'maximum character is 13';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),

                    CheckboxListTile(
                      activeColor: Color(0xFF53E88B),
                      value: _Checked1,
                      contentPadding: EdgeInsets.symmetric(vertical: -10),
                      title: Text('Keep Me Signed In',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      checkboxShape: CircleBorder(side: BorderSide(width: 35,)),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool? value) {
                        setState(() {
                          _Checked1 = value!;
                        });
                        },
                    ),
                    CheckboxListTile(
                      activeColor: Color(0xFF53E88B),
                      contentPadding: EdgeInsets.symmetric(vertical: -10),
                      checkboxShape: CircleBorder(),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Email Me About Pricing',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      value: _Checked2,
                      selectedTileColor: Color(0xFF53E88B),
                      onChanged: (bool? value) {
                        setState(() {
                          _Checked2 = value!;
                        });
                        },
                    ),
                  ]
                ),
              ),
            ),
  );
}
