
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/hng_logo.jpg',
            width: 150,
          ),
          const SizedBox(height: 20), // Added spacing for better UI
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black, // Ensure visibility
              ),
              children: [
                const TextSpan(
                  text: 'To check project details, ',
                  style: TextStyle(
                    color: Colors.black,
                  ) // Normal text
                ),
                TextSpan(
                  text: 'Click here',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      Uri url = Uri.parse("https://github.com/techie-dan/hng_first_app");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url, mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Cannot load URL';
                      }
                    },
                ),
              ],
            ),
          ),
         const SizedBox(height: 10),
           RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black, // Ensure visibility
              ),
              children: [
                const TextSpan(
                  text: 'To apply for a flutter development role ',
                  style: TextStyle(
                    color: Colors.black,
                  ) // Normal text
                ),
                TextSpan(
                  text: 'Click here',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      Uri url = Uri.parse("https://hng.tech/hire/flutter-developers");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url, mode: LaunchMode.externalApplication);
                      } else {
                        throw 'Cannot load URL';
                      }
                    },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
