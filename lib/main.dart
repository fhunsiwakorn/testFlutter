import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OAS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title: 'Online Application System : OAS',
          description:
              ' Mobile Application IOS และรูปแบบ Mobile Application Android '),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // พื้นที่ Content Body
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.indigo,
                margin: const EdgeInsets.all(10.0),
                child: const Text("Siwakorn Banlueapy"),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  style: const TextStyle(fontSize: 12.0),
                  widget.description,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/images/56Do2ft.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.network(
                    'https://static.republika.co.id/uploads/images/inpicture_slide/irene-red_210120153901-448.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.network(
                    'https://a-static.besthdwallpaper.com/aespa-s-giselle-spicy-mv-shoot-wallpaper-3840x2160-117931_54.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.network(
                    'https://f.ptcdn.info/627/080/000/rur8vfb2vn4K75Q4R7PS-o.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Image.network(
                    'https://www.allkpop.com/upload/2023/08/content/091411/web_data/allkpop_1691605229_untitled-1.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
