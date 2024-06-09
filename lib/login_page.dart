import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late Animation<Offset> _logoAnimationOffset;
  late AnimationController _textAnimationController;
  late Animation<double> _textAnimationOpacity;

  @override
  void initState() {
    super.initState();
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _logoAnimationOffset = Tween<Offset>(
      begin: const Offset(0, -2.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _logoAnimationController,
        curve: Curves.bounceOut,
      ),
    );

    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _textAnimationOpacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _textAnimationController,
        curve: Curves.easeIn,
      ),
    );

    _logoAnimationController.forward();
    _textAnimationController.forward();
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    _textAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(), // Tambahkan Spacer di atas logo
              SlideTransition(
                position: _logoAnimationOffset,
                child: Image.asset(
                  'assets/images/login_logo.png', // Ganti dengan path gambar Anda
                  width: 250, // Sesuaikan lebar gambar
                  height: 250, // Sesuaikan tinggi gambar
                ),
              ),
              const SizedBox(height: 20),
              FadeTransition(
                opacity: _textAnimationOpacity,
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  prefixIcon: const Icon(Icons.person,
                      color: Colors.blue), // Mengatur warna ikon
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock,
                      color: Colors.blue), // Mengatur warna ikon
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius:
                        BorderRadius.circular(10.0), // Mengatur sudut bulat
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // Tindakan yang akan diambil saat tombol Forget Password ditekan
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(
                              0.7)), // Mengatur warna teks dengan opasitas
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                      Colors.blue), // Mengatur warna tombol
                  minimumSize: WidgetStateProperty.all<Size>(
                      const Size(double.infinity, 50)), // Mengatur lebar tombol
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white), // Mengatur warna teks
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Or automatically join with'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.facebook,
                      size: 30,
                      color:
                          Color(0xFF285094)), // Ganti dengan ikon Facebook Anda
                  SizedBox(width: 20),
                  Icon(Icons.g_mobiledata,
                      size: 30,
                      color:
                          Color(0xFF285094)), // Ganti dengan ikon Google Anda
                  SizedBox(width: 10),
                ],
              ),
              const Spacer(), // Tambahkan Spacer di bawah tombol Login
            ],
          ),
        ),
      ),
    );
  }
}
