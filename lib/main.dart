import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:qaren/screens/app/home/bn_screen/categories_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/qaren_product_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/qaren_result_screen.dart';
import 'package:qaren/screens/app/home/cart/my_cart_screen.dart';
import 'package:qaren/screens/app/home/cart/note_screen.dart';
import 'package:qaren/screens/app/home/main_screen.dart';
import 'package:qaren/screens/app/home/qr_code/qr_code_result_screen.dart';
import 'package:qaren/screens/app/home/qr_code/qr_code_screen.dart';
import 'package:qaren/screens/app/home/settings/about_us_screen.dart';
import 'package:qaren/screens/app/home/settings/add_address_screen.dart';
import 'package:qaren/screens/app/home/settings/change_country_screen.dart';
import 'package:qaren/screens/app/home/settings/change_language_screen.dart';
import 'package:qaren/screens/app/home/settings/contact_us_screen.dart';
import 'package:qaren/screens/app/home/settings/edit_email_screen.dart';
import 'package:qaren/screens/app/home/settings/faq_screen.dart';
import 'package:qaren/screens/app/home/settings/loyalty_screen.dart';
import 'package:qaren/screens/app/home/settings/my_order_screen.dart';
import 'package:qaren/screens/app/home/settings/my_profile_screen.dart';
import 'package:qaren/screens/app/home/settings/order_details_screen.dart';
import 'package:qaren/screens/app/home/settings/privacy_policy_screen.dart';
import 'package:qaren/screens/app/home/settings/promo_code_screen.dart';
import 'package:qaren/screens/app/home/settings/rate_screen.dart';
import 'package:qaren/screens/app/home/settings/referrel_screen.dart';
import 'package:qaren/screens/app/home/settings/settings_screen.dart';
import 'package:qaren/screens/app/home/settings/statistics_screen.dart';
import 'package:qaren/screens/app/home/settings/track_screen.dart';
import 'package:qaren/screens/app/home/settings/user_manual_screen.dart';
import 'package:qaren/screens/app/notifications/notifications_screen.dart';
import 'package:qaren/screens/app/notifications/notifications_settings_screen.dart';
import 'package:qaren/screens/app/pool/opinion_pool_screen.dart';
import 'package:qaren/screens/app/pool/qustion_screen.dart';
import 'package:qaren/screens/app/pool/rate_service_screen.dart';
import 'package:qaren/screens/app/pool/suggest_screen.dart';
import 'package:qaren/screens/app/store/branch_screen.dart';
import 'package:qaren/screens/app/store/work_hour_screen.dart';
import 'package:qaren/screens/auth/forget_password_screen.dart';
import 'package:qaren/screens/auth/login_screen.dart';
import 'package:qaren/screens/auth/forget_password_verify_screen.dart';
import 'package:qaren/screens/auth/reset_password_screen.dart';
import 'package:qaren/screens/auth/sign_up_screen.dart';
import 'package:qaren/screens/auth/signup_pages/hear_about_us_screen.dart';
import 'package:qaren/screens/auth/signup_pages/payments_method_screen.dart';
import 'package:qaren/screens/auth/signup_pages/professional_planes_screen.dart';
import 'package:qaren/screens/auth/signup_pages/terms_conditions_screen.dart';
import 'package:qaren/screens/core/launch_screen.dart';
import 'package:qaren/screens/out_boarding/out_boarding_screen.dart';
import 'package:qaren/screens/app/home/bn_screen/qaren_all_results_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // HttpOverrides.global = MyHttpOverrides();
  // await SharedPreferencesController().initialize();
  // await DbProvider().initDatabase();
  // await Firebase.initializeApp();
  // await FbNotifications.initNotifications();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MyMaterialApp();
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              centerTitle: true,
            ),
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.white,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10),
                  topEnd: Radius.circular(10),
                ),
              ),
            ),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          locale: const Locale('en'),
          supportedLocales: const [
            Locale('en'),
          ],
          debugShowCheckedModeBanner: false,
          initialRoute: '/main_screen',
          routes: {
            '/launch_screen': (context) => const LaunchScreen(),
            '/out_boarding_screen': (context) => const OutBoardingScreen(),
            '/login_screen': (context) => const LoginScreen(),
            '/signup_screen': (context) => const SignUpScreen(),
            '/terms_and_conditions_screen': (context) => const TermsAndConditionsScreen(),
            '/forget_password_screen': (context) => const ForgetPasswordScreen(),
            '/reset_password_screen': (context) => const ResetPasswordScreen(),
            '/forget_password_verify_screen': (context) => const ForgetPasswordVerifyScreen(),
            '/main_screen': (context) => const MainScreen(),
            '/notifications_screen': (context) => const NotificationsScreen(),
            '/notifications_settings_screen': (context) => const NotificationsSettingsScreen(),
            '/categories_screen': (context) => const CategoriesScreen(),
            '/professional_planes_screen': (context) => const ProfessionalPlanesScreen(),
            '/payments_method_screen': (context) => const PaymentsMethodScreen(),
            '/hear_about_us_screen': (context) => const HearAboutUsScreen(),
            '/qr_code_screen': (context) => const QrCodeScreen(),
            '/qr_code_result_screen': (context) => const QrCodeResultScreen(),
            '/test_screen': (context) =>  const QarenAllResultsScreen(),
            '/settings_screen': (context) =>  const SettingsScreen(),
            '/about_us_screen': (context) =>  const AboutUsScreen(),
            '/terms_and_conditions_screen': (context) =>  const TermsAndConditionsScreen(),
            '/privacy_policy_screen': (context) =>  const PrivacyPolicyScreen(),
            '/statistics_screen': (context) =>  const StatisticsScreen(),
            '/change_language_screen': (context) =>  const ChangeLanguageScreen(),
            '/change_country_screen': (context) =>  const ChangeCountryScreen(),
            '/work_hour_screen': (context) =>  const WorkHourScreen(),
            '/branch_screen': (context) =>  const BranchScreen(),
            '/cart_screen': (context) =>  const MyCartScreen(),
            '/note_screen': (context) =>  const NoteScreen(),
            '/my_profile_screen': (context) =>  const MyProfile(),
            '/add_address_screen': (context) =>  const AddAddressScreen(),
            '/edit_email_screen': (context) =>  const EditEmailScreen(),
            '/user_manual_screen': (context) =>  const UserManualScreen(),
            '/contact_us_screen': (context) =>  const ContactUsScreen(),
            '/faq_screen': (context) =>  const FaqScreen(),
            '/referrel_screen': (context) =>  const ReferrelScreen(),
            '/rate_screen': (context) =>  const RateScreen(),
            '/my_order_screen': (context) =>  const MyOrderScreen(),
            '/order_details_screen': (context) =>  const OrderDetailsScreen(),
            '/track_screen': (context) =>  const TrackScreen(),
            '/promo_code_screen': (context) =>  const PromoCodeScreen(),
            '/loyalty_screen': (context) =>  const LoyaltyScreen(),
            '/qaren_all_screen': (context) =>  const QarenAllResultsScreen(),
            '/qaren_result_screen': (context) =>  const QarenResultScreen(),
            '/qaren_product_screen': (context) =>  const QarenProductScreen(),
            '/opinion_pool_screen': (context) =>  const OpinionPoolScreen(),
            '/qustion_screen': (context) =>  const QustionScreen(),
            '/suggest_screen': (context) =>  const SuggestScreen(),
            '/rate_service_screen': (context) =>  const RateServiceScreen(),
          },
        );
      },
      // child: const HomePage(title: 'First Method'),
    );
  }
}
