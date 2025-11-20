import 'package:flutter/material.dart';
import 'package:school_marketplace/home/product_detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Marketplace Sekolah",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔍 SEARCH BAR
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 46,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 10),
                  Text("Cari produk...", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🧩 KATEGORI
            const Text(
              "Kategori",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  categoryItem(Icons.fastfood, "Makanan"),
                  categoryItem(Icons.book, "Buku"),
                  categoryItem(Icons.brush, "Kriya"),
                  categoryItem(Icons.computer, "Elektronik"),
                  categoryItem(Icons.shopping_bag, "Lainnya"),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // 🛒 PRODUK TERBARU
            const Text(
              "Produk Terbaru",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 14),

            // 🟩 GRID PRODUK
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.78,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return productCard(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // 🧩 WIDGET ITEM KATEGORI
  Widget categoryItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black.withOpacity(0.06),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: Colors.purple),
          const SizedBox(height: 6),
          Text(title, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }

  // 🛒 CARD PRODUK
 Widget productCard(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ProductDetail(
            title: "Heroin 2ML",
            price: "Rp 100.000.000",
          ),
        ),
      );
    },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.image, size: 70, color: Colors.grey[600]),
              const SizedBox(height: 12),
              const Text(
                "Heroin 2ML",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "Rp 100.000.000",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.green.shade700,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    );
  }
}
