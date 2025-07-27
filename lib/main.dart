import 'package:bookly_flutter_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/app_router.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'features/home/presentation/manager/newest_books/newest_books_cubit.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FeaturedBooksCubit>(
          create:
              (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService(Dio()))),
        ),
        BlocProvider<NewestBooksCubit>(
          create:
              (context) => NewestBooksCubit(HomeRepoImpl(ApiService(Dio()))),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly',
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
