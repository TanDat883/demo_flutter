import 'package:flutter/material.dart';
import 'tour_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Scrollable Content
          CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250.0,
                pinned: true,
                backgroundColor: Colors.white,
                elevation: 2,
                iconTheme: const IconThemeData(color: Colors.black87),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Text(
                      "Dinh Độc Lập",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  background: Image.asset(
                    'assets/images/background.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 120),
                  child: const Text(
                    "Dinh Độc Lập không chỉ là một công trình thông thường, mà là một bản hùng ca được dệt nên bằng gạch và thép ngay giữa lòng Sài Gòn. Hãy quên đi những gì bạn từng đọc trong sách vở, và thử tưởng tượng bạn đang bước vào một mê cung của quyền lực, nơi định đoạt vận mệnh lịch sử. Từ cánh cổng sắt đến những hành lang tĩnh lặng, dinh thự này toát lên một bầu không khí uy nghiêm và bí ẩn. Mỗi căn phòng, mỗi hiện vật đều kể lại một câu chuyện riêng, từ chiếc xe tăng húc đổ cổng chính vào ngày 30 tháng 4 năm 1975 cho đến mạng lưới hầm trú ẩn bí mật kiên cố dưới lòng đất. Nơi đây khơi gợi lại những thời khắc hào hùng, những giây phút nín thở, giúp ta cảm nhận sức nặng của thời gian và ý nghĩa thiêng liêng của hai chữ \"Độc Lập\". Khi đứng trên ban công và phóng tầm mắt ra bãi cỏ rợp bóng mát, bạn sẽ cảm nhận được linh hồn kiêu hãnh của Sài Gòn đang tuôn chảy cùng dòng thác lịch sử...",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
          
          // Floating Action Button
          Positioned(
            bottom: 80,
            right: 20,
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                color: const Color(0xFF9E1B22), // Matching red color from screenshot
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.map, color: Colors.white, size: 26),
                onPressed: () {},
              ),
            ),
          ),
          
          // Bottom Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0.0),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF9E1B22),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.zero,
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.download, color: Colors.white, size: 22),
                            const SizedBox(width: 8),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Tiếp tục", style: TextStyle(color: Colors.white, fontSize: 13, height: 1.2)),
                                Text("tải xuống", style: TextStyle(color: Colors.white, fontSize: 13, height: 1.2)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TourScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF9E1B22),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.zero,
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.play_circle_outline, color: Colors.white, size: 24),
                            SizedBox(width: 8),
                            Text("Bắt đầu tour", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}