import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String price;

  const ProductDetail({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),

      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Column(
        children: [
          // Hero image
          Hero(
            tag: title,
            child: Container(
              height: 250,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.image,
                size: 150,
                color: Colors.grey,
              ),
            ),
          ),

          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              color: Colors.green.shade700,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Text(
                "Deskripsi Produk:\n\nProduk ini adalah contoh untuk UI marketplace sekolah.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        height: 90,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            padding: const EdgeInsets.symmetric(vertical: 18),
          ),
          onPressed: () {},
          child: const Text(
            "Tambah ke Keranjang",
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
