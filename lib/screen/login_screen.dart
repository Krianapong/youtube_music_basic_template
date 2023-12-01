import 'package:flutter/material.dart';
import 'package:youtube_music_basic/main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ประการตัวแปร TextEditingController ของ username และ password
  // ****
TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
  // ประกาศตัวแปรสำหรับตรวจสอบค่าของ username และ password ได้กรอกหรือเปล่า
  // ***
bool isUsernameEmpty = false;
bool isPasswordEmpty = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    // สร้าง GestureDetector
    // ***
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(25),
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Image.asset(
                          "assets/images/youtube_music_logo_1.png",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _usernameController,
                            autofocus: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle),
                                labelText: "Username",
                              errorText: (isUsernameEmpty)? "Username cannot be null" : null,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.0)
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.account_balance),
                                labelText: "Password",
                                errorText: (isPasswordEmpty)? "Username cannot be null" : null,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0)
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              setState(() {

                                // ดึงค่า isEmpty ของ Username และ Password จาก Controller
                                // **
                                isUsernameEmpty = _usernameController.text.isEmpty;
                                isPasswordEmpty = _passwordController.text.isEmpty;
                                // ตัวสอบเงื่อนไขว่าค่า Username และ Password มัน Empty หรือเปล่า
                                // !(_isUsernameEmpty || _isPasswordEmpty)
                                // แล้วทำการ pushReplacement ไปที่หน้า MainScreen๖๗
                                // ***
                                if(!(isUsernameEmpty || isPasswordEmpty)){
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MainScreen()
                                      )
                                  );
                                }
                              });
                            },
                            child: SizedBox(
                              width: size.width * 0.2,
                              child: const Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  child: Text("Login"),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
