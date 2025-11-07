import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import '../constants/colors.dart';
import '../widgets/calendar_header.dart';
import '../widgets/liturgical_bottom_sheet.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();  // Use current date for initial focus
  DateTime? _selectedDay;
  Map<int, Map<String, dynamic>> _liturgicalData = {};  // Initialize to empty to avoid late error

  @override
  void initState() {
    super.initState();
    _loadLiturgicalData();  // Load data in initState
  }

  void _loadLiturgicalData() {
    // Hardcoded for August 2024; update or fetch dynamically for other months
    _liturgicalData = {
      1: {'description': 'Saint Alphonsus Liguori, Bishop and Doctor of the Church Memorial', 'color': Colors.white, 'gospel': 'Mt 13:47-53'},
      2: {'description': 'Weekday [Saint Eusebius of Vercelli, Bishop; Saint Peter Julian Eymard, Priest]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 13:54-58'},
      3: {'description': 'Weekday [BVM]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 14:1-12'},
      4: {'description': 'Eighteenth Sunday in Ordinary Time', 'color': AppColors.greenLiturgical, 'gospel': 'Jn 6:24-35'},
      5: {'description': 'Weekday [The Dedication of the Basilica of Saint Mary Major]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 14:13-21'},
      6: {'description': 'The Transfiguration of the Lord Feast', 'color': Colors.white, 'gospel': 'Mk 9:2-10'},
      7: {'description': 'Weekday [Saint Sixtus II, Pope, and Companions, Martyrs; Saint Cajetan, Priest]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 15:21-28'},
      8: {'description': 'Saint Dominic, Priest Memorial', 'color': Colors.white, 'gospel': 'Mt 16:13-23'},
      9: {'description': 'Weekday [Saint Teresa Benedicta of the Cross, Virgin and Martyr]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 16:24-28'},
      10: {'description': 'Saint Lawrence, Deacon and Martyr Feast', 'color': AppColors.redLiturgical, 'gospel': 'Jn 12:24-26'},
      11: {'description': 'Nineteenth Sunday in Ordinary Time', 'color': AppColors.greenLiturgical, 'gospel': 'Jn 6:41-51'},
      12: {'description': 'Weekday [Saint Jane Frances de Chantal, Religious]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 17:22-27'},
      13: {'description': 'Weekday [Saints Pontian, Pope, and Hippolytus, Priest, Martyrs]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 18:1-5, 10, 12-14'},
      14: {'description': 'Saint Maximilian Kolbe, Priest and Martyr Memorial', 'color': AppColors.redLiturgical, 'gospel': 'Mt 18:15-20'},
      15: {'description': 'The Assumption of the Blessed Virgin Mary Solemnity [Holyday of Obligation]', 'color': Colors.white, 'gospel': 'Lk 1:39-56'},
      16: {'description': 'Weekday [Saint Stephen of Hungary]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 19:3-12'},
      17: {'description': 'Weekday [BVM]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 19:13-15'},
      18: {'description': 'Twentieth Sunday in Ordinary Time', 'color': AppColors.greenLiturgical, 'gospel': 'Jn 6:51-58'},
      19: {'description': 'Weekday [Saint John Eudes, Priest]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 19:16-22'},
      20: {'description': 'Saint Bernard, Abbot and Doctor of the Church Memorial', 'color': Colors.white, 'gospel': 'Mt 19:23-30'},
      21: {'description': 'Saint Pius X, Pope Memorial', 'color': Colors.white, 'gospel': 'Mt 20:1-16'},
      22: {'description': 'The Queenship of the Blessed Virgin Mary Memorial', 'color': Colors.white, 'gospel': 'Mt 22:1-14'},
      23: {'description': 'Weekday [Saint Rose of Lima, Virgin]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 22:34-40'},
      24: {'description': 'Saint Bartholomew, Apostle Feast', 'color': AppColors.redLiturgical, 'gospel': 'Jn 1:45-51'},
      25: {'description': 'Twenty-First Sunday in Ordinary Time', 'color': AppColors.greenLiturgical, 'gospel': 'Jn 6:60-69'},
      26: {'description': 'Weekday', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 23:13-22'},
      27: {'description': 'Saint Monica Memorial', 'color': Colors.white, 'gospel': 'Mt 23:23-26'},
      28: {'description': 'Saint Augustine, Bishop and Doctor of the Church Memorial', 'color': Colors.white, 'gospel': 'Mt 23:27-32'},
      29: {'description': 'The Passion of Saint John the Baptist Memorial', 'color': AppColors.redLiturgical, 'gospel': 'Mk 6:17-29'},
      30: {'description': 'Weekday', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 25:1-13'},
      31: {'description': 'Weekday [BVM]', 'color': AppColors.greenLiturgical, 'gospel': 'Mt 25:14-30'},
    };
    // TODO: Make dynamic - fetch data based on _focusedDay.year and month via API or tool
  }

  void _closeBottomSheet() {
    setState(() {
      _selectedDay = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool showBottomSheet = _selectedDay != null;
    final String monthName = DateFormat('MMMM yyyy').format(_focusedDay);
    // Filter feasts (exclude plain 'Weekday')
    final List<MapEntry<int, Map<String, dynamic>>> feasts = _liturgicalData.entries
        .where((entry) => entry.value['description'] != 'Weekday')
        .toList();

    return Stack(
      children: [
        // Main content with calendar and feast list
        SingleChildScrollView(
          child: Column(
            children: [
              CalendarHeader(
                focusedDay: _focusedDay,
                onPrevious: () {
                  setState(() {
                    _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
                    _loadLiturgicalData();  // Reload for new month
                  });
                },
                onNext: () {
                  setState(() {
                    _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
                    _loadLiturgicalData();  // Reload for new month
                  });
                },
              ),
              TableCalendar(
                firstDay: DateTime.utc(2000, 1, 1),
                lastDay: DateTime.utc(2100, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                    _loadLiturgicalData();  // Reload when page changes
                  });
                },
                eventLoader: _getEventsForDay,
                calendarBuilders: CalendarBuilders(
                  markerBuilder: (context, day, events) {
                    if (events.isEmpty) return null;
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: events.map((color) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          width: 6.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                            color: color as Color,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )).toList(),
                    );
                  },
                  selectedBuilder: (context, day, focusedDay) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      child: Text(
                        '${day.day}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feasts in $monthName',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8.0),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: feasts.length,
                      itemBuilder: (context, index) {
                        final entry = feasts[index];
                        final day = entry.key;
                        final data = entry.value;
                        return ListTile(
                          title: Text('August $day: ${data['description']}'),  // Update 'August' to dynamic if needed
                          subtitle: Text('Gospel: ${data['gospel']}'),
                          onTap: () {
                            setState(() {
                              _selectedDay = DateTime(_focusedDay.year, _focusedDay.month, day);
                            });
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Conditional overlay and bottom sheet
        if (showBottomSheet) ...[
          // Overlay (tappable to close)
          Positioned.fill(
            child: GestureDetector(
              onTap: _closeBottomSheet,
              child: Container(
                color: Colors.black.withOpacity(0.3), // bg-black/30
              ),
            ),
          ),
          // Bottom sheet content
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: LiturgicalBottomSheet(
              selectedDay: _selectedDay!,
              onClose: _closeBottomSheet,
            ),
          ),
        ],
        // Floating Action Button (always visible)
        Positioned(
          bottom: 24.0, // bottom-6
          right: 24.0, // right-6
          child: FloatingActionButton(
            onPressed: () {}, // TODO: Implement add action
            backgroundColor: AppColors.primary,
            child: const Icon(Icons.add, size: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }

  // Event loader: Returns list of colors for each day (liturgical markers)
  List<Color> _getEventsForDay(DateTime day) {
    if (day.year == _focusedDay.year && day.month == _focusedDay.month) {
      final data = _liturgicalData[day.day];
      if (data != null) {
        Color color = data['color'] as Color;
        // For multiple, but for now single
        return [color];
      }
    }
    return [];
  }
}