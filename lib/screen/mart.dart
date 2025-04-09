import 'package:flutter/material.dart';
import '../widgets/mart_top_bar.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_bar.dart';

class MartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F2F2),
      body: Stack(
        children: [
          Column(
            children: [
              const MartAppBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.54,
                    children: const [
                      ProductCard(
                        image: "https://cdn.builder.io/api/v1/image/assets/TEMP/23d9920caef62a712ba19687a6ba058b973b3c8d",
                        name: "Kambing Kacang",
                        price: "Rp 1.399.000",
                        weight: "Per ekor (20-25kg)",
                      ),
                      ProductCard(
                        image: "https://cdn.builder.io/api/v1/image/assets/TEMP/5aae4240f204f91a7bef7883c9a013942b3906ad",
                        name: "Kambing Etawa",
                        price: "Rp 5.000.000",
                        weight: "Per ekor (30-50 kg)",
                      ),
                      ProductCard(
                        image: "https://cdn.builder.io/api/v1/image/assets/TEMP/f961ef7976dbf6eb2f53f0714b9651a68d847875",
                        name: "Kambing Jawarandu",
                        price: "Rp 1.700.000",
                        weight: "Per ekor (25-40 kg)",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 120,
            right: 20,
            child: AddButton(),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: BottomNavBar(),
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF224D31),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}