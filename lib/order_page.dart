import 'package:flutter/material.dart';
import 'package:foodelo/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Expanded(
                    flex: 4,
                    child:Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image(
                          image: AssetImage('images/back.jpg'),
                        ),
                      ),
                    )),
                Positioned(
                  top: 50,
                  left: 15,
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,color: Colors.red,),
                          onPressed: (){
                            Navigator.pop(context, MaterialPageRoute(
                                builder:(BuildContext context){
                                  return MyHome();
                                } ));
                          },
                        ),
                      )
                  ),

                ),
                Positioned(
                  top: 50,
                  right: 15,
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black,
                      ),
                      child: Icon(Icons.favorite,color: Colors.red,)
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 358,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black54.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text('Cappuccino',
                                      style:GoogleFonts.bebasNeue(
                                        fontSize: 23,
                                      )),
                                  Text('With Oat milk', style: GoogleFonts.aladin(fontSize: 15, color:Colors.white54),)
                                ],
                              ),
                              SizedBox(width: 100,),
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black,
                                  ),
                                  child: Column(
                                      children:[
                                        Icon(Icons.coffee_maker_rounded, color: Colors.orange,),
                                        SizedBox(height: 5,),
                                        Text('Coffee', style: TextStyle(fontSize: 12),)
                                      ])
                              ),
                              SizedBox(width: 15,),
                              Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black,
                                  ),
                                  child: Column(
                                      children:[
                                        Icon(Icons.water_drop_rounded, color: Colors.orange,),
                                        SizedBox(height: 5,),
                                        Text('milk', style: TextStyle(fontSize: 12),)
                                      ])
                              ),


                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.star,color: Colors.orange,),
                              Text('4.5',style: TextStyle(fontSize: 12)),
                              Text('(6.986)',style: TextStyle(color: Colors.white54,fontSize: 10),),
                              SizedBox(width: 60,),
                              Container(
                                  width: 115,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black,
                                  ),
                                  child: Center(child: Text('Medium Roasted',style: TextStyle(color: Colors.white54,fontSize: 13),))
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Description', style: GoogleFonts.aladin(fontSize: 15, color:Colors.white54)),
            SizedBox(height: 10),
            Text('A cappuccino is a coffee-based drink made primarily from espresso and milk  .....Read More', style: TextStyle(fontSize: 15, color:Colors.orange)),
            SizedBox(height: 20),
            Text('Size', style:TextStyle(fontSize: 15, color:Colors.white54)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 85,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black54,
                    ),
                    child: Center(child: Text('S',style: TextStyle(color: Colors.white54,fontSize: 18),))
                ),
                Container(
                    width: 85,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black,
                    ),
                    child: Center(child: Text('M',style: TextStyle(color: Colors.white54,fontSize: 18),))
                ),
                Container(
                    width: 85,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black,
                    ),
                    child: Center(child: Text('L',style: TextStyle(color: Colors.white54,fontSize: 18),))
                )
              ],
            ),
            SizedBox(height:30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Prize', style:TextStyle(fontSize: 10, color:Colors.white54)),
                    Text('\$ 4.20', style:TextStyle(fontSize: 18, color:Colors.white)),
                  ],
                ),
                Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text('Buy Now',style: TextStyle(color: Colors.white,fontSize: 18),))
                )
              ],
            ),
          ],
        ),
      ) ,
    );
  }
}