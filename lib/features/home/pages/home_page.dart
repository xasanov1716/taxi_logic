import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double distance = 0;
  double fiveDistance = 0;
  double fiveToTenDistance = 0;
  double lastDistance = 0;
  
  String summa = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.send),
        onPressed: (){
          summa = '';
          setState(() {
          });
        },
      ),
      body: Column(children: [
        Expanded(child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value){
                distance = double.parse(value);
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: 'Yolda qancha masofa bor',
                labelText: 'Yolda qancha masofa bor (m)',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:const  BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value){
                fiveDistance = double.parse(value);
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: '5km gacha qancha narx tolamoqchisiz (som)',
                labelText: '5km gacha qancha narx tolamoqchisiz (som)',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:const  BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value){
                fiveToTenDistance = double.parse(value);
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: '5km dan 10km gacha qancha narx tolamoqchisiz (som)',
                labelText: '5km dan 10km gacha qancha narx tolamoqchisiz (som)',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:const  BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value){
                lastDistance = double.parse(value);
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: '10km dan oxirgi manzilgacha qancha tolamoqchisiz (som)',
                labelText: '10km dan oxirgi manzilgacha qancha tolamoqchisiz (som)',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:const  BorderSide(color:  Color(0xFFE7ECF3), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
          ),
        ],)),
        Text(summa),
        GestureDetector(
          onTap: (){
            setState(() {
            });
            summa = '';
            calculate();
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.blue)
            ),
            child:  const Center(child: Text('Summa',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)),
          ),
        ),
        const SizedBox(height: 200,)
      ],),
    );
  }


  void calculate(){
  double sum = 0;
    if(distance <= 5.0){
      sum += fiveDistance;
    }else if(fiveToTenDistance >= 5.0){
      sum += fiveToTenDistance;
      distance -= fiveDistance;
      sum += (fiveToTenDistance / 5.0) * distance;
    }else{
     sum += (fiveDistance / 5.0) * distance;
    }
    summa  = sum.toString();
    setState(() {

    });
  }
}
