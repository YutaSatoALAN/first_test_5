import 'package:first_test_5/configs/color_config.dart';
import 'package:first_test_5/configs/font_config.dart';

import '../components/importer.dart';

class SizedRaisedButton extends StatelessWidget {
  final double buttonWidth;
  final String buttonText;
  final navigator;

  SizedRaisedButton(this.buttonWidth,this.buttonText,this.navigator);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      child: RaisedButton(
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: FontConfig.buttonSize,
          ),
        ),
        color: ColorConfig.mainColor,
        textColor: ColorConfig.buttonText,
        onPressed: navigator,
      ),
    );
  }
}
