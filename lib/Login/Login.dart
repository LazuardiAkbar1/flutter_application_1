import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  'assets/images/Login1.png', // Ganti dengan gambar ilustrasi login kamu
                  height: 200,
                ),
                const SizedBox(height: 30),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Login to continue using the app',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off),
                      onPressed: () {
                        // Tambahkan fungsionalitas untuk menampilkan/menyembunyikan password
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgot_password');
                    },
                    child: const Text('Forgot password?'),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Alihkan ke halaman dashboard
                            Navigator.pushNamed(context, '/dashboard');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Jarak antara tombol dan ikon
                    const Icon(
                      Icons.fingerprint,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Or Login with',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/icons/Google.png'),
                      iconSize: 40,
                      onPressed: () {
                        // Tambahkan fungsionalitas login Google
                      },
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/Apple.png'),
                      iconSize: 40,
                      onPressed: () {
                        // Tambahkan fungsionalitas login Apple
                      },
                    ),
                    IconButton(
                      icon: Image.asset('assets/icons/Facebook.png'),
                      iconSize: 40,
                      onPressed: () {
                        // Tambahkan fungsionalitas login Facebook
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
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
}