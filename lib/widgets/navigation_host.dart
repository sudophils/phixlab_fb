import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phixlab_fb/screens/tabs/reels_tab.dart';
import 'package:phixlab_fb/utils/constants.dart';

import '../data/user_data.dart';
import '../screens/tabs/feeds_tab.dart';

class FacebookAppNavigationHost extends StatefulWidget {
  const FacebookAppNavigationHost({Key? key}) : super(key: key);

  @override
  State<FacebookAppNavigationHost> createState() =>
      _FacebookAppNavigationHostState();
}

class _FacebookAppNavigationHostState extends State<FacebookAppNavigationHost>
    with AutomaticKeepAliveClientMixin<FacebookAppNavigationHost> {
  var currentContentIndex = 0;

  Widget buildAppBodyContent(int index) {
    switch (index) {
      case 0:
        return const HomeContentTab();
      case 1:
        return const Center(
          child: Text("Videos"),
        );
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      default:
        return const HomeContentTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "facebook",
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.blueAccent),
        ),
        actions: [
          const Padding(
            padding: horizontalSpacing,
            child: Icon(CupertinoIcons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 8),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 18,
                  child: ClipOval(
                    child: Image.network(
                      errorBuilder: (context, _, st) {
                        return const CircleAvatar(
                            backgroundColor: Colors.white);
                      },
                      height: 36,
                      width: 36,
                      userData.profilePhotoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (userData.isOnline!)
                  Positioned(
                    right: 4,
                    bottom: 10,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
      body: buildAppBodyContent(currentContentIndex),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBottomNavigation() {
    List<BottomNavigationBarItem> menu = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.video_collection_outlined), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined), label: "Home")
    ];
    return BottomNavigationBar(
      currentIndex: currentContentIndex,
      items: menu,
      showSelectedLabels: false,
      onTap: (index) {
        setState(() {
          currentContentIndex = index;
        });
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class HomeContentTab extends StatelessWidget {
  const HomeContentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text("Feeds"),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text("Reels"),
      )
    ];
    return SizedBox(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
                elevation: 0,
                toolbarHeight: 0,
                bottom: TabBar(
                  tabs: tabs,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                )),
            body: TabBarView(
              children: [
                const FeedContentTab(),
                RealContentTab(),
              ],
            ),
          )),
    );
  }
}
