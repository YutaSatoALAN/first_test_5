import '../components/importer.dart';

class SignUpModel with ChangeNotifier {
  final Function function;
  final String hintText;

  SignUpModel(this.function, this.hintText);

  final TextEditingController controller = TextEditingController();

  static final String titleText = '新規登録';
  static String mail = '';
  static String pw = '';
  static String username = '';
  static String message = '';
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static String uid = '';

  static deleteAll() {
    mail = '';
    pw = '';
    username = '';
    message = '';
    uid = '';
  }

  static setMail(String mail) {
    SignUpModel.mail = mail;
  }

  static setPw(String pw) {
    SignUpModel.pw = pw;
  }

  static setUsername(String username) {
    SignUpModel.username = username;
  }

  static signUp() async {
    await Firebase.initializeApp();
    if (mail.isEmpty) {
      message = 'メールアドレスを入力してください';
    } else if (pw.isEmpty) {
      message = 'パスワードを入力してください';
    } else if (username.isEmpty) {
      message = 'ユーザー名を入力してください';
    } else {
      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: mail,
          password: pw,
        );
        uid = userCredential.user.uid;
        await FirebaseFirestore.instance.collection('users').doc(uid).set({
          'uid': uid,
          'email': mail,
          'username': username,
          'createdAt': Timestamp.now(),
        });
        message = '登録完了しました';
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
          message = 'パスワードが虚弱です';
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
          message = 'すでに登録されたアドレスです';
        }
      } catch (e) {
        message = '不明なエラー';
      }
    }
  }
}
