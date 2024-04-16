import 'package:calculatemarks/util.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Marks Calculate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.teal
      ),
      home: const CalculateMarck(),
    );
  }
}

class CalculateMarck extends StatefulWidget{
  const CalculateMarck({super.key});
  @override
  State<CalculateMarck> createState() => _CalculateMarckState();
}

class _CalculateMarckState extends State<CalculateMarck> {
  var marks1 =TextEditingController();
  var marks2 =TextEditingController();
  var marks3 =TextEditingController();
  var marks4 =TextEditingController();
  var marks5 =TextEditingController();
  var marks6 =TextEditingController();
  var total="";
  var per ="";
  var resulat ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate Marks',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Marks1 and 2 TextField Start
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(
                children: [
                  MarckField.Customtxt(marks1, 'Enter The Marks 1', 'Marks1', Icons.create_outlined),
                  const SizedBox(width: 20,),
                  MarckField.Customtxt(marks2, 'Enter The Marks 2', 'Marks2', Icons.create_outlined),
                ],
              ),
            ),
            //Marks3 and 4 TextField  Start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                children: [

                  MarckField.Customtxt(marks3, 'Enter The Marks 3', 'Marks3', Icons.create_outlined),
                  const SizedBox(width: 20,),
                  MarckField.Customtxt(marks4, 'Enter The Marks 4', 'Marks4', Icons.create_outlined),
                ],
              ),
            ),
            //Marks5 and 6 TextField  Start
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Row(
                children: [
                  MarckField.Customtxt(marks5, 'Enter The Marks 5', 'Marks5', Icons.create_outlined),
                  const SizedBox(width: 20,),
                  MarckField.Customtxt(marks6, 'Enter The Marks 6', 'Marks6', Icons.create_outlined),
                ],
              ),
            ),
            //Button Start
            const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(onPressed: (){
                if(marks1.text.toString()=="")
                {
                  final snackbar = SnackBar(
                    backgroundColor: Colors.red,
                      action: SnackBarAction(textColor: Colors.white,label: 'OK', onPressed: (){}),
                      content: const Text('Please Enter The Marks 1',style: TextStyle(color: Colors.white))
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  setState(() {

                  });
                }
                else if(marks2.text.toString()==""){
                  final snckbar = SnackBar(
                    content:const Text('Please Enter The Marks 2',style: TextStyle(color: Colors.white)),
                    action: SnackBarAction(textColor: Colors.white,label: 'OK', onPressed: () {},),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snckbar);
                  setState(() {

                  });
                }
                else if(marks3.text.toString()==""){
                  final snackbar =SnackBar(
                    content:const Text('Please Enter The Marks 3',style: TextStyle(color: Colors.white)),
                    action: SnackBarAction(textColor: Colors.white,label: 'OK', onPressed: (){}),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  setState(() {

                  });
                }
                else if(marks4.text.toString()==""){
                  final snackbar =SnackBar(
                    content: const Text('Please Enter The Marks 4',style: TextStyle(color: Colors.white)),
                    action: SnackBarAction(textColor: Colors.white,label: 'OK', onPressed: (){}),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  setState(() {});
                }
                else if(marks5.text.toString()==""){
                  final snackbar =SnackBar(
                    content: const Text('Please Enter The Marks 5',style: TextStyle(color: Colors.white)),
                    action: SnackBarAction(
                        textColor: Colors.white,
                        label: 'OK', onPressed: (){}),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  setState(() {});
                }
                else if(marks6.text.toString()==""){
                  final snackbar = SnackBar(
                    content: const Text('Please Enter The Marks 6',style: TextStyle(color: Colors.white)),
                    action: SnackBarAction(textColor: Colors.white,label: 'OK', onPressed: () {},),
                    backgroundColor: Colors.red,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  setState(() {});
                }

                else{
                  var m1 = int.parse(marks1.text.toString());
                  var m2 = int.parse(marks2.text.toString());
                  var m3 = int.parse(marks3.text.toString());
                  var m4 = int.parse(marks4.text.toString());
                  var m5 = int.parse(marks5.text.toString());
                  var m6 = int.parse(marks6.text.toString());

                  var sum = m1+m2+m3+m4+m5+m6;
                  var pr = sum/6;
                  total ="$sum";
                  per ="${pr.toStringAsFixed(2)}%";
                  if(pr >= 34){
                    resulat ="PASS";
                  }
                  else{
                    resulat ="FAIL";
                  }
                  setState(() {});
                }
              },
                style: ButtonStyle(
                  shape: const MaterialStatePropertyAll(LinearBorder.none),
                  backgroundColor: MaterialStatePropertyAll(Theme.of(context).primaryColor),
                ), child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Calculate Marks ',style: TextStyle(fontSize: 19,color: Colors.white),),
                ),
              ),
            ),
            //Button End....
            const SizedBox(height: 10,),
            //Total Text Show Start
            Container(
                alignment: Alignment.center,
                child: Text('Total: $total ',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19,),)),
            const SizedBox(height: 10,),
            //Average Text Show Start
            Container(
                alignment: Alignment.center,
                child: Text('Percentage: $per',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
            const SizedBox(height: 10,),
            //Result Text Show Start
            Container(
                alignment: Alignment.center,
                child: Text('Result: $resulat',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
          ],
        ),
      ),
    );
  }
}





