import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/view/search/search_page.dart';
import 'package:movies_app/view/widgets/search_bar_field.dart';
import 'package:stroke_text/stroke_text.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_outline,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF242A32),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 210,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://ntvb.tmsimg.com/assets/p17843098_v_h8_as.jpg?w=1280&h=720',
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                                color: const Color(0xFF252836).withOpacity(0.68),
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.star_border,
                                  color: Color(0xFFFF8700),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '9.5',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: const Color(0xFFFF8700),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              const SizedBox(height: 210 - 75),
                              Row(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          'https://cougarchronicle.org/wp-content/uploads/2023/06/JOHN_WICK_4-600x900.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Text(
                                        'John Wick: Chapter 4',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 24),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.calendar_today,
                                      color: Color(0xFF92929D),
                                    ),
                                    Text(
                                      '2021',
                                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        color: const Color(0xFF92929D),
                                      ),
                                    ),
                                    const VerticalDivider(),
                                    const Icon(
                                      Icons.access_time_rounded,
                                      color: Color(0xFF92929D),
                                    ),
                                    Text(
                                      '148 Minutes',
                                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        color: const Color(0xFF92929D),
                                      ),
                                    ),
                                    const VerticalDivider(),
                                    const Icon(
                                      Icons.movie_sharp,
                                      color: Color(0xFF92929D),
                                    ),
                                    Text(
                                      'Action',
                                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        color: const Color(0xFF92929D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                            ],
                          ),
                        ),
                      ],
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
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Color(0xFF3A3F47),
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: 'About'),
                    Tab(text: 'Review'),
                    Tab(text: 'Casts'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  'From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xFF242A32),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_outline,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF242A32),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 210,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://ntvb.tmsimg.com/assets/p17843098_v_h8_as.jpg?w=1280&h=720',
                ),
              ),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                  color: const Color(0xFF252836).withOpacity(0.68),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.star_border,
                    color: Color(0xFFFF8700),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '9.5',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: const Color(0xFFFF8700),
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 210 - 75),
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://cougarchronicle.org/wp-content/uploads/2023/06/JOHN_WICK_4-600x900.jpg',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          'John Wick: Chapter 4',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        color: Color(0xFF92929D),
                      ),
                      Text(
                        '2021',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: const Color(0xFF92929D),
                            ),
                      ),
                      const VerticalDivider(),
                      const Icon(
                        Icons.access_time_rounded,
                        color: Color(0xFF92929D),
                      ),
                      Text(
                        '148 Minutes',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: const Color(0xFF92929D),
                            ),
                      ),
                      const VerticalDivider(),
                      const Icon(
                        Icons.movie_sharp,
                        color: Color(0xFF92929D),
                      ),
                      Text(
                        'Action',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: const Color(0xFF92929D),
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
