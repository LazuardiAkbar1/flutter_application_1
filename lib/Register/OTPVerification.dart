import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),

            // Komplekita logo at the top
            Center(
              child: Image.asset(
                'assets/images/Logo.png', // Replace with your logo image name
                height: 50,
              ),
            ),

            const SizedBox(height: 30), // Space between logo and OTP image

            // Illustration Image for OTP Verification
            Center(
              child: Image.asset(
                'assets/images/OTP.png', // Replace with your illustration image name
                height: 200,
              ),
            ),

            const SizedBox(
                height: 80), // Increased space before OTP verification text

            // OTP Verification text
            const Text(
              'OTP Verification',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter the verification code we just sent to your email address',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30), // Space before OTP input fields

            // OTP Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0), // Add horizontal padding
                  child: SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: '',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2), // Border color and width
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2), // Border color and width when enabled
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2), // Border color and width when focused
                        ),
                      ),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30), // Space before the button

            // Verify Button
            ElevatedButton(
              onPressed: () {
                // No verification logic, just a UI placeholder
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Verify',
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            // Resend OTP Text
            Row(
              children: [
                const Text("Didn't receive code? "),
                GestureDetector(
                  onTap: () {
                    // No resend logic, just a UI placeholder
                  },
                  child: const Text(
                    'Resend',
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
    );
  }
}
