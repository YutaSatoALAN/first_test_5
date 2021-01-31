import '../components/importer.dart';

class DataCalendarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('カレンダーから確認'),
        backgroundColor: ColorConfig.mainColor,
      ),
      body: DataCalendarCarousel(),
    );
  }
}
