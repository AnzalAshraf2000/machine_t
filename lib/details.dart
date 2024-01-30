import 'package:flutter/material.dart';

class Details extends StatefulWidget {
 final String dName;
 final String dNumber;
 final String dAddress;
 final bool isFav;
 final Function() onTapDetFav;

  const Details({super.key,
    required this.dName,
    required this.dNumber,
    required this.dAddress,
    required this.isFav,
    required this.onTapDetFav});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
     body: Column(crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Center(child: Icon(Icons.person_outline_rounded,size: 250,)),
         Divider(
           height: 10,
           thickness: 1,
           color: Colors.black,
         ),
         SizedBox(height: 10,),
         Row(
           children: [
             Text('     ${widget.dName}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             SizedBox(width: 200,),
             GestureDetector(
               onTap: widget.onTapDetFav,
                 child: widget.isFav? Icon(Icons.favorite_border,size: 35,):
                 Icon(Icons.favorite,size: 35,color: Colors.red,))
           ],
         ),
         SizedBox(height: 10,),
         Text('    Phone : ${widget.dNumber}'),
         SizedBox(height: 10,),
         Text('    Address : ${widget.dAddress}')
       ],
     ),
    );
  }
}
