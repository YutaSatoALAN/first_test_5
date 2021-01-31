import '../components/importer.dart';

class SignInModel with ChangeNotifier {
  final Function function;
  final String hintText;

  SignInModel(this.function, this.hintText);

  final TextEditingController controller = TextEditingController();

  static final String titleText = 'ログイン';
  static String mail = '';
  static String pw = '';
  static String message = '';
  static String uid = '';
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static deleteAll() {
    mail = '';
    pw = '';
    message = '';
    uid = '';
  }

  static setMail(String mail) {
    SignInModel.mail = mail;
  }

  static setPw(String pw) {
    SignInModel.pw = pw;
  }

  static signIn() async {
    await Firebase.initializeApp();
    if (mail.isEmpty) {
      message = 'メールアドレスを入力してください';
    } else if (pw.isEmpty) {
      message = 'パスワードを入力してください';
    } else {
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: mail,
          password: pw,
        );
        uid = userCredential.user.uid;
        UserInformation.setUser(uid);
        message = 'ログイン完了しました';
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
        message = 'メールアドレスもしくはパスワードが間違っています';
      }
    }
  }
}
