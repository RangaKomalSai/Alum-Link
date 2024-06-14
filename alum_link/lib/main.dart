import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => Scaffold(
              appBar: AppBar(
                title: const Text('Home'),
              ),
              body: const Center(
                child: Text('Welcome to Alum Link!'),
              ),
            ),
      },
      debugShowCheckedModeBanner: false,
      title: 'Alum Link',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 0),
              child: SizedBox(
                height: height * 0.4,
                child: SvgPicture.asset('assets/icons/rafiki.svg'),
              ),
            ),
          ),
          Center(
            child: Text('Create account',
                style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87)),
          ),
          Expanded(child: PaginatedSection()),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black87)),
                TextButton(
                  onPressed: () {},
                  child: Text(' Log In',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, bottom: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: Text(
                'Your Full Name',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  filled: true,
                  fillColor: Colors.grey[400],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  hintText: 'Manish Singh',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, bottom: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: Text(
                'Email',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  filled: true,
                  fillColor: Colors.grey[400],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  hintText: 'manish@example.com',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class Password extends StatelessWidget {
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, bottom: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: Text(
                'Password',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: SizedBox(
              // color: Colors.grey,
              width: MediaQuery.of(context).size.width - 100,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 20, right: 20),
                    filled: true,
                    fillColor: Colors.grey[400],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 2),
                    ),
                    hintText: '',
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25, bottom: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              child: Text(
                'Repeat Password',
                style: GoogleFonts.montserrat(
                    fontSize: 18, fontWeight: FontWeight.w500),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          SizedBox(
            // color: Colors.grey,
            width: MediaQuery.of(context).size.width - 100,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 20),
                  filled: true,
                  fillColor: Colors.grey[400],
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Colors.grey.shade400, width: 2),
                  ),
                  hintText: '',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class PaginatedSection extends StatefulWidget {
  @override
  _PaginatedSectionState createState() => _PaginatedSectionState();
}

class _PaginatedSectionState extends State<PaginatedSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      setState(() {
        _currentPage++;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // appBar: AppBar(
      //   title: Text('Section Pagination'),
      // ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50, top: 20),
            child: LinearProgressIndicator(
              value: (_currentPage + 1) / 3.0,
              backgroundColor: Colors.grey[300],
              valueColor:
                  const AlwaysStoppedAnimation<Color>(Colors.deepOrange),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: const [
                Name(),
                Email(),
                Password(),
              ],
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  // Adjust the width as necessary
                  child: ElevatedButton(
                    onPressed: _currentPage > 0
                        ? _previousPage
                        : null, // Disable if on the first page
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.grey.shade400), // Adjust color as needed
                    ),
                    child: Text('Back',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87)),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width -
                      200, // Adjust based on your layout
                  child: ElevatedButton(
                    onPressed: (_currentPage == 2)
                        ? () {
                            Navigator.pushNamed(context, '/home');
                          }
                        : _nextPage,
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.deepOrange.shade400),
                      elevation: WidgetStateProperty.all<double>(0),
                    ),
                    child: Text('Continue',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(top: 20.0),
          //   child: SizedBox(
          //     height: 40,
          //     width: MediaQuery.of(context).size.width -
          //         100, // Makes the button expand to match the width of the text fields
          //     child: ElevatedButton(
          //       onPressed: (_currentPage == 2)
          //           ? () {
          //               Navigator.pushNamed(context, '/home');
          //             }
          //           : _nextPage,
          //       style: ButtonStyle(
          //         backgroundColor: WidgetStateProperty.all<Color>(
          //             Colors.deepOrange.shade400), // Sets the background color
          //         elevation:
          //             WidgetStateProperty.all<double>(0), // Removes elevation
          //       ),
          //       child: Text('Continue',
          //           style: GoogleFonts.montserrat(
          //               fontSize: 18,
          //               fontWeight: FontWeight.w500,
          //               color: Colors.white)),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
