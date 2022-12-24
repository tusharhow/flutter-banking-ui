import 'package:flutter/material.dart';
import '../constants.dart';


class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: Column(
        children: [
          const SizedBox(height: kDefaultPadding * 3),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.08,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 8),
                    Container(
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: const[
                           SizedBox(width: 6),
                           Icon(Icons.keyboard_arrow_left_rounded),
                           SizedBox(width: 6),
                           Text('Go Back',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  const  Spacer(),
                 const   Text(
                      'Send Money',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'Send to',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     SizedBox(height: 5),
                    Text(
                      'Tushar Mahmud',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
            const    Spacer(),
                Row(
                  children:const [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://i.pravatar.cc/300'),
                    )
                  ],
                ),
              ],
            ),
          ),
      const    Divider(
            color: Colors.black12,
            thickness: 1,
            height: kDefaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'Master Card',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     SizedBox(height: 5),
                    Text(
                      '**** **** **** 1234',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration:const BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.credit_card),
                    )
                  ],
                ),
              ],
            ),
          ),
       const   Divider(
            color: Colors.black12,
            thickness: 1,
            height: kDefaultPadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text(
                      'Enter an Amount',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     SizedBox(height: 5),
                    Text(
                      '\$2,340',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
             const   Spacer(),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration:const BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child:const Center(
                        child: Text(
                          'Max',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: kDefaultPadding / 1.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        const  Divider(
            color: Colors.black12,
            thickness: 1,
            height: kDefaultPadding,
          ),
          const SizedBox(height: kDefaultPadding * 3),
          GestureDetector(
            onTap: () {},
            child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  border: Border.all(color: Colors.black),
                  borderRadius:const BorderRadius.all(Radius.circular(30)),
                  boxShadow:const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      offset:  Offset(3, 2),
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Send Now',
                    style: TextStyle(
                      fontSize: kDefaultPadding + 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
