import 'package:flutter/material.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
            colors: [
              Color(0xFF7A60A5),
              Color(0xFF82C3DF),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF9689CE),
                    borderRadius: BorderRadius.circular(18)),
                child: Column(
                  children: [
                    Text(
                      'Get the Special discount',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Flexible(
                        child: SizedBox(
                      width: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          "50% \n OFF",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(14),
              child: Image.network(
                "https://i.ibb.co/vwB46Yq/shoes.png",
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
