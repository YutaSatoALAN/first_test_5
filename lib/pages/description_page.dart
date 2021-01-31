import '../components/importer.dart';

class DescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(TaskInformation.taskid);
    return Scaffold(
      appBar: AppBar(
        title: Text('説明ページ'),
        backgroundColor: ColorConfig.mainColor,
      ),
    );
  }
}
