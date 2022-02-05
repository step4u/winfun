import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' show Icons;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          accentColor: Colors.blue,
          iconTheme: const IconThemeData(size: 24)),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.blue,
        iconTheme: const IconThemeData(size: 24),
      ),
      home: NavigationView(
        appBar: const NavigationAppBar(
          title: Text("Fluent Design App Bar"),
        ),
        content: NavigationBody(
          transitionBuilder: (child, animation) =>
              HorizontalSlidePageTransition(
            child: child,
            animation: animation,
          ),
          index: index,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ScaffoldPage(
                header: Text(
                  "Title Sample Page 1",
                  style: TextStyle(fontSize: 30),
                ),
                content: Center(
                  child: Text("Welcome to Page 1!"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ScaffoldPage(
                header: Text(
                  "Title Sample Page 2",
                  style: TextStyle(fontSize: 30),
                ),
                content: Center(
                  child: Text("Welcome to Page 2!"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: ScaffoldPage(
                header: Text(
                  "Title Sample Page 3",
                  style: TextStyle(fontSize: 30),
                ),
                content: Center(
                  child: Text("Welcome to Page 3!"),
                ),
              ),
            ),
          ],
        ),
        pane: NavigationPane(
          displayMode: PaneDisplayMode.auto,
          selected: index,
          size: const NavigationPaneSize(openWidth: 200),
          items: [
            PaneItem(
              icon: const Icon(Icons.code),
              title: const Text("Sample Page 1"),
            ),
            PaneItem(
              icon: const Icon(Icons.desktop_windows_outlined),
              title: const Text("Sample Page 2"),
            ),
          ],
          onChanged: (value) => setState(() {
            index = value;
          }),
          footerItems: [
            PaneItem(
              icon: const Icon(Icons.abc),
              title: const Text('TTT'),
            ),
          ],
        ),
      ),
    );
  }
}
