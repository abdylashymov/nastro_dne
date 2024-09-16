import 'package:flutter/material.dart';
import 'package:for_job/components/emojis_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class EmojisBox extends StatelessWidget {
  const EmojisBox({
    required this.emoji,
    required this.text,
    super.key,
  });

  final String emoji;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            height: 110,
            width: 50,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const EmojisScreen(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      'assets/emoji$emoji.png',
                    ),
                  ),
                ),
                Text(
                  text,
                  style: GoogleFonts.nunito(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
