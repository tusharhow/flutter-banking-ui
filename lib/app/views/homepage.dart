import 'package:flutter/material.dart';
import 'package:flutter_banking_ui/app/constants.dart';
import 'send_money_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: kDefaultPadding + 10),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.business),
                        label: 'Business',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school),
                        label: 'School',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.gas_meter),
                        label: 'Gas',
                      ),
                    ]),
              ),
            ),
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width / 1.08,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.white,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: kDefaultPadding),
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      text: '\$1,000.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '00',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Master Card',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 15,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text.rich(
                    TextSpan(
                      text: '\$64,245.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: '00',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                offset: Offset(3, 2),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Card info',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                      const SizedBox(width: kDefaultPadding),
                      Container(
                          height: 45,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xffF7DF37),
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                offset: Offset(3, 2),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Add cash',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding + 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SendMoneyScreen()));
                    },
                    child: Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width / 1.3,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 1,
                              offset: Offset(3, 2),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Send or Pay',
                            style: TextStyle(
                              fontSize: kDefaultPadding + 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Received',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+\$89,235',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Savings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+\$29,235',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Invest',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+\$35,235',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Recent spendings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
