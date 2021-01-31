import '../components/importer.dart';

class BackgroundConfig {
  static String _imagePath = 'assets/images/background.jpg';

  static BoxDecoration boxDecoration = BoxDecoration(
      image: DecorationImage(
    image: AssetImage(_imagePath),
    fit: BoxFit.cover,
  ));
}
