import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_scroll_web/app/color_constants.dart';
import 'package:side_scroll_web/app/image_constants.dart';
import 'package:side_scroll_web/app/string_constants.dart';
import 'package:side_scroll_web/common/widgets/app_container.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        AppContainer(
          width: 70,
          height: 70,
          radius: 20,
          child: Image.asset(
            ImageConstants.logo,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 60),
        RichText(
          text: TextSpan(
            text: StringConstants.profession,
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
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text: StringConstants.professionDescription[0],
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color.fromRGBO(51, 50, 48, 0.6),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              TextSpan(
                text: StringConstants.professionDescription[1],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.professionDescription[2],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(51, 50, 48, 0.6),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.professionDescription[3],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.professionDescription[4],
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
        const SizedBox(
          height: 40,
        ),
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
            'Get in touch'.toUpperCase(),
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.twitter,
              color: ColorConstants.primaryBlue,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
            const FaIcon(
              FontAwesomeIcons.facebookSquare,
              color: ColorConstants.primaryBlue,
              size: 15,
            ),
            const SizedBox(
              width: 10,
            ),
            const FaIcon(
              FontAwesomeIcons.instagram,
              color: ColorConstants.primaryBlue,
              size: 15,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              StringConstants.emailAddress,
              style: GoogleFonts.adventPro(
                textStyle: const TextStyle(
                  color: Color(0xff1c2445),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              StringConstants.contact,
              style: GoogleFonts.adventPro(
                textStyle: const TextStyle(
                  color: Color(0xff1c2445),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50),
      ],
    );
  }
}
