import '../components/importer.dart';

// class DataCalendarCarousel extends StatefulWidget {
//   @override
//   _DataCalendarCarouselState createState() => _DataCalendarCarouselState();
// }
//
// class _DataCalendarCarouselState extends State<DataCalendarCarousel> {
//   DateTime _currentDate = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     print('更新');
//     return CalendarCarousel<Event>(
//       onDayPressed: onDayPressed,
//       weekendTextStyle: TextStyle(color: Colors.red),
//       thisMonthDayBorderColor: Colors.grey,
//       weekFormat: false,
//       height: 420.0,
//       selectedDateTime: _currentDate,
//       daysHaveCircularBorder: false,
//       customGridViewPhysics: NeverScrollableScrollPhysics(),
//       markedDateShowIcon: true,
//       markedDateIconMaxShown: 2,
//       todayTextStyle: TextStyle(
//         color: Colors.blue,
//       ),
//       markedDateIconBuilder: (event) {
//         return event.icon;
//       },
//       todayBorderColor: Colors.green,
//       markedDateMoreShowTotal: false,
//     );
//   }
//
//   void onDayPressed(DateTime date, List<Event> events) {
//     this.setState(() {
//       _currentDate = date;
//     });
//     Fluttertoast.showToast(msg: date.toString());
//   }
// }

class DataCalendarCarousel extends StatelessWidget {
  final DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    print('更新');
    return CalendarCarousel<Event>(
      onDayPressed: onDayPressed,
      weekendTextStyle: TextStyle(color: Colors.red),
      weekdayTextStyle: TextStyle(color: Colors.black),
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      height: 500.0,
      selectedDateTime: _currentDate,
      selectedDayTextStyle: TextStyle(color: Colors.white),
      selectedDayButtonColor: Colors.blue,
      selectedDayBorderColor: Colors.grey,
      daysHaveCircularBorder: false,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      // markedDateShowIcon: true,
      markedDateIconMaxShown: 2,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      // markedDateMoreShowTotal: false,
    );
  }

  void onDayPressed(DateTime date, List<Event> events) {
    Fluttertoast.showToast(msg: date.toString());
  }
}
