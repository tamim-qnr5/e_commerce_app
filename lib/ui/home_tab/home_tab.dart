import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:commerce_app/ui/MyTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home_tab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Categories',style: Theme.of(context).textTheme.titleMedium,),
                        TextButton(onPressed: (){}, child: Text('view all',style: Theme.of(context).textTheme.titleSmall,))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/women.png'),
                              ),
                              Text('Women\'s\nfashons',style: TextStyle(color: MyTheme.primeColor),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/men.png'),
                              ),
                              Text('Men\'s\nfashons',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/skincare.png'),
                              ),
                              Text('Skincare',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/headphones.png'),
                              ),
                              Text('Headphones',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/babay.png'),
                              ),
                              Text('baby\nToys',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/laptops.png'),
                              ),
                              Text('laptops',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/make_up.png'),
                              ),
                              Text('Beauty',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: MediaQuery.sizeOf(context).width*.15,
                                backgroundImage: AssetImage('assets/women.png'),
                              ),
                              Text('Women\'s\nfashons',style: TextStyle(color: MyTheme.primeColor))
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Home Appliance',style: Theme.of(context).textTheme.titleMedium,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                            width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/Frame 9.png',width: double.infinity,),
                                  Text('Washing Machine',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.8)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('9000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/Frame 9.png',width: double.infinity,),
                                  Text('Washing Machine',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.8)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('9000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/Frame 9.png',width: double.infinity,),
                                  Text('Washing Machine',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.8)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('9000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/Frame 9.png',width: double.infinity,),
                                  Text('Washing Machine',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.8)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('9000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/nike_ads.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('New Arrival',style: Theme.of(context).textTheme.titleMedium,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/make_up.png',width: double.infinity,),
                                  Text('Makeup Palleted',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.3)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/make_up.png',width: double.infinity,),
                                  Text('Makeup Palleted',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.3)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/make_up.png',width: double.infinity,),
                                  Text('Makeup Palleted',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.3)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/make_up.png',width: double.infinity,),
                                  Text('Makeup Palleted',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.3)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('3000EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Smart Watch',style: Theme.of(context).textTheme.titleMedium,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/watch.png',width: double.infinity,),
                                  Text('Digtal watch',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.5)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1800EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/watch.png',width: double.infinity,),
                                  Text('Digtal watch',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.5)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1800EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/watch.png',width: double.infinity,),
                                  Text('Digtal watch',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.5)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1800EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/watch.png',width: double.infinity,),
                                  Text('Digtal watch',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.5)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1800EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width*0.4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset('assets/watch.png',width: double.infinity,),
                                  Text('Digtal watch',style:TextStyle(fontSize: 18,color: MyTheme.primeColor)),
                                  Row(children: [
                                    Text('Review (4.5)',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                    Icon(Icons.star,color: Colors.yellow,)
                                  ],),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('1800EG',style:TextStyle(fontSize: 16,color: MyTheme.primeColor)),
                                      InkWell(
                                        onTap: (){},
                                        child: CircleAvatar(
                                          backgroundColor: MyTheme.primeColor,
                                          child: Icon(Icons.add,color: MyTheme.whiteColor,),
                                        ),
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),




                        ],
                      ),
                    ),
                  )




                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
