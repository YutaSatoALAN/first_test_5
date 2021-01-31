import '../components/importer.dart';

class MyPagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(UserInformation.uid);
    return Scaffold(
      appBar: AppBar(
        title: Text('${UserInformation.username}さんのマイページ'),
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
              SizedRaisedButton(160, '撮影', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskListPage(),
                  ),
                );
              }),
              SizedRaisedButton(160, 'データ確認', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataCheckPage(),
                  ),
                );
              }),
              SizedRaisedButton(160, 'サインアウト', () async {
                bool _tf = await Dialogs.alertDialogTF(context, 'サインアウトしますか？');
                if (_tf) {
                  UserInformation.deleteAll();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                      (_) => false);
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
