import 'package:fluent_ui/fluent_ui.dart';
import 'package:teste/screens/navigaton_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FluentApp(
      theme:  ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF212332),
      ),
      debugShowCheckedModeBanner: false,
      title: "Primeiro app em desktop",
      home:  const NavigationScreen(),
    );
  }
}
