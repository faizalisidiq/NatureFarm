import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String weight;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(34, 77, 49, 0.5),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.network(
              image,
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Alatsi',
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style: const TextStyle(
              color: Color(0xFF224D31),
              fontFamily: 'Alatsi',
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 0),
          Text(
            weight,
            style: const TextStyle(
              color: Color(0xFF224D31),
              fontFamily: 'Alatsi',
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: const Color.fromARGB(255, 208, 206, 206), // Warna latar belakang
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4), // Tambahkan padding
            child: Text(
              'Pesan Sekarang',
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Pusatkan teks
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end, // Pindahkan ikon ke pojok kanan
            children: [
              IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Color(0xFF0099FF),
                  size: 16,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero, // Hilangkan padding bawaan
                constraints: const BoxConstraints(), // Hilangkan batasan bawaan
              ),
              const SizedBox(width: 4), // Atur jarak antar ikon
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Color(0xFFFF0000),
                  size: 16,
                ),
                onPressed: () {},
                padding: EdgeInsets.zero, // Hilangkan padding bawaan
                constraints: const BoxConstraints(), // Hilangkan batasan bawaan
              ),
            ],
          ),
        ],
      ),
    );
  }
}