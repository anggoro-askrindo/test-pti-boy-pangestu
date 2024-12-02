import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_pti_prabowo_adi/models/login_model.dart';
import 'package:test_pti_prabowo_adi/view_models/login_view_model.dart';
import 'package:test_pti_prabowo_adi/views/text_styles.dart';
import 'package:test_pti_prabowo_adi/views/widget/atoms/button.dart';
import 'package:test_pti_prabowo_adi/views/widget/atoms/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final loginViewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Frame.png'), // Add your local image here
            fit: BoxFit.contain, // Adjust image fitting
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'assets/digiask_logo.png',
                      height: 53,
                    ),
                  ),
                ),
                Text(
                  "Selamat datang kembali!",
                  style: AppTextStyles.headingText,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  label: "Nomor Handphone",
                  hintText: "Masukkan Nomor Handphone",
                  icon: Icons.email,
                  controller: emailController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nomor Handphone tidak boleh kosong";
                    }
                    // if (!value.contains("@") || !value.contains(".")) {
                    //   return "Masukkan email yang valid";
                    // }
                    return null;
                  },
                ),
                CustomTextField(
                  label: "Password",
                  hintText: "Masukkan password Andai",
                  icon: Icons.lock,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Kata sandi tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // Checkbox(value: false, onChanged: (value) {}),
                        // Text("Simpan Kata Sandi?"),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Forgot Password logic
                      },
                      child: Text(
                        "Lupa Password",
                        style: TextStyle(
                          color: Color(0xFFF47820),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                CustomButton(
                  text: "Masuk",
                  isLoading: loginViewModel.isLoading,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      //validasi sebelum login
                      final loginModel = LoginModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      await loginViewModel.login(loginModel);

                      if (loginViewModel.errorMessage != null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login failed"),
                        ));
                      } else {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isLoggedIn', true);
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    }
                  },
                ),
                SizedBox(height: 20),
                Center(child: Text("Atau lanjutkan dengan")),
                SizedBox(height: 20),
                Center(
                  child: Image.asset(
                    'assets/social_button.png',
                    height: 50,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum punya akun? "),
                    Text("Daftar Sekarang"),
                  ],
                ),
                SizedBox(height: 20),
                CustomSecButton(
                  text: "Masuk sebagai tamu",
                  isLoading: loginViewModel.isLoading,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      //validasi sebelum login
                      final loginModel = LoginModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      await loginViewModel.login(loginModel);

                      if (loginViewModel.errorMessage != null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Login failed"),
                        ));
                      } else {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('isLoggedIn', true);
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
