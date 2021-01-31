import '../components/importer.dart';

class TaskListModel with ChangeNotifier {
  static List<TaskY> taskList = [];

  static getTaskList() async {
    final snapshot = await FirebaseFirestore.instance.collection('tasks').get();
    final docs = snapshot.docs;
    final taskList = docs.map((doc) => TaskY(doc)).toList();
    TaskListModel.taskList = taskList;
  }
}
