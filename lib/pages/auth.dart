import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<AuthPage> {
  List bottomNavTiles = ['Home', 'Tour', 'Courses', 'Artictles', 'Blog'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        children: [
          Expanded(
            flex: 2,
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
                  padding: const EdgeInsets.only(
                      left: 50.0, right: 50.0, bottom: 100),
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
                      Text(
                        'We will not change the world,\nWe will rewrite the code.',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
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
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              color: const Color.fromARGB(255, 0, 7, 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Authentication',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        FontAwesomeIcons.at,
                        size: 15,
                        color: Colors.white12,
                      ),
                      hintText: 'Login',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(127, 255, 255, 255)),
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
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
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        FontAwesomeIcons.lock,
                        size: 15,
                        color: Colors.white12,
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(127, 255, 255, 255)),
                      filled: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
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
                          onPressed: () {},
                          child: const Text('Sign in'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(16),
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Sign up',
                          ),
                        ),
                      ),
                    ],
                  ),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
