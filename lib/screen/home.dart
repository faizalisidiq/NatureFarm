import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF4F2F2),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              children: [
                _buildHeader(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: Column(
                        children: [
                          const SizedBox(height: 52),
                          _buildMenuGrid(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
      style: TabStyle.react,
      items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.person, title: 'Profile'),
      ],
      backgroundColor: const Color(0xFF224D31),
      onTap: (int i) => print('click index=$i'),
      )
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF224D31),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Teks ADMIN dengan Flexible
          Flexible(
            child: Text(
              'ADMIN',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              overflow:
                  TextOverflow
                      .ellipsis, // Tambahkan elipsis jika teks terlalu panjang
            ),
          ),
          // Kolom Logout
          Column(
            children: [
              Image.asset(
                // Ganti Image.network dengan Image.asset
                'assets/images/logout.png',
                width: 40, // Ukuran logo
                height: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 5), // Jarak antara logo dan teks
              Text(
                'LogOut',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuGrid() {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMenuItem(
                  image:
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/14145fc4d2db0608291b113d5f196faa232e3bc8?placeholderIfAbsent=true&apiKey=3c764376f2984bc7be953a1dd3a372b5',
                  label: 'Mart',
                  marginTop: 0,
                ),
                _buildMenuItem(
                  image:
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/94b5d6a9560eed7eac00dc6cd2cad7afdd434984?placeholderIfAbsent=true&apiKey=3c764376f2984bc7be953a1dd3a372b5',
                  label: 'Artikel',
                  marginTop: 0,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMenuItem(
                  image:
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/7c85338c0c7e487aa0dec0c3403a1bb56f69f8bc?placeholderIfAbsent=true&apiKey=3c764376f2984bc7be953a1dd3a372b5',
                  label: 'Info Pangan',
                  marginTop: 0,
                ),
                _buildMenuItem(
                  image:
                      'https://cdn.builder.io/api/v1/image/assets/TEMP/b6d24f56a1ea748e3327647d1bf48b60b19bd48f?placeholderIfAbsent=true&apiKey=3c764376f2984bc7be953a1dd3a372b5',
                  label: 'Hewan',
                  marginTop: 0,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required String image,
    required String label,
    required double marginTop,
    double width = 90,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      width: width,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Alatsi',
              fontSize: 20,
              color: const Color(0xFF224D31),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}