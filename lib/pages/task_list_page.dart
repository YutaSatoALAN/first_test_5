import 'package:first_test_5/models/task_list_model.dart';

import '../components/importer.dart';

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskListModel.getTaskList();
    return Scaffold(
      appBar: AppBar(
        title: Text('タスクリスト'),
        backgroundColor: ColorConfig.mainColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BackgroundConfig.boxDecoration,
        child: NavigatorListView(TaskListModel.taskList),
        // NavigatorListViewにNavigatorの記載あり
      ),
    );
  }
}
