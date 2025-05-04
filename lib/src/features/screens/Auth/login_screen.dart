import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/core/widgets/column_spacer.dart';

// Import the necessary Firebase and Google Sign-In packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/src/features/app/router/router.gr.dart';
import 'package:google_sign_in/google_sign_in.dart';

// You'll likely need a HomeScreen to navigate to after successful login
// import 'home_screen.dart'; // Make sure to import your home screen

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // Add an async function to handle the Google Sign-In logic
  Future<void> _handleGoogleSignIn(BuildContext context) async {
    try {
      // Create a new instance of GoogleSignIn
      GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // Handle the case where the user cancelled
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Google Sign-In cancelled')),
        );
        return;
      }

      // Get the authentication details from the Google user
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential for Firebase with the Google ID token and access token
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);

      // If successful, userCredential.user will not be null.
      // You can now navigate the user to the next screen (e.g., HomeScreen)
      if (userCredential.user != null) {
        print('Signed in as: ${userCredential.user!.displayName}');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Successfully signed in as ${userCredential.user!.displayName}!',
            ),
          ),
        );
        context.router.replace(const BottomNavBar());
      }
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase Authentication errors
      print(
        'Firebase Auth Error during Google Sign-In: ${e.code} - ${e.message}',
      );
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Sign-in failed: ${e.message}')));
      // You might want to show a more user-friendly error message
    } catch (e) {
      // Handle other potential errors (e.g., network issues)
      print('Error during Google Sign-In: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An unexpected error occurred during sign-in.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C58D), // green gradient base color
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Using a placeholder for your logo image
                  // Make sure 'assets/jpg/logo.jpg' exists and is listed in pubspec.yaml
                  Image.asset('assets/jpg/logo.jpg', height: 40),
                  const Icon(Icons.notifications_none, color: Colors.white),
                ],
              ),
            ),

            Expanded(
              child: Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 40,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      ColumnSpacer(1),
                      const Text(
                        'Sign in to manage your greenhouse and\nmonitor plant growth',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),
                      ColumnSpacer(3),
                      // Using a placeholder for your logo image
                      Image.asset('assets/jpg/logo.jpg', height: 140),
                      ColumnSpacer(3),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 20,
                          ),
                        ),
                        onPressed: () {
                          // Call the asynchronous sign-in function here
                          _handleGoogleSignIn(context);
                        },
                        icon: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png', // Make sure this URL is stable or use a local asset
                          fit: BoxFit.cover,
                          height: 20,
                        ),
                        label: const Text('Continue with Google'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
