import '../components/importer.dart';

class TextFieldY extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function function;
  final bool obscure;

  TextFieldY(this.hintText, this.controller, this.function,
      {this.obscure: false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: '$hintTextを入力'),
      controller: controller,
      obscureText: obscure,
      onChanged: (text) {
        function(text);
      },
    );
  }
}
