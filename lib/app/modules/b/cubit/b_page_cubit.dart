import 'package:flutter_web_example/app/modules/b/cubit/b_page_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class BPageCubit extends HydratedCubit<BPageState> {
  BPageCubit() : super(const BPageState());

  @override
  BPageState? fromJson(Map<String, dynamic> json) {
    return BPageState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(BPageState state) {
    return state.toJson();
  }

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }
}
