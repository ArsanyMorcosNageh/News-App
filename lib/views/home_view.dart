import 'package:flutter/material.dart';
import '../widgets/caregory_list_view.dart';
import '../widgets/news_list_view_Builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                )),
            Text(" Clouds      ",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                )),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CaregoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),

      ),
    );
  }
}
