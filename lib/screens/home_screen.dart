import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mini_store/widgets/appbar_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          leading: AppBarIcon(
            function: () {},
            icon: IconlyBold.category,
          ),
          actions: [
            AppBarIcon(
              function: () {},
              icon: IconlyBold.user3,
            )
          ],
        ),
        body: const Center(
          child: Text('Welcome to the Course'),
        ),
      ),
    );
  }
}
