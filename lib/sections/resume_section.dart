import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_scroll_web/app/color_constants.dart';
import 'package:side_scroll_web/app/image_constants.dart';
import 'package:side_scroll_web/app/string_constants.dart';
import 'package:side_scroll_web/common/widgets/app_container.dart';

class ResumeSection extends StatefulWidget {
  const ResumeSection({
    Key? key,
  }) : super(key: key);

  @override
  State<ResumeSection> createState() => _ResumeSectionState();
}

class _ResumeSectionState extends State<ResumeSection> {
  final PageController educationController = PageController();
  final PageController experienceController = PageController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: (screenSize.height) * 0.20,
                child: const ResumeSectionTile(),
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: AppContainer(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  background: const DecorationImage(
                    image: AssetImage(
                      ImageConstants.education,
                    ),
                    fit: BoxFit.cover,
                  ),
                  child: Stack(
                    children: [
                      PageView(
                        controller: educationController,
                        children: const [
                          EducationPageOne(),
                          EducationPageTwo(),
                        ],
                      ),
                      AppContainer(
                        margin: const EdgeInsets.all(10),
                        color: Colors.blueGrey.withOpacity(0.75),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'Education'.toUpperCase(),
                            style: GoogleFonts.adventPro(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: AppContainer(
                          width: 60,
                          height: 60,
                          radius: 30,
                          color: Colors.blueGrey,
                          child: IconButton(
                            onPressed: () {
                              if ((educationController.page ?? 0) == 0) {
                                educationController.nextPage(
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  curve: Curves.easeInOutCubicEmphasized,
                                );
                              } else {
                                educationController.previousPage(
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  curve: Curves.easeInOutCubicEmphasized,
                                );
                              }
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.arrowAltCircleRight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 70),
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: AppContainer(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  background: const DecorationImage(
                    image: AssetImage(
                      ImageConstants.work,
                    ),
                    fit: BoxFit.cover,
                  ),
                  backgroundColor: const Color.fromARGB(120, 139, 161, 194),
                  child: Stack(
                    children: [
                      PageView(
                        controller: experienceController,
                        children: const [
                          EducationPageOne(),
                          EducationPageTwo(),
                        ],
                      ),
                      AppContainer(
                        margin: const EdgeInsets.all(10),
                        color: Colors.blueGrey.withOpacity(0.75),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'Experience'.toUpperCase(),
                            style: GoogleFonts.adventPro(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 10,
                        child: AppContainer(
                          width: 60,
                          height: 60,
                          radius: 30,
                          color: Colors.blueGrey,
                          child: IconButton(
                            onPressed: () {
                              if ((experienceController.page ?? 0) == 0) {
                                experienceController.nextPage(
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  curve: Curves.easeInOutCubicEmphasized,
                                );
                              } else {
                                experienceController.previousPage(
                                  duration: const Duration(
                                    milliseconds: 200,
                                  ),
                                  curve: Curves.easeInOutCubicEmphasized,
                                );
                              }
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.arrowAltCircleRight,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: screenSize.height * 0.20,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 100),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: FaIcon(
                          FontAwesomeIcons.featherAlt,
                          color: Color.fromARGB(255, 98, 99, 105),
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
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
                          'Download Resume'.toUpperCase(),
                          style: GoogleFonts.adventPro(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class EducationPageOne extends StatelessWidget {
  const EducationPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      color: Colors.blueGrey.withOpacity(0.75),
      radius: 30,
    );
  }
}

class EducationPageTwo extends StatelessWidget {
  const EducationPageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      color: Colors.grey.withOpacity(0.75),
      radius: 30,
    );
  }
}

class ResumeSectionTile extends StatelessWidget {
  const ResumeSectionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: StringConstants.resume,
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
            text: StringConstants.resumeDescription[0],
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color.fromRGBO(51, 50, 48, 0.6),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              TextSpan(
                text: StringConstants.resumeDescription[1],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.resumeDescription[2],
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
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 100),
          child: const FaIcon(
            FontAwesomeIcons.featherAlt,
            color: Color.fromARGB(255, 98, 99, 105),
            size: 30,
          ),
        ),
      ],
    );
  }
}
