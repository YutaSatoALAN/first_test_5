import '../components/importer.dart';

class DataCheckPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('データ確認'),
        backgroundColor: ColorConfig.mainColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BackgroundConfig.boxDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedRaisedButton(180, 'カレンダーを表示', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataCalendarPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
