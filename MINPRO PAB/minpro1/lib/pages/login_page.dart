import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'list_pesanan.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final email = TextEditingController();
  final password = TextEditingController();

  final supabase = Supabase.instance.client;

  Future login() async {

    await supabase.auth.signInWithPassword(
      email: email.text,
      password: password.text,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListPesananPage(
          toggleTheme: () {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: email,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),

            TextField(
              controller: password,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: login,
              child: const Text("Login"),
            ),

            TextButton(
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterPage(),
                  ),
                );

              },
              child: const Text("Belum punya akun? Register"),
            )

          ],
        ),
      ),
    );
  }
}