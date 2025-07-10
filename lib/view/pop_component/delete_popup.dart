import 'package:flutter/material.dart';

void showDeleteAccountPopup(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 40),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 🗑️ Trash Icon
              Icon(
                Icons.delete_outline,
                size: 60,
                color: Color(0xFF9E59FF), // Use your brand color
              ),
              const SizedBox(height: 20),

              const Text(
                'Are you sure you want\nto delete your account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 24),

              // 🚫 No & ✅ Yes Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // No Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF9E59FF)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text(
                      'No',
                      style: TextStyle(color: Color(0xFF9E59FF)),
                    ),
                  ),

                  // Yes Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Handle delete logic here
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}