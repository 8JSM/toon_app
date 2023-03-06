import 'package:flutter/material.dart';
import 'package:toon_app/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
      ),
      home: const HomeScreen(),
    );
  }
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: const Color(0xFF181818),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 40),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         const Text(
//                           'Hey, Selena',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 25,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         Text(
//                           'Welcome back',
//                           style: TextStyle(
//                             color: Colors.white.withOpacity(0.7),
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Text(
//                   'Total Balance',
//                   style: TextStyle(
//                     fontSize: 25,
//                     color: Colors.white.withOpacity(0.7),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   '\$5 194 482',
//                   style: TextStyle(
//                     fontSize: 45,
//                     fontWeight: FontWeight.w800,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                     Button(
//                         text: 'Transfer',
//                         bgColor: Color(0xFFF1B33B),
//                         textColor: Colors.black),
//                     Button(
//                         text: 'Request',
//                         bgColor: Color(0xFF1F2123),
//                         textColor: Colors.white)
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     const Text(
//                       'Wallets',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       'View All',
//                       style: TextStyle(
//                         color: Colors.white.withOpacity(0.7),
//                         fontSize: 25,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const CurrencyCard(
//                   name: 'Euro',
//                   amount: '6 428',
//                   code: 'EUR',
//                   icon: Icons.euro_rounded,
//                   isInverted: false,
//                 ),
//                 Transform.translate(
//                   offset: const Offset(0, -20),
//                   child: const CurrencyCard(
//                     name: 'Bitcoin',
//                     amount: '9 785',
//                     code: 'BTC',
//                     icon: Icons.currency_bitcoin,
//                     isInverted: true,
//                   ),
//                 ),
//                 Transform.translate(
//                   offset: const Offset(0, -40),
//                   child: const CurrencyCard(
//                     name: 'Dollar',
//                     amount: '428',
//                     code: 'USD',
//                     icon: Icons.attach_money_outlined,
//                     isInverted: false,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
