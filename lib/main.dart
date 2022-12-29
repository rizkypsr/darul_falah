import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/core/commons/enums.dart';
import 'package:darul_falah/core/commons/router.dart';
import 'package:darul_falah/core/styles/theme_data.dart';
import 'package:darul_falah/core/presentation/cubit/bottom_nav_cubit.dart';
import 'package:darul_falah/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:darul_falah/features/home/presentation/home_screen.dart';
import 'package:darul_falah/features/alumni/presentation/alumni_screen.dart';
import 'package:darul_falah/features/chat/presentation/chat_screen.dart';
import 'package:darul_falah/features/auth/presentation/login_screen.dart';
import 'package:darul_falah/features/search/presentation/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:darul_falah/injection.dart' as di;

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    PageItem currentPage = PageItem.home;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (_) => di.locator<AuthCubit>()..checkLoginState(),
        ),
        BlocProvider<BottomNavCubit>(
          create: (_) => di.locator<BottomNavCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pondok Darul Falah',
        theme: themeData,
        onGenerateRoute: RouterGenerator.generateRoute,
        home: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is LoginErrorState) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is LoginErrorState) {
              return LoginScreen();
            } else if (state is UnlogedState) {
              return LoginScreen();
            } else if (state is LogedState) {
              return BlocBuilder<BottomNavCubit, PageItem>(
                builder: (context, state) {
                  currentPage = state;
                  return Scaffold(
                    body: _buildBody(state),
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.endDocked,
                    floatingActionButton: FloatingActionButton(
                      backgroundColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pushNamed(context, streakRoute);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/logo.png'),
                              fit: BoxFit.cover,
                            )),
                      ), //icon inside button
                    ),
                    bottomNavigationBar:
                        _buildBottomNavigationBar(context, currentPage),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildBody(PageItem item) {
    switch (item) {
      case PageItem.home:
        return HomeScreen();
      case PageItem.alumni:
        return AlumniScreen();
      case PageItem.chat:
        return ChatScreen();
      case PageItem.search:
        return SearchScreen();
      default:
        return HomeScreen();
    }
  }

  Widget _buildBottomNavigationBar(BuildContext context, PageItem currentPage) {
    return AnimatedBottomNavigationBar(
      iconSize: 20,
      icons: const [
        FontAwesomeIcons.house,
        FontAwesomeIcons.userGroup,
        FontAwesomeIcons.comment,
        FontAwesomeIcons.magnifyingGlass,
      ],
      notchMargin: -10,
      activeColor: violet[500],
      inactiveColor: violet[100],
      elevation: 0,
      backgroundColor: Colors.white,
      activeIndex: currentPage.index,
      onTap: (index) {
        switch (index) {
          case 0:
            context.read<BottomNavCubit>().getHomeScreen();
            break;
          case 1:
            context.read<BottomNavCubit>().getAlumniScreen();
            break;
          case 2:
            context.read<BottomNavCubit>().getChatScreen();
            break;
          case 3:
            context.read<BottomNavCubit>().getSearchScreen();
            break;
        }
      },
    );
  }
}
