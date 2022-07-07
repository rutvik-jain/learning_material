import 'package:flutter/material.dart';

class Lessons extends StatefulWidget {
  const Lessons({Key? key}) : super(key: key);

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {

  List<String> subjects = [
    "Maths", "HTML", "JavaScript", "PHP", "NodeJs", "AngularJs", "Java",
    "Python", "C++","10 More", "iOS", "Flutter","Hadoop", "Devops", "Android","English",
  ];

  List<Icon> icons = [const Icon( Icons.emoji_symbols, ),const Icon(Icons.html),
    const Icon(Icons.javascript),const Icon(Icons.php),
    const Icon(Icons.computer),const Icon(Icons.laptop),
    const Icon(Icons.coffee),const Icon(Icons.code),
    const Icon(Icons.code_sharp),const Icon(Icons.add),
    const Icon(Icons.phone_iphone), const Icon(Icons.flutter_dash),
    const Icon(Icons.code_rounded),const Icon(Icons.developer_mode),
    const Icon(Icons.android),const Icon(Icons.language),];

  void _modalBottomSheet(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        useRootNavigator: true,
        context: context,
        builder: (BuildContext context){
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Learning Material',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,),),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Which subject are you looking for?',style: TextStyle(color: Colors.grey,fontSize: 20),),
              ),
              Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: subjects.length >10? subjects.length:10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2.5,
                    ),
                    itemBuilder: (BuildContext context,int index) {
                      return Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: icons[index]),
                            Text(subjects[index],
                              style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      );
                    }
                ),
              ),
            ],
          );
        });
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderView(),
            const SizedBox(height: 10,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: subjects.length < 10? subjects.length: 10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2.5,
                    ),
                    itemBuilder: (BuildContext context,int index){
                      return GestureDetector(
                        onTap: (){
                          if(index >=9) {
                            _modalBottomSheet();
                          }
                          else {
                          }
                        },
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: icons[index]),
                              Text(subjects[index],
                                style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),
            // SizedBox(
            //   width: 200,
            //   height: 200,
            //   child: ListView.builder(
            //       itemCount: subjects.length,
            //       padding: const EdgeInsets.only(),
            //       physics: const BouncingScrollPhysics(),
            //       itemBuilder: (context,index){
            //     return Row(
            //       children: [
            //         Text(subjects[index]),
            //         IconButton(onPressed: (){}, icon: icons[index]),
            //       ],
            //     );
            //   }),
            // )
          ],
        ),
      ),
    );
  }
  Widget HeaderView() {
    return Stack(
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
                  onPressed: () {},
                  icon: Icon(Icons.person, size: 25,)),
            )),
        Positioned(
          bottom: 70,
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Learning Material',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          bottom: 48,
          child: Container(
            width: 300,
            //color: Colors.black54,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Search For Learning Material',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          heightFactor: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 24.0,
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                hintText: "Search for terms like 'Geometry'",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                contentPadding: const EdgeInsets.all(15),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white,
                  ), borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
