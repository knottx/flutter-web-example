import 'package:flutter_web_example/app/modules/a_detail/cubit/a_detail_page_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ADetailPageCubit extends HydratedCubit<ADetailPageState> {
  ADetailPageCubit({
    required String id,
  }) : super(ADetailPageState(id: id)) {
    emit(state.copyWith(id: id));
  }

  void increment() {
    emit(state.copyWith(count: state.count + 1));
  }

  @override
  ADetailPageState? fromJson(Map<String, dynamic> json) {
    final s = ADetailPageState.fromJson(json);
    return (s.id == state.id) ? s : null;
  }

  @override
  Map<String, dynamic>? toJson(ADetailPageState state) {
    return state.toJson();
  }
}
