import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/dashboard/dashboard_cubit.dart';

class Details extends StatefulWidget {
 final String dName;
 final String dNumber;
 final String dAddress;
 final bool isFavDet;
 // final Function() onTapDetFav;
 final int index;

  const Details({super.key,
    required this.dName,
    required this.dNumber,
    required this.dAddress,
    required this.isFavDet,
    // required this.onTapDetFav,
  required this.index,
  });

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    bool isFavTemp=widget.isFavDet;
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
               onTap: (){
                 setState(() {
                   context.read<DashboardCubit>().favChange(widget.index);
                 });
               },
                 child: isFavTemp? Icon(Icons.favorite_border,size: 35,):
                 Icon(Icons.favorite,size: 35,color: Colors.red,))
           ],
         ),
         SizedBox(height: 10,),
         Text('    Phone : ${widget.dNumber}'),
         SizedBox(height: 10,),
         Text('    Address : ${widget.dAddress}'),
       ],
     ),
    );
  }
}
