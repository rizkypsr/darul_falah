import 'package:darul_falah/core/commons/constants.dart';
import 'package:darul_falah/features/calendar/presentation/calendar_screen.dart';
import 'package:darul_falah/features/faq/presentation/faq_screen.dart';
import 'package:darul_falah/features/home/presentation/home_screen.dart';
import 'package:darul_falah/features/alumni/domain/entities/alumni.dart';
import 'package:darul_falah/features/alumni/presentation/alumni_detail_screen.dart';
import 'package:darul_falah/features/chat/presentation/chat_detail_screen.dart';
import 'package:darul_falah/features/chat/presentation/chat_screen.dart';
import 'package:darul_falah/features/auth/presentation/login_screen.dart';
import 'package:darul_falah/features/member/presentation/qr_member_screen.dart';
import 'package:darul_falah/features/notification/presentation/notification_screen.dart';
import 'package:darul_falah/features/profile/presentation/edit_card_screen.dart';
import 'package:darul_falah/features/profile/presentation/edit_profile_screen.dart';
import 'package:darul_falah/features/profile/presentation/follower_screen.dart';
import 'package:darul_falah/features/profile/presentation/following_screen.dart';
import 'package:darul_falah/features/profile/presentation/profile_screen.dart';
import 'package:darul_falah/features/auth/presentation/register_screen.dart';
import 'package:darul_falah/features/search/presentation/search_screen.dart';
import 'package:darul_falah/features/home/presentation/streak_screen.dart';
import 'package:darul_falah/features/shop/presentation/cart_screen.dart';
import 'package:darul_falah/features/shop/presentation/detail_product_screen.dart';
import 'package:darul_falah/features/shop/presentation/shop_screen.dart';
import 'package:darul_falah/features/topic/presentation/topic_detail_screen.dart';
import 'package:darul_falah/core/presentation/widgets/video_screen.dart';
import 'package:flutter/material.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case streakRoute:
        return MaterialPageRoute(builder: (_) => const StreakScreen());
      case chatRoute:
        return MaterialPageRoute(builder: (_) => const ChatScreen());
      case chatDetailRoute:
        return MaterialPageRoute(builder: (_) => const ChatDetailScreen());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case editProfileRoute:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case editCardRoute:
        return MaterialPageRoute(builder: (_) => const EditCardScreen());
      case searchRoute:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case topicDetailRoute:
        return MaterialPageRoute(builder: (_) => const TopicDetailScreen());
      case qrMemberRoute:
        return MaterialPageRoute(builder: (_) => const QrMemberScreen());
      case followerRoute:
        return MaterialPageRoute(builder: (_) => const FollowerScreen());
      case followingRoute:
        return MaterialPageRoute(builder: (_) => const FollowingScreen());
      case calendarRoute:
        return MaterialPageRoute(builder: (_) => const CalendarScreen());
      case faqRoute:
        return MaterialPageRoute(builder: (_) => const FaqScreen());
      case notificationRoute:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case shopRoute:
        return MaterialPageRoute(builder: (_) => const ShopScreen());
      case shopDetailRoute:
        return MaterialPageRoute(builder: (_) => const DetailProductScreen());
      case cartRoute:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case alumniDetailRoute:
        var data = settings.arguments as Alumni;
        return MaterialPageRoute(
            builder: (_) => AlumniDetailScreen(
                  alumni: data,
                ));
      case materiVideoRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => VideoScreen(
                  video: data,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
