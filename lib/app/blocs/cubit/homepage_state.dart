// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'homepage_cubit.dart';

class HomepageState extends Equatable {
  int selectedPage;
  HomepageState({
    required this.selectedPage,
  });

  @override
  List<Object> get props => [
        selectedPage,
      ];

  HomepageState copyWith({
    int? selectedPage,
  }) {
    return HomepageState(
      selectedPage: selectedPage ?? this.selectedPage,
    );
  }
}
