//Payment Page UI
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PaymentsPage extends StatefulWidget {
  const PaymentsPage({super.key});
  @override
  State<PaymentsPage> createState() => _PaymentsPageState();
}

class _PaymentsPageState extends State<PaymentsPage> {
  int _selectedRadio = 0;
  void _handleRadioChange(int? value) {
    if (value != null) {
      setState(() {
        _selectedRadio = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60.0),
              Card(
                color: Colors.orange,
                child: Column(
                  children: [
                    // Top Row [Orange Card]
                    Row(
                      children: [
                        CupertinoButton(
                          child: const Icon(CupertinoIcons.back),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        const Spacer(),
                        CupertinoButton(
                          child: const Icon(CupertinoIcons.question_circle),
                          onPressed: () {
                            // Handle the question mark button
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Accept Payments from your',
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'customers with 40+ digital',
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                'payment options.',
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Image.asset(
                            'lib/components/receipt.png',
                            height: 60,
                            width: 60,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              //Text below [Orange Card]
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Accept Payments from your customers with 40+ digital payment options.',
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 20.0),
              // Radio Buttons Selection Field
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: CupertinoRadio<int>(
                              value: 0,
                              groupValue: _selectedRadio,
                              onChanged: (value) {
                                _handleRadioChange(value);
                              },
                              activeColor: Colors.orange,
                            ),
                          ),
                          const Text(
                            'UPI',
                            style:
                                TextStyle(fontSize: 18), // Increased text size
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: CupertinoRadio<int>(
                              value: 1,
                              groupValue: _selectedRadio,
                              onChanged: (value) {
                                _handleRadioChange(value);
                              },
                              activeColor: Colors.orange,
                            ),
                          ),
                          const Text(
                            'Bank Account',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // UPI Radio Button Selection
              if (_selectedRadio == 0)
                Column(
                  children: [
                    const SizedBox(height: 10.0),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Card(
                          color: Colors.green,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'RECOMMENDED',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter UPI ID*',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Account Holder Name *',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              // Bank Account Radio Button Selection
              if (_selectedRadio == 1)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter Account Number*',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter IFSC *',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 10.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xffE8ECF4),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Account Holder Name*',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              // Payment Policy Button
              Center(
                child: GestureDetector(
                  onTap: () {
                    // on Tap Function
                  },
                  child: Card(
                    color: Colors.orange,
                    child: Container(
                      padding: const EdgeInsets.all(18.0),
                      child: const Text(
                        'Payment Policy',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80.0),
              // Check Box Field
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {
                        // Handle checkbox
                      },
                    ),
                    const Text(
                      'I accept all',
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      ' Terms and Conditions',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ),
              // Verify Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CupertinoButton(
                        child: const Text(
                          'VERIFY',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                        onPressed: () {
                          // Handle Verify
                        },
                      ),
                      CupertinoButton(
                        child: const Icon(
                          CupertinoIcons.right_chevron,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          // Handle chevron
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
