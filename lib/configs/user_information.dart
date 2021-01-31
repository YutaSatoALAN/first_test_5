import 'package:first_test_5/components/importer.dart';

class UserInformation {
  static String uid = '';
  static String username = '';

  static deleteAll() {
    UserInformation.uid = '';
    UserInformation.username = '';
  }

  static setUser(String uid) async {
    try {
      final doc =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      UserInformation.uid = uid;
      UserInformation.username = doc.data()['username'];
    } catch (e) {
      print('setUserでのエラー');
    }
  }
}
