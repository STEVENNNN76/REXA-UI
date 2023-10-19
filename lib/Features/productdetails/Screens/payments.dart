import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MaterialApp(
      home: PaymentsPage(),
    ));

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Payments'),
        leading: CupertinoButton(
          child: const Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        trailing: CupertinoButton(
          child: const Icon(CupertinoIcons.question),
          onPressed: () {
            // Handle question mark button action.
          },
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Accept Payments from your customers with 40+ digital payment options.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Please provide your bank details where you want to receive online payments:',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {
                    // Handle radio button selection (UPI).
                  },
                ),
                const Text('UPI'),
                Radio(
                  value: 1,
                  groupValue: 0,
                  onChanged: (value) {
                    // Handle radio button selection (Bank account).
                  },
                ),
                const Text('Bank Account'),
              ],
            ),
            const SizedBox(height: 50.0),
            CupertinoButton(
              child: const Text('Payment Policy'),
              onPressed: () {
                // Handle Payment Policy button action.
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        // Handle checkbox selection.
                      },
                    ),
                    const Text('I accept all',
                        style: TextStyle(color: Colors.black)),
                  ],
                ),
                const Text(
                  'Terms and Conditions',
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CupertinoButton(
                  child: const Text('Verify'),
                  onPressed: () {
                    // Handle Verify button action.
                  },
                ),
                CupertinoButton(
                  child: const Icon(CupertinoIcons.right_chevron),
                  onPressed: () {
                    // Handle right chevron button action.
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
