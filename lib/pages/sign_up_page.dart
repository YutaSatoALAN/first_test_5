import '../components/importer.dart';

class SignUpPage extends StatelessWidget {
  final SignUpModel mailController =
      new SignUpModel(SignUpModel.setMail, 'アドレス');
  final SignUpModel pwController = new SignUpModel(SignUpModel.setPw, 'パスワード');
  final SignUpModel usernameController =
      new SignUpModel(SignUpModel.setUsername, 'ユーザー名');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SignUpModel.titleText),
        backgroundColor: ColorConfig.mainColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(SpaceConfig.padding),
        child: Column(
          children: [
            TextFieldY(mailController.hintText, mailController.controller,
                mailController.function),
            TextFieldY(pwController.hintText, pwController.controller,
                pwController.function,
                obscure: true),
            TextFieldY(usernameController.hintText,
                usernameController.controller, usernameController.function),
            SizedBox(
              height: SpaceConfig.height,
            ),
            SizedRaisedButton(120, '新規登録', () async {
              await SignUpModel.signUp();
              await Dialogs.alertDialog(context, SignUpModel.message);
              if (SignUpModel.uid != '') {
                SignUpModel.deleteAll();
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
    );
  }
}
