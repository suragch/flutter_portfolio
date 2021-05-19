import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suragch.dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Mongol Code Converter'),
              onTap: () => html.window.open(
                'https://suragch.dev/apps/mongolcode/',
                'Mongol Code Converter',
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 100),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/logo.jpg'),
          ),
          SizedBox(height: 50),
          Center(child: Text('Suragch', style: TextStyle(fontSize: 40))),
          Center(child: SelectableText('suragch@suragch.dev')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GitHubButton(),
              SizedBox(width: 20),
              TwitterButton(),
              SizedBox(width: 20),
              MediumButton(),
              SizedBox(width: 20),
              StackOverflowButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class GitHubButton extends StatelessWidget {
  const GitHubButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('assets/github.png'),
      iconSize: 50,
      onPressed: () =>
          html.window.open('https://github.com/suragch/', 'Suragch'),
    );
  }
}

class TwitterButton extends StatelessWidget {
  const TwitterButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('assets/twitter.png'),
      iconSize: 20,
      onPressed: () =>
          html.window.open('https://twitter.com/Suragch1', '@Suragch1'),
    );
  }
}

class MediumButton extends StatelessWidget {
  const MediumButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('assets/medium.png'),
      iconSize: 70,
      onPressed: () => html.window.open(
          'https://suragch.medium.com/flutter-and-dart-development-articles-981be9ef7b23',
          'Suragch'),
    );
  }
}

class StackOverflowButton extends StatelessWidget {
  const StackOverflowButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset('assets/stackoverflow.png'),
      iconSize: 100,
      onPressed: () => html.window
          .open('https://stackoverflow.com/users/3681880/suragch', 'Suragch'),
    );
  }
}
