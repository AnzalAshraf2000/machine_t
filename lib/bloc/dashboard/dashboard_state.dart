part of 'dashboard_cubit.dart';

 class DashboardState extends Equatable {
   final List<ListItem> personList;
  const DashboardState({
    this.personList = const <ListItem>[],
  });


DashboardState copyWith({
 List<ListItem>? personList,
  bool? isPress,
 }){
  return DashboardState(
   personList : personList ?? this.personList,
  );
}



  @override
  List<Object> get props => [
    personList
  ];
}

