import 'package:first_test_5/common/sized_raised_button.dart';
import 'package:first_test_5/configs/background_config.dart';
import 'package:first_test_5/configs/color_config.dart';
import 'package:first_test_5/pages/sign_in_page.dart';
import 'package:first_test_5/pages/sign_up_page.dart';

import '../components/importer.dart';

class HomePage extends StatelessWidget {
  final Text titleText = Text('PD評価アプリ Ver. 0.5');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleText,
        backgroundColor: ColorConfig.mainColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BackgroundConfig.boxDecoration,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedRaisedButton(120, 'ログイン', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ),
                    );
                  }),
                  SizedRaisedButton(120, '新規登録', () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
