import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final void Function()? onpressed;
  final bool obscuretext;

  const MyTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.onpressed,
    this.obscuretext = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[600]!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              obscureText: obscuretext,
            ),
          ),
          IconButton(
            onPressed: onpressed,
            icon: Icon(icon),
          ),
        ],
      ),
    );
  }
}
