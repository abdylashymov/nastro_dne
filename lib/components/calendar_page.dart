import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:table_calendar/table_calendar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalendarScreen(),
    );
  }
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool _showAllMonths = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Календарь'),
        actions: [
          IconButton(
            icon: Icon(_showAllMonths ? Icons.calendar_today : Icons.grid_view),
            onPressed: () {
              setState(() {
                _showAllMonths = !_showAllMonths;
              });
            },
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _showAllMonths = !_showAllMonths;
              });
            },
            child: Text(
              'Сегодня',
              style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xffBCBCBF),
              ),
            ),
          ),
        ],
      ),
      body: Expanded(
        child: _showAllMonths ? _buildAllMonths() : _buildSingleMonth(),
      ),
    );
  }

  Widget _buildSingleMonth() {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: _focusedDay,
      calendarFormat: _calendarFormat,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },
      onFormatChanged: (format) {
        if (_calendarFormat != format) {
          setState(() {
            _calendarFormat = format;
          });
        }
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
    );
  }

  Widget _buildAllMonths() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: GridView.builder(
        shrinkWrap:
            true, // Устанавливаем, чтобы GridView занимал только необходимое пространство
        physics:
            const NeverScrollableScrollPhysics(), // Отключаем внутреннюю прокрутку GridView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Количество колонок в ряду
          childAspectRatio:
              0.5, // Соотношение сторон для каждого элемента сетки
        ),
        itemCount: 12, // 12 месяцев
        itemBuilder: (context, index) {
          // Создаем копию текущего месяца для отображения
          DateTime firstDayOfMonth =
              DateTime(DateTime.now().year, index + 1, 1);
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TableCalendar(
                // locale: 'ru_RU',  // Устанавливаем русский язык
                firstDay: firstDayOfMonth,
                lastDay: DateTime(DateTime.now().year, index + 1 + 1,
                    0), // Последний день месяца
                focusedDay: firstDayOfMonth,
                headerStyle: const HeaderStyle(
                  formatButtonVisible:
                      false, // Отключаем кнопку изменения формата
                  titleCentered: true, // Заголовок месяца по центру
                ),
                calendarStyle: const CalendarStyle(
                  isTodayHighlighted: false, // Не выделяем сегодняшний день
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekendStyle: TextStyle(color: Colors.red),
                ),
                calendarFormat: CalendarFormat.month,
                onPageChanged: (focusedDay) {},
              ),
            ),
          );
        },
      ),
    );
  }
}
