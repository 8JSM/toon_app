import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon;
  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isInverted ? Colors.white : const Color(0xFF1F2123),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? Colors.black : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white.withOpacity(0.7),
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(10, 15),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
