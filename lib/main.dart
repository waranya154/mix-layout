import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <String>[
      "assets/images/aummm13.jpg",
      "assets/images/aummm14.jpg",
      "assets/images/aummm20.png",
      "assets/images/aummm21.png",
      "assets/images/aummm22.png",
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              floating: true,
              pinned: true,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF0D47A1), // น้ำเงินเข้ม
                      Color(0xFF1976D2), // น้ำเงินกลาง
                      Color(0xFF42A5F5), // น้ำเงินอ่อน
                    ],
                  ),
                ),
                child: const FlexibleSpaceBar(
                  title: Text(
                    'AUMMY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                  centerTitle: true,
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Section
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF0D47A1).withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.photo_library_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "ชีวิตของ AUMMY ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    // GridView Section (สีพื้นหลังของรูปยังเหมือนเดิม)
                    SizedBox(
                      height: 400,
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: imageList.length,
                        itemBuilder: (context, index) {
                          return Hero(
                            tag: 'image_$index',
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    blurRadius: 15,
                                    offset: const Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset(
                                      imageList[index],
                                      fit: BoxFit.cover,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Colors.transparent,
                                            Colors.black.withOpacity(0.5),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 12,
                                      right: 12,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.9),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Text(
                                          '${index + 1}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 30),

                    // List Header (เปลี่ยนสี Gradient เป็นน้ำเงิน)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF42A5F5),
                            Color(0xFF0D47A1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF42A5F5).withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.list_alt_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(width: 15),
                          Text(
                            "รายชื่อทั้งหมด",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // ListView Section (ปรับสีพื้นหลังเป็นสีดำ)
                    SizedBox(
                      height: 500,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300 + (index * 100)),
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey[900], // สีดำเข้ม
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.8),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.all(16),
                              leading: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.blue.shade700,
                                      Colors.blue.shade300,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.5),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              title: Text(
                                "รายการที่ ${index + 1}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "รายละเอียดเพิ่มเติมของรายการที่ ${index + 1}",
                                  style: TextStyle(
                                    color: Colors.blue[200],
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              trailing: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.blue[200],
                                  size: 18,
                                ),
                              ),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('คลิกรายการที่ ${index + 1}'),
                                    backgroundColor: Colors.blue.shade700,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
