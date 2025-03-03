import 'package:fitness_mobile_app/screens/home_page.dart';
import 'package:fitness_mobile_app/widgets/login_email_field.dart';
import 'package:fitness_mobile_app/widgets/login_password_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {
    if (_loginKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Form(
            key: _loginKey,

            //the column that has all the page contents
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hey there,',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),

                // email field
                LoginEmailField(controller: _emailController),
                const SizedBox(height: 16),

                // password field
                LoginPasswordField(controller: _passwordController),
                const SizedBox(height: 20),

                // Forgot password text
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Forgot your password?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        decoration: TextDecoration.underline),
                  ),
                ),

                const Spacer(),

                // Login Button
                GestureDetector(
                  onTap: login,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF805DF5), Color(0xFFA675F0)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),

                // Divider
                const SizedBox(height: 18),
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Or'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                // Social Login
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildSocialIcon('assets/images/google_icon.png'),
                    const SizedBox(width: 25),
                    _buildSocialIcon('assets/images/facebook_icon.png'),
                  ],
                ),

                // Register text
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Color(0xFFC75AF2)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //made the social media login options into a widget
  Widget _buildSocialIcon(String assetPath) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(assetPath),
        ),
      ),
    );
  }
}
