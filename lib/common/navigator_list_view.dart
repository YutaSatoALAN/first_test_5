import '../components/importer.dart';

class NavigatorListView extends StatelessWidget {
  final List<TaskY> list;

  NavigatorListView(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: list
            .map(
              (comp) => Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    comp.name,
                    style: TextStyle(
                      fontSize: FontConfig.listTileSize,
                    ),
                  ),
                  onTap: () {
                    TaskInformation.setTaskid(comp.id);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DescriptionPage()),
                    );
                  },
                ),
              ),
            )
            .toList());
  }
}
