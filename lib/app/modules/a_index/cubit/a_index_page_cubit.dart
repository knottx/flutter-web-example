import 'package:flutter_web_example/app/modules/a_index/cubit/a_index_page_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AIndexPageCubit extends HydratedCubit<AIndexPageState> {
  AIndexPageCubit() : super(const AIndexPageState());

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }

  @override
  AIndexPageState? fromJson(Map<String, dynamic> json) {
    return AIndexPageState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AIndexPageState state) {
    return state.toJson();
  }
}
