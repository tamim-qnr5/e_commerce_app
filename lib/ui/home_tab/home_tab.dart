import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home_tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Center(
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: AnotherCarousel(
                  indicatorBgPadding: 6,
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: Theme.of(context).primaryColor,
                    images:
                    [
                      Image.asset('assets/ad1.png'),
                      Image.asset('assets/ad2.png'),
                      Image.asset('assets/ad3.png'),


                    ]),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: Theme.of(context).textTheme.titleMedium,),
                    TextButton(onPressed: (){}, child: Text('view all',style: Theme.of(context).textTheme.titleSmall,))
                  ],
                ),



              ],
            ),
          )

        ],
      ),
    );
  }
}
