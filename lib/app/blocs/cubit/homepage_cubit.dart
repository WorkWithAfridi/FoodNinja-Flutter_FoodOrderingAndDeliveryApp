import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'homepage_state.dart';

class HomepageCubit extends Cubit<HomepageState> {
  HomepageCubit()
      : super(
          HomepageState(
            selectedPage: 0,
          ),
        );

  void changeHomepage(int index) {
    emit(
      state.copyWith(
        selectedPage: index,
      ),
    );
  }
}
