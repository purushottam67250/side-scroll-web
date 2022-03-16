import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_scroll_web/app/color_constants.dart';
import 'package:side_scroll_web/app/image_constants.dart';
import 'package:side_scroll_web/app/string_constants.dart';
import 'package:side_scroll_web/common/widgets/app_container.dart';

class MyProjectsSection extends StatelessWidget {
  const MyProjectsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Wrap(
      spacing: 60,
      children: [
        SizedBox(
          width: screenSize.width * 0.45,
          height: (screenSize.height - 100) * 0.35,
          child: const MyWorkSectionTile(),
        ),
        SizedBox(
          width: screenSize.width * 0.15,
          child: Container(
            alignment: Alignment.bottomLeft,
            height: (screenSize.height - 100) * 0.40,
            child: AppContainer(
              height: ((screenSize.height - 100) * 0.40) - 20,
              child: Image.asset(
                ImageConstants.work1,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.25,
          child: Container(
            alignment: Alignment.topRight,
            height: (screenSize.height - 100) * 0.5,
            child: AppContainer(
              color: Colors.red,
              height: ((screenSize.height - 100) * 0.5) - 20,
              child: Image.asset(
                ImageConstants.work2,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.40,
          child: Container(
            alignment: Alignment.topLeft,
            height: (screenSize.height - 100) * 0.5,
            child: AppContainer(
              color: Colors.green,
              height: (screenSize.height - 100) * 0.5,
              width: screenSize.width * 0.40,
              child: Image.asset(
                ImageConstants.work3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.15,
          child: Container(
            alignment: Alignment.topCenter,
            height: (screenSize.height - 100) * 0.5,
            child: Column(
              children: [
                const FaIcon(
                  FontAwesomeIcons.splotch,
                  color: Color.fromARGB(255, 98, 99, 105),
                  size: 40,
                ),
                const SizedBox(
                  height: 60,
                ),
                AppContainer(
                  color: Colors.yellow,
                  height: screenSize.width * 0.15,
                  child: Image.asset(
                    ImageConstants.work4,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.20,
          child: Container(
            alignment: Alignment.bottomRight,
            height: (screenSize.height - 100) * 0.5,
            child: AppContainer(
              color: Colors.black,
              height: ((screenSize.height - 100) * 0.5) - 50,
              child: Image.asset(
                ImageConstants.work5,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: screenSize.width * 0.07,
          child: Container(
            alignment: Alignment.topLeft,
            height: (screenSize.height - 100) * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const FaIcon(
                  FontAwesomeIcons.featherAlt,
                  color: Color.fromARGB(255, 98, 99, 105),
                  size: 30,
                ),
                const SizedBox(),
                TextButton(
                  onPressed: () {
                    //
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      ColorConstants.primaryBlue,
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(2),
                  ),
                  child: Text(
                    'See more'.toUpperCase(),
                    style: GoogleFonts.adventPro(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyWorkSectionTile extends StatelessWidget {
  const MyWorkSectionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: StringConstants.myWork,
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color(0xff1c2445),
                fontSize: 85,
                fontWeight: FontWeight.w900,
                letterSpacing: 2,
                height: 1.1,
              ),
            ),
            children: [
              TextSpan(
                text: '.',
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 100,
                    fontWeight: FontWeight.w900,
                    height: 0.8,
                  ),
                ),
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            text: StringConstants.myWorkDescription[0],
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color.fromRGBO(51, 50, 48, 0.6),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              TextSpan(
                text: StringConstants.myWorkDescription[1],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.myWorkDescription[2],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(51, 50, 48, 0.6),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextSpan(
                text: '.',
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          height: 50,
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(
            right: screenSize.width * 0.20,
          ),
          child: const FaIcon(
            FontAwesomeIcons.featherAlt,
            color: Color.fromARGB(255, 98, 99, 105),
            size: 30,
          ),
        )
      ],
    );
  }
}
