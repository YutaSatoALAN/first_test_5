import '../components/importer.dart';

class SignInPage extends StatelessWidget {
  final SignUpModel mailController =
      new SignUpModel(SignInModel.setMail, 'アドレス');
  final SignUpModel pwController = new SignUpModel(SignInModel.setPw, 'パスワード');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SignInModel.titleText),
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
            SizedBox(
              height: SpaceConfig.height,
            ),
            SizedRaisedButton(120, 'ログイン', () async {
              await SignInModel.signIn();
              await Dialogs.alertDialog(context, SignInModel.message);
              if (SignInModel.uid != '') {
                SignInModel.deleteAll();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPagePage(),
                    ),
                    (_) => false);
              }
            })
          ],
        ),
      ),
    );
  }
}
