import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/list_models.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState());

  List<ListItem> listPerson = [
    ListItem(
      name: "Hussain",
      phoneNumber: "9995559996",
      address: "123 Main St",
      isFavorite: true,
    ),
    ListItem(
      name: "Rahul",
      phoneNumber: "7025867355",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Sravan",
      phoneNumber: "7894561230",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Adheena",
      phoneNumber: "9865754213",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Sharik",
      phoneNumber: "9632174850",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Anandu",
      phoneNumber: "9516795621",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Maxwell",
      phoneNumber: "7590915675",
      address: "789 Oak St",
      isFavorite: true,
    ),
    ListItem(
      name: "Smith",
      phoneNumber: "8549247015",
      address: "789 Oak St",
      isFavorite: true,
    ),
  ];
  int i=0;


  void onInit(){
    if(i==0){
      i++;
      emit(state.copyWith(person: listPerson));
    }
 }

 void favChange(int index)
 {
   listPerson[index].isFavorite=!listPerson[index].isFavorite;
   print(listPerson[index].isFavorite);
   emit(state.copyWith(person: listPerson));
 }

}
