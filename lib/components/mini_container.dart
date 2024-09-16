import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniContainerWidget extends StatefulWidget {
  const MiniContainerWidget({
    super.key,
  });

  @override
  State<MiniContainerWidget> createState() => _MiniContainerWidgetState();
}

class _MiniContainerWidgetState extends State<MiniContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Возбуждение',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Восторг',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Игривость',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Наслаждение',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Очарование',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Осознанность',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Смелость',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Удовольствие',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Чувственность',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Энергичность',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
              Container(
                height: 21,
                width: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    3,
                  ),
                  color: const Color(0xffFFFFFF),
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  'Экстравагантность',
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: const Color(
                      0xff4C4C69,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
