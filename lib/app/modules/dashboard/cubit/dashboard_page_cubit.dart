import 'package:flutter_web_example/app/modules/dashboard/cubit/dashboard_page_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class DashboardPageCubit extends HydratedCubit<DashboardPageState> {
  DashboardPageCubit() : super(const DashboardPageState());

  @override
  DashboardPageState? fromJson(Map<String, dynamic> json) {
    return DashboardPageState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DashboardPageState state) {
    return state.toJson();
  }

  void setSelectedIndex(int newIndex) {
    emit(state.copyWith(selectedIndex: newIndex));
  }
}
