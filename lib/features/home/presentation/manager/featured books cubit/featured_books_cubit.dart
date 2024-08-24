import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    print("Fetching featured books...");
    emit(FeaturedBooksLoading()); // Emit loading state

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        print("Failed to fetch books: ${failure.errorMessage}");
        emit(FeaturedBooksFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        print("Successfully fetched books: ${books.length}");
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
