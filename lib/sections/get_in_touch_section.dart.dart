import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_scroll_web/app/color_constants.dart';
import 'package:side_scroll_web/app/string_constants.dart';

class GetInTouchSection extends StatefulWidget {
  const GetInTouchSection({
    Key? key,
  }) : super(key: key);

  @override
  State<GetInTouchSection> createState() => _GetInTouchSectionState();
}

class _GetInTouchSectionState extends State<GetInTouchSection> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: screenSize.width * 0.135,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 20,
            ),
            GetInTouchSectionTile(),
          ],
        ),
      ],
    );
  }
}

class GetInTouchSectionTile extends StatelessWidget {
  const GetInTouchSectionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: StringConstants.getInTouch,
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
            text: StringConstants.getInTouchDescription[0],
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color.fromRGBO(51, 50, 48, 0.6),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              TextSpan(
                text: StringConstants.getInTouchDescription[1],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.getInTouchDescription[2],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(51, 50, 48, 0.6),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    height: 1.75,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.getInTouchDescription[3],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(51, 50, 48, 0.6),
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    height: 1.75,
                  ),
                ),
              ),
              TextSpan(
                text: StringConstants.getInTouchDescription[4],
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: ColorConstants.primaryBlue,
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextSpan(
                text: '.',
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                    color: Color.fromRGBO(51, 50, 48, 0.6),
                    fontSize: 23,
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
        const ContactTile(
          label: StringConstants.contact,
          icon: Icon(
            Icons.phone_iphone_outlined,
            color: ColorConstants.primaryBlue,
            size: 20,
          ),
        ),
        const ContactTile(
          label: StringConstants.emailAddress,
          icon: Icon(
            Icons.alternate_email,
            color: ColorConstants.primaryBlue,
            size: 20,
          ),
        ),
        Container(
          color: const Color.fromRGBO(51, 50, 48, 0.6),
          height: 1,
          width: 300,
        ),
        const ContactTile(
          label: StringConstants.twitter,
          faIcon: FaIcon(
            FontAwesomeIcons.twitter,
            color: ColorConstants.primaryBlue,
            size: 20,
          ),
        ),
        const ContactTile(
          label: StringConstants.facebook,
          faIcon: FaIcon(
            FontAwesomeIcons.facebookSquare,
            color: ColorConstants.primaryBlue,
            size: 20,
          ),
        ),
        const ContactTile(
          label: StringConstants.linkedIn,
          faIcon: FaIcon(
            FontAwesomeIcons.linkedin,
            color: ColorConstants.primaryBlue,
            size: 20,
          ),
        ),
      ],
    );
  }
}

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.label,
    this.icon,
    this.faIcon,
  }) : super(key: key);

  final String label;
  final Icon? icon;
  final FaIcon? faIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          Container(
            child: icon ?? faIcon,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            label,
            style: GoogleFonts.adventPro(
              textStyle: const TextStyle(
                color: Color.fromRGBO(51, 50, 48, 0.4),
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
