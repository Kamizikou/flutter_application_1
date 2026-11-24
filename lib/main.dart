import 'package:flutter/material.dart';

void main() {
  runApp(const TasteTroveApp());
}

class TasteTroveApp extends StatelessWidget {
  const TasteTroveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TasteTrove',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        useMaterial3: true,
      ),
      home: const TasteTroveHomeScreen(),
    );
  }
}

class TasteTroveHomeScreen extends StatelessWidget {
  const TasteTroveHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top App Bar: Logo + Search Bar + Messages Icon
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF8E7),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFC59B43)),
                    ),
                    child: const Icon(
                      Icons.restaurant_menu,
                      color: Color(0xFFC59B43),
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, size: 18, color: Colors.black54),
                          SizedBox(width: 8),
                          Text(
                            'Find New Gourmet',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.mail_outline,
                    color: Color(0xFFC59B43),
                    size: 28,
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Section Header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Food to Explore!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See more >',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFC59B43),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Row 1 of Recipe Cards
              Row(
                children: [
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Kinilaw',
                      author: 'Joe Lingeman',
                      bgColor: const Color(0xFFE8D8C8),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Beef Steak',
                      author: 'Neal Santos',
                      bgColor: const Color(0xFFD6E4F0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Row 2 of Recipe Cards
              Row(
                children: [
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Lumpiang Shanghai',
                      author: 'Christopher Testani',
                      bgColor: const Color(0xFFF5E6CC),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Kare-Kare',
                      author: 'Erik Bernstien',
                      bgColor: const Color(0xFFF3D5B5),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Row 3 of Recipe Cards
              Row(
                children: [
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Chicken Adobo',
                      author: 'Maria Do',
                      bgColor: const Color(0xFFE5D1B8),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildRecipeCard(
                      dishName: 'Lechon Kawali',
                      author: 'Rachel Cook',
                      bgColor: const Color(0xFFF0DFC8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar matching Figma
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFE0E0E0))),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.black87),
                Text('Home', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.notifications, color: Colors.black54),
                Text('Notification', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.bookmark, color: Colors.black54),
                Text('Saved', style: TextStyle(fontSize: 11)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, color: Colors.black54),
                Text('Profile', style: TextStyle(fontSize: 11)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildRecipeCard({
    required String dishName,
    required String author,
    required Color bgColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Column(
        children: [
          Container(
            height: 135,
            width: double.infinity,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(13),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.ramen_dining,
                size: 48,
                color: Color(0xFF7A5C38),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  dishName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.account_circle_outlined,
                      size: 16,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.restaurant,
                      size: 15,
                      color: Color(0xFFC59B43),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}