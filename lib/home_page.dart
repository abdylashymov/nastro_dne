import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:for_job/components/calendar_page.dart';
import 'package:for_job/components/container_widget.dart';
import 'package:for_job/components/emojis_box.dart';
import 'package:for_job/components/slider_widget.dart';
import 'package:for_job/components/toggle_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CalendarScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.calendar_month,
                size: 35,
                color: Colors.grey,
              ),
              // size: 35,
              // color: Colors.grey,
            ),
          )
        ],
        title: const Text(
          '1 января 09:00',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ToggleButton(),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: const Alignment(
                  -0.8,
                  2,
                ),
                child: Text(
                  'Что чувствуешь?',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  EmojisBox(
                    emoji: '1',
                    text: 'Радость',
                  ),
                  EmojisBox(
                    emoji: '2',
                    text: 'Страх',
                  ),
                  EmojisBox(
                    emoji: '3',
                    text: 'Бешенство',
                  ),
                  EmojisBox(
                    emoji: '4',
                    text: 'Грусть',
                  ),
                  EmojisBox(
                    emoji: '5',
                    text: 'Спокойствие',
                  ),
                  EmojisBox(
                    emoji: '6',
                    text: 'Сила',
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: const Alignment(
                  -0.8,
                  2,
                ),
                child: Text(
                  'Уровень стресса',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xff4C4C69),
                  ),
                ),
              ),
              const SliderWidget(),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: const Alignment(
                  -0.8,
                  2,
                ),
                child: Text(
                  'Самооценка',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xff4C4C69),
                  ),
                ),
              ),
              const SliderWidget(),
              const SizedBox(
                height: 32,
              ),
              Align(
                alignment: const Alignment(
                  -0.8,
                  2,
                ),
                child: Text(
                  'Заметки',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xff4C4C69),
                  ),
                ),
              ),
              const ContainerWidget(),
              const SizedBox(
                height: 59,
              ),
              ElevatedButton(
                onPressed: () {
                  log('Button pressed');
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.resolveWith<Color>((states) {
                      if (states.contains(WidgetState.pressed)) {
                        return const Color(
                            0xffFF8702); // Color when button is pressed
                      }
                      return const Color(0xffF2F2F2); // Default color
                    }),
                    minimumSize: WidgetStateProperty.all(
                      const Size(380, 44),
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(69.0),
                    ))),
                child: Text(
                  'Сохранить',
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffBCBCBF),
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
