import 'package:darul_falah/core/commons/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<PageItem> {
  BottomNavCubit() : super(PageItem.home);

  void getHomeScreen() => emit(PageItem.home);
  void getAlumniScreen() => emit(PageItem.alumni);
  void getChatScreen() => emit(PageItem.chat);
  void getSearchScreen() => emit(PageItem.search);
}
