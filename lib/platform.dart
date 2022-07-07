import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Platform extends StatefulWidget {
  const Platform({Key? key}) : super(key: key);

  @override
  State<Platform> createState() => _PlatformState();
}

class _PlatformState extends State<Platform> {

  List<String> name = ['Anton','BetterMarks','Byju\'s','WhiteHat.Jr'];
  List<String> images = ['assets/images/img_2.png','assets/images/img_3.png','assets/images/img_4.png','assets/images/img_5.png',];
  List<String> rating = ['4.8','1.9','4.9','4.5'];
  List<String> money = ['FREE','PAID','PAID','PAID',];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                  "assets/images/img.png",
                  width: double.infinity,
                  height: 320,
                  fit: BoxFit.cover),
                Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.person,size: 25,)),
                  )
                ),
                    Positioned(
                      bottom: 55,
                        child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(10),
                          child: const Text(
                          'Platforms',
                            style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                    ),
              ),
                    Positioned(
                      bottom: 35,
                        child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(10),
                          child: const Text(
                          'Find the right learning platform for you',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                      itemCount: name.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(width: 10,),
                                  Text(name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                  SizedBox(width: 150,),
                                  Expanded(child: Image.asset(images[index],height: 60,width: 60,)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 8,),
                                  RatingBar(
                                      initialRating: 5,
                                      maxRating: 5,
                                      itemCount: 5,
                                      itemSize: 30,
                                      allowHalfRating: true,
                                      direction:Axis.horizontal,
                                      ratingWidget: RatingWidget(
                                          full: Icon(Icons.star,color: Colors.amber,),
                                          half: Icon(Icons.star_half,color: Colors.amber,),
                                          empty: Icon(Icons.star_border,color: Colors.amber,)),
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                      onRatingUpdate: (rating){
                                        print(rating);
                                      }),
                                  SizedBox(width: 8,),
                                  Text(rating[index],style: TextStyle(fontSize: 18),)
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 40,
                                    width: 100,
                                    child: Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      color: Color(0xff2962ff),
                                      child: Center(child: Text(money[index],style: TextStyle(color: Colors.white,fontSize: 20,),)),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 6,),
                              Column(
                                children: [
                                  Text('Hello  it\'s the free learning app for elementary school.'
                                      'A complete all-in-one curriculum for all subjects: '
                                      'English literacy, reading and writing, math etc from kindergarten to grade 6.',
                                    style: TextStyle(fontSize: 16),),
                                  SizedBox(height: 10,)
                                ],
                              )
                            ],
                          ),
                        );
                      })

                ),
              )
            ]
          )
        )
    );
  }
}
