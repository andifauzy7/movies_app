import 'package:flutter/material.dart';
import 'package:movies_app/view/search/search_page.dart';
import 'package:movies_app/view/widgets/search_bar_field.dart';
import 'package:stroke_text/stroke_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'What do you want to watch?',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                          const SizedBox(height: 16),
                          SearchBarField(
                            enabled: false,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 240,
                      child: ListView.separated(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        separatorBuilder: (_, __) => const SizedBox(width: 16),
                        itemBuilder: (_, index) => Stack(
                          children: [
                            Container(
                              width: 140,
                              height: 210,
                              margin: const EdgeInsets.only(left: 8),
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
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: StrokeText(
                                text: (index + 1).toString(),
                                textStyle: const TextStyle(
                                  fontSize: 72,
                                  color: Color(0xFF242A32),
                                ),
                                strokeColor: const Color(0xFF0296E5),
                                strokeWidth: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SliverAppBar(
                pinned: true,
                floating: true,
                toolbarHeight: 0,
                backgroundColor: Color(0xFF242A32),
                bottom: TabBar(
                  tabAlignment: TabAlignment.start,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Color(0xFF3A3F47),
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Now Playing'),
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Top Rated'),
                    Tab(text: 'Popular'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 18,
                itemBuilder: (_, i) => Container(
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
              ),
              GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 18,
                itemBuilder: (_, i) => Container(
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
              ),
              GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 18,
                itemBuilder: (_, i) => Container(
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
              ),
              GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 18,
                itemBuilder: (_, i) => Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
