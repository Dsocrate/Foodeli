import 'package:flutter/material.dart';
import 'package:foodelo/order_page.dart';
class Cofee extends StatelessWidget {
  final String coffeImage;
  final String cofeeName;
  final String cofeeCost;

  Cofee({
    required this.coffeImage,
    required this.cofeeCost,
    required this.cofeeName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child:Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeImage)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cofeeName,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 2),
                  Text('With Almond Milk',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cofeeCost),
                  Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.add, size: 20,),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder:(BuildContext context){
                                  return OrderPage();
                                } ));
                          },
                        ),
                      )
                  )
                ],),
            )
          ],
        ) ,
      ),
    );

  }
}