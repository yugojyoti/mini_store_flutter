import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:mini_store/consts/global_colors.dart';
import 'package:mini_store/widgets/appbar_icon.dart';
import 'package:mini_store/widgets/sale_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Search",
                      filled: true,
                      fillColor: Theme.of(context).cardColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Theme.of(context).cardColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                          width: 1,
                        ),
                      ),
                      suffixIcon: Icon(
                        IconlyLight.search,
                        color: lightIconsColor,
                      )),
                ),
                SizedBox(
                  height: size.height * 0.25,
                  child: Swiper(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return SaleWidget();
                    },
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Colors.red,
                      ),
                    ),
                    control: SwiperControl(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
