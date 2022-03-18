import 'package:flutter/material.dart';
import 'package:side_scroll_web/common/widgets/custom_side_scroller.dart';
import 'package:side_scroll_web/sections/get_in_touch_section.dart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff6f5f1),
      body: CustomSideScroller(
        child: HomeScreenBody(),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //home page section
          // SizedBox(
          //   width: screenSize.width * 0.477,
          //   child: const HomeSection(),
          // ),
          // // home page my works section filler
          // Container(
          //   padding: const EdgeInsets.only(top: 150),
          //   child: Image.asset(
          //     ImageConstants.homeBackground,
          //     fit: BoxFit.fill,
          //     alignment: Alignment.bottomLeft,
          //   ),
          // ),
          // // my projects section
          // Container(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 50,
          //     vertical: 50,
          //   ),
          //   width: screenSize.width,
          //   child: const MyProjectsSection(),
          // ),
          // my projects resume section filler
          // SizedBox(
          //   width: screenSize.width * 0.1,
          // ),
          // resume section
          // Container(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 50,
          //     vertical: 50,
          //   ),
          //   width: screenSize.width - 100,
          //   child: const ResumeSection(),
          // ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 50,
            ),
            width: screenSize.width - 100,
            child: const GetInTouchSection(),
          ),
        ],
      ),
    );
  }
}
