import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    print("Fetching featured books...");
    emit(SimilarBooksLoading()); // Emit loading state

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        print("Failed to fetch books: ${failure.errorMessage}");
        emit(SimilarBooksFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        print("Successfully fetched books: ${books.length}");
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
