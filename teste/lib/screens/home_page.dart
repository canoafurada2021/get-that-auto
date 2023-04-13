import 'package:fluent_ui/fluent_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FluentApp(
      debugShowCheckedModeBanner: false,
      title: "Testeeee",
      home: ScaffoldPage(
        content: Center(
          child: Text(
            "Bem vindo",
          ),
        ),

      ),
    );
  }
}
