
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sfera_test_task/home/Home.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<AuthPage> {
  List bottomNavTiles = ['Home', 'Tour', 'Courses', 'Artictles', 'Blog'];
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  late String _login;
  late String _email;
  late String _password;
  late bool Showlogin = true;
  // final AuthService _authService = AuthService();

  Widget _foto() {
    return Expanded(
      flex: 1,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sfera.png'),
                //https://wallpaperaccess.com/full/84248.png
                fit: BoxFit.cover,
                opacity: .55,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(109, 33, 149, 243),
                  Color.fromARGB(0, 68, 137, 255),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row(
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     const Icon(
                //       FontAwesomeIcons.squarespace,
                //       size: 25.0,
                //       color: Colors.white,
                //     ),
                //     const SizedBox(
                //       width: 8,
                //     ),
                //     Text(
                //       'S F E R A',
                //       style: GoogleFonts.poppins(
                //           color: Colors.white, fontSize: 20),
                //     ),
                //   ],
                // ),
                // Container(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 4.0, vertical: 6.0),
                //   decoration: BoxDecoration(
                //     boxShadow: const [
                //       BoxShadow(
                //           offset: Offset(3, 7),
                //           blurRadius: 5,
                //           color: Color.fromARGB(255, 46, 46, 46)),
                //     ],
                //     color: Colors.black87,
                //     borderRadius: BorderRadius.circular(30),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       const CircleAvatar(
                //         backgroundColor: Color.fromARGB(255, 46, 46, 46),
                //         maxRadius: 15,
                //         child: Icon(
                //           Icons.play_arrow,
                //           color: Colors.white,
                //           size: 15.0,
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 8,
                //       ),
                //       Text(
                //         'Watch Demo',
                //         style: GoogleFonts.poppins(
                //           color: Colors.white,
                //           fontSize: 12,
                //           fontWeight: FontWeight.w600,
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 8,
                //       ),
                //     ],
                //   ),
                // ),
                // Row(
                //   children: bottomNavTiles.map((e) => Text(e)).toList(),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _googleButton() {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Text(
          'Sign up with:',
          style: GoogleFonts.poppins(color: Colors.white),
        ),
        const SizedBox(
          height: 10,
        ),
        CircleAvatar(
          backgroundColor: Colors.red,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.google),
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  void _Loghome() async {
    
    _login = _loginController.text;
    _password = _passwordController.text;
    _email = _emailController.text;

    // if (_email.isEmpty || _password.isEmpty) return;

    // User user = await _authService.signInWithEmailAndPassword(
    //     _email.trim(), _password.trim());
    // if (user == null) {
    //   Fluttertoast.showToast(
    //     msg: "Incorrect or incorrect login or password!",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
    // } else {
      _emailController.clear();
      _loginController.clear();
      _passwordController.clear();
    // }
     Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => homeScreen()));
  }

  void _Reghome() async {
    
    _login = _loginController.text;
    _password = _passwordController.text;
    _email = _emailController.text;

    // if (_email.isEmpty || _password.isEmpty) return;

    // User user = await _authService.registerWithEmailAndPassword(
    //     _email.trim(), _password.trim());
    // if (user == null) {
    //   Fluttertoast.showToast(
    //     msg: "Incorrect or incorrect login or password!",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );
    // } else {
      _emailController.clear();
      _loginController.clear();
      _passwordController.clear();
    // }
     Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => homeScreen()));
  }

  Widget _singIn_Up() {
    return Column(
      children: [
        if (Showlogin == true)
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    _Loghome();
                  },
                  child: const Text(
                    'Sign up',
                  ),
                ),
              ),
            ],
          ),
        if (Showlogin == true)
          const SizedBox(
            height: 16,
          ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Showlogin
                      ? setState(() {
                          Showlogin = false;
                        })
                      : _Reghome();
                },
                child: const Text('Sign in'),
              ),
            ),
          ],
        ),
        if (Showlogin == false)
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 10),
            child: GestureDetector(
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              onTap: () {
                setState(() {
                  Showlogin = true;
                });
              },
            ),
          ),
      ],
    );
  }

  Widget _field(
      Icon icon, String text, bool obscure, TextEditingController controller) {
    return Column(
      children: [
        TextField(
          obscureText: obscure,
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: icon,
            hintText: text,
            hintStyle:
                const TextStyle(color: Color.fromARGB(127, 255, 255, 255)),
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            fillColor: const Color.fromARGB(31, 255, 255, 255),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }

  Widget _text() {
    return Showlogin
        ? Text(
            'Authentication',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 18.0,
            ),
          )
        : Text(
            'Registration',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 18.0,
            ),
          );
  }

  Widget _form() {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        color: const Color.fromARGB(255, 0, 7, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _text(),
            const SizedBox(
              height: 16,
            ),
            if (Showlogin == false)
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1),
                  child: _field(
                    Icon(
                      Icons.email,
                      size: 15,
                      color: Colors.white12,
                    ),
                    'Email',
                    false,
                    _emailController,
                  )),
            const SizedBox(
              height: 8,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: _field(
                  Icon(
                    FontAwesomeIcons.at,
                    size: 15,
                    color: Colors.white12,
                  ),
                  'Login',
                  false,
                  _loginController,
                )),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: _field(
                Icon(
                  FontAwesomeIcons.lock,
                  size: 15,
                  color: Colors.white12,
                ),
                'Password',
                true,
                _passwordController,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            _singIn_Up(),
            _googleButton()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          _foto(),
          _form(),
        ],
      ),
    );
  }
}
