import 'package:flutter/material.dart';

class MartAppBar extends StatelessWidget {
  const MartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 105,
      decoration: const BoxDecoration(
        color: Color(0xFF224D31),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(width: 42),
          const Text(
            'Mart',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 27,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}