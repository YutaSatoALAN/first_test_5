import 'package:first_test_5/pages/home_page.dart';

import 'components/importer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstTest5',
      home: HomePage(),
    );
  }
}