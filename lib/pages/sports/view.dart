part of 'index.dart';

final count = 20000;
final List<ExpansibleController> controllers = List.generate(
  count,
  (index) => ExpansibleController(),
);

class SportsView extends GetView<SportsController> {
  const SportsView({super.key});

  static const style1 = TextStyle(fontSize: 10, color: Color(0xff8286a3));

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        listTileTheme: ListTileTheme.of(context).copyWith(
          dense: true,
          minVerticalPadding: 0,
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text("Sports")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            for (var c in controllers) {
              c.isExpanded ? c.collapse() : c.expand();
            }
          },
        ),
        body: ListView.builder(
          addAutomaticKeepAlives: true,
          itemCount: count,
          itemBuilder: (context, index) {
            return A(controllers[index]);
          },
        ),
      ),
    );
  }
}

class A extends StatefulWidget {
  final ExpansibleController c;
  const A(this.c, {super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      controller: widget.c,
      title: const ListTile(title: Text("data")),
      children: [Container(height: 100, color: Colors.amber)],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
