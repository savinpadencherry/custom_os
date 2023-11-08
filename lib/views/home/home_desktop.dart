part of home_view;

class _HomeDesktop extends StatelessWidget {
  _HomeDesktop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop'),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
