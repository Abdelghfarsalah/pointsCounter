import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/states.dart';

class cubitCounter extends Cubit<parent>{
  cubitCounter(): super(changeINzamalek());
  int za=0;
  int ah=0;

  void zamalekfunction(int n)
  {
    za+=n;
    emit(changeINzamalek());
  }
  void ahlykfunction(int n)
  {
    ah+=n;
    emit(changeINahly());
  }
  void zero()
  {
    ah=0;
    za=0;
    emit(zeros());
  }
}