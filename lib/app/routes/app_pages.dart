import 'package:get/get.dart';

import '../modules/root/bindings/root_binding.dart';
import '../modules/root/views/root_view.dart';
import '../modules/view_collect/collect/bindings/collect_binding.dart';
import '../modules/view_collect/collect/views/collect_view.dart';
import '../modules/view_collect/play_list/bindings/play_list_binding.dart';
import '../modules/view_collect/play_list/views/play_list_view.dart';
import '../modules/view_event/event/bindings/event_binding.dart';
import '../modules/view_event/event/views/event_view.dart';
import '../modules/view_event/event_detail/bindings/event_detail_binding.dart';
import '../modules/view_event/event_detail/views/event_detail_view.dart';
import '../modules/view_home/home/bindings/home_binding.dart';
import '../modules/view_home/home/views/home_view.dart';
import '../modules/view_music/music/bindings/music_binding.dart';
import '../modules/view_music/music/views/music_view.dart';
import '../modules/view_play/play/bindings/play_binding.dart';
import '../modules/view_play/play/views/play_view.dart';
import '../modules/view_profile/profile/bindings/profile_binding.dart';
import '../modules/view_profile/profile/views/profile_view.dart';
import '../modules/view_profile/settings/bindings/settings_binding.dart';
import '../modules/view_profile/settings/views/settings_view.dart';
import '../modules/view_search/search/bindings/search_binding.dart';
import '../modules/view_search/search/views/search_view.dart';
import '../modules/view_sign_in/bindings/view_sign_in_binding.dart';
import '../modules/view_sign_in/views/view_sign_in_view.dart';
import '../modules/view_splash/bindings/view_splash_binding.dart';
import '../modules/view_splash/views/view_splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;

  static final routes = [
    GetPage(
      name: _Paths.ROOT,
      page: () => RootView(),
      binding: RootBinding(),
      bindings: [EventBinding(), CollectBinding()],
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.COLLECT,
      page: () => CollectView(),
      binding: CollectBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.MUSIC,
      page: () => MusicView(),
      binding: MusicBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_DETAIL,
      page: () => EventDetailView(),
      binding: EventDetailBinding(),
    ),
    GetPage(
      name: _Paths.PLAY,
      page: () => PlayView(),
      binding: PlayBinding(),
    ),
    GetPage(
      name: _Paths.PLAY_LIST,
      page: () => PlayListView(),
      binding: PlayListBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_SIGN_IN,
      page: () => ViewSignInView(),
      binding: ViewSignInBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_SPLASH,
      page: () => ViewSplashView(),
      binding: ViewSplashBinding(),
    ),
  ];
}
