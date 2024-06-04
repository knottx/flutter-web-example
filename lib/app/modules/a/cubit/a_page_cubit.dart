import 'package:flutter_web_example/app/modules/a/cubit/a_page_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class APageCubit extends HydratedCubit<APageState> {
  APageCubit() : super(const APageState());

  @override
  APageState? fromJson(Map<String, dynamic> json) {
    return APageState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(APageState state) {
    return state.toJson();
  }

  void increment() {
    if (state.count == 999) return;
    emit(state.copyWith(count: state.count + 1));
  }
}
