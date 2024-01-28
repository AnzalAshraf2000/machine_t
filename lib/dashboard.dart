import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/dashboard/dashboard_cubit.dart';
import 'package:machine_test/details.dart';

class DashBoard extends StatefulWidget {

  DashBoard({super.key});


  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  // final List<Map<String, dynamic>> profiles = [
  //   {
  //     "name": "Hussain",
  //     "phno": "9995559996",
  //     "image": "link"
  //   },
  //   {
  //     "name": "Rahul",
  //     "phno": "999999999",
  //     "image": "link"
  //   },
  //   {
  //     "name": "Sravan",
  //     "phno": "7894561230",
  //     "image": "link"
  //   },
  //   {
  //     "name": "adheena",
  //     "phno": "1478529630",
  //     "image": "link"
  //   },
  //   {
  //     "name": "sharik",
  //     "phno": "9632174850",
  //     "image": "link"
  //   },
  //   {
  //     "name": "anandu",
  //     "phno": "4567890123",
  //     "image": "link"
  //   },
  //   {
  //     "name": "maxwell",
  //     "phno": "2365897410",
  //     "image": "link"
  //   },
  //   {
  //     "name": "smith",
  //     "phno": "0231568749",
  //     "image": "link"
  //   }
  // ];

  @override
  void initState() {
    context.read<DashboardCubit>().onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Dashboard', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.favorite, color: Colors.red, size: 40,)
        ],
      ),


      body: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.personList.length,
            itemBuilder: (context, index) {
              return ProfileContainer(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            Details(dName: state.personList[index].name,
                                dNumber: state.personList[index].phoneNumber,
                                dAddress: state.personList[index].address)),
                  );
                },
                name: state.personList[index].name,
                phNo: state.personList[index].phoneNumber,
                // image: state.personList[index].address,
                // name: profiles[index]['name'],
                // phno: profiles[index]['phno'],
                // image: profiles[index]['image'],
              );
            },
          );
        },
      ),


    );
  }
}

class ProfileContainer extends StatefulWidget {
  final String? name;
  final String? phNo;
  // final String? image;
  final Function() onTap;

  const ProfileContainer({super.key,
    this.name,
    this.phNo,
    // this.image,
    required this.onTap,
  });

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person, size: 40),
          Column(
            children: [
              Text(widget.name.toString()),
              Text(widget.phNo.toString())
            ],
          ),
          GestureDetector(
              child: Icon(Icons.favorite, color: Colors.red, size: 40,)),
          GestureDetector(
            child: Icon(Icons.play_arrow_outlined, size: 40,),
            onTap: widget.onTap,)
        ],
      ),
    );
  }
}

