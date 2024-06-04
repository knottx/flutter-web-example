import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/app/modules/a_detail/cubit/a_detail_page_state.dart';

class ADetailPageCubit extends Cubit<ADetailPageState> {
  ADetailPageCubit({
    required String id,
  }) : super(ADetailPageState(id: id));

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
