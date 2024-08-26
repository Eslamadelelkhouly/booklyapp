import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/service_locater.dart';
import 'package:booklyapp/features/home/data/repos/home_repo_implementaion.dart';
import 'package:booklyapp/features/home/presentation/manager/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SetupSeriveLocater();
  runApp(const Booklyapp());
}

class Booklyapp extends StatelessWidget {
  const Booklyapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cubit = FeaturedBooksCubit(getIt.get<HomeRepoImplementaion>());
            cubit.fetchFeaturedBooks(); // Fetch books after Cubit creation
            return cubit;
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,

        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
