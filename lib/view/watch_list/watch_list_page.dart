import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/view/detail/detail_page.dart';

class WatchListPage extends StatelessWidget {
  const WatchListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Watch List',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF242A32),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: 5,
          padding: const EdgeInsets.symmetric(vertical: 16),
          separatorBuilder: (_, __) => const SizedBox(height: 16),
          itemBuilder: (_, index) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailPage(),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://cdns.klimg.com/resized/476x/p/sang-pemimpi.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Spider-Man: No Way Home',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(height: 6),
                    _renderTile(
                      context,
                      label: '9.5',
                      icon: Icons.star_border,
                      color: const Color(0xFFFF8700),
                    ),
                    _renderTile(
                      context,
                      label: 'Action',
                      icon: Icons.movie_sharp,
                      color: Colors.white,
                    ),
                    _renderTile(
                      context,
                      label: '2019',
                      icon: Icons.calendar_today,
                      color: Colors.white,
                    ),
                    _renderTile(
                      context,
                      label: '139 minutes',
                      icon: Icons.access_time_rounded,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderTile(
    BuildContext context, {
    required Color color,
    required IconData icon,
    required String label,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
