import 'package:flutter/material.dart';
import 'package:flutter_blog/APIS/blogapis.dart';
import 'package:flutter_blog/Providerpage/blog_provider.dart';
import 'package:flutter_blog/Screen/Homepage.dart';
import 'package:provider/provider.dart';

void main()  {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BlogProvider(),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomePage()),
    );
  }
}
