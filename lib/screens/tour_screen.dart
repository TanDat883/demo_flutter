import 'package:flutter/material.dart';

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "1-Dinh Độc Lập",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          _buildActionIcon(Icons.language, onTap: _showLanguageDialog),
          const SizedBox(width: 10),
          _buildActionIcon(Icons.qr_code_2),
          const SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _buildTourCard(
            "0 - Dinh Độc Lập",
            "assets/images/background.jpg", // Using background since we don't have the specific exhibition building image
          ),
          const SizedBox(height: 12),
          _buildTourCard(
            "1 - Nhà Triển Lãm",
            "assets/images/background.jpg",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF7A1D1A), // A slightly darker red for bottom nav if needed, or stick to 0xFFB71C1C
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Danh sách',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard),
            label: 'Bàn phím',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Bản đồ',
          ),
        ],
      ),
    );
  }

  Widget _buildActionIcon(IconData icon, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 32,
        height: 32,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: const Color(0xFFB71C1C),
          size: 20,
        ),
      ),
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          insetPadding: const EdgeInsets.symmetric(horizontal: 60, vertical: 120),
          backgroundColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "Chọn ngôn ngữ", // Translating 'Select language'
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildLanguageItem('🇨🇳', 'Chinese'),
                      _buildLanguageItem('🇬🇧', 'English'),
                      _buildLanguageItem('🇫🇷', 'French'),
                      _buildLanguageItem('🇩🇪', 'German'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                      _buildLanguageItem('🇯🇵', 'Japanese'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  Widget _buildLanguageItem(String flagEmoji, String language) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
              alignment: Alignment.center,
              child: Text(
                flagEmoji,
                style: const TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              language,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTourCard(String title, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            color: const Color(0xFFB71C1C),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
