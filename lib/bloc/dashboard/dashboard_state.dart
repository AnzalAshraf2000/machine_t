part of 'dashboard_cubit.dart';

 class DashboardState extends Equatable {
   final List<ListItem> person;
  const DashboardState({
    this.person = const <ListItem>[],
  });


DashboardState copyWith({
 List<ListItem>? person,
  // bool? isPress,
 }){
  return DashboardState(
   person : person ?? this.person,
  );
}



  @override
  List<Object> get props => [
    person
  ];
}

