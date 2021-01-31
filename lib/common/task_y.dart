import '../components/importer.dart';

class TaskY {
  String name;
  String id;

  TaskY(DocumentSnapshot doc) {
    this.name = doc.data()['taskname'];
    this.id = doc.data()['taskid'];
  }
}
