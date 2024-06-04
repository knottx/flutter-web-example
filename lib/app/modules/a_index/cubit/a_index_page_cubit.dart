import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/modules/a_index/cubit/a_index_page_state.dart';

class AIndexPageCubit extends Cubit<AIndexPageState> {
  AIndexPageCubit() : super(const AIndexPageState());

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
