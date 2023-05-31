import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? NavBarPage() : OnboardingScreensWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? NavBarPage()
              : OnboardingScreensWidget(),
          routes: [
            FFRoute(
              name: 'postCreate',
              path: 'postCreate',
              builder: (context, params) => PostCreateWidget(),
            ),
            FFRoute(
              name: 'SelectOptions',
              path: 'selectOptions',
              builder: (context, params) => SelectOptionsWidget(),
            ),
            FFRoute(
              name: 'ThirstyLab',
              path: 'thirstyLab',
              builder: (context, params) => ThirstyLabWidget(),
            ),
            FFRoute(
              name: 'CreateProfile',
              path: 'createProfile',
              builder: (context, params) => CreateProfileWidget(),
            ),
            FFRoute(
              name: 'createNews',
              path: 'createNews',
              builder: (context, params) => CreateNewsWidget(),
            ),
            FFRoute(
              name: 'CreateThirstysode',
              path: 'createThirstysode',
              builder: (context, params) => CreateThirstysodeWidget(),
            ),
            FFRoute(
              name: 'createArtiste',
              path: 'createArtiste',
              builder: (context, params) => CreateArtisteWidget(),
            ),
            FFRoute(
              name: 'NewsSuccessful',
              path: 'newsSuccessful',
              builder: (context, params) => NewsSuccessfulWidget(),
            ),
            FFRoute(
              name: 'newsdetails',
              path: 'newsdetails',
              builder: (context, params) => NewsdetailsWidget(
                newsdetails: params.getParam('newsdetails',
                    ParamType.DocumentReference, false, ['news']),
              ),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'profile')
                  : ProfileWidget(),
            ),
            FFRoute(
              name: 'WearThirstyCustom',
              path: 'wearThirstyCustom',
              builder: (context, params) => WearThirstyCustomWidget(),
            ),
            FFRoute(
              name: 'Artistesuccessful',
              path: 'artistesuccessful',
              builder: (context, params) => ArtistesuccessfulWidget(),
            ),
            FFRoute(
              name: 'ThirstyLabCustom',
              path: 'thirstyLabCustom',
              builder: (context, params) => ThirstyLabCustomWidget(),
            ),
            FFRoute(
              name: 'CreateRelease',
              path: 'createRelease',
              builder: (context, params) => CreateReleaseWidget(),
            ),
            FFRoute(
              name: 'EditArtiste',
              path: 'editArtiste',
              builder: (context, params) => EditArtisteWidget(
                artiste: params.getParam(
                    'artiste', ParamType.DocumentReference, false, ['Artiste']),
              ),
            ),
            FFRoute(
              name: 'forgotpassword',
              path: 'forgotpassword',
              builder: (context, params) => ForgotpasswordWidget(),
            ),
            FFRoute(
              name: 'editprofile',
              path: 'editprofile',
              builder: (context, params) => EditprofileWidget(),
            ),
            FFRoute(
              name: 'SelectOptionsCopy',
              path: 'selectOptionsCopy',
              builder: (context, params) => SelectOptionsCopyWidget(),
            ),
            FFRoute(
              name: 'SuccessfulMusic',
              path: 'successfulMusic',
              builder: (context, params) => SuccessfulMusicWidget(),
            ),
            FFRoute(
              name: 'Notification',
              path: 'notification',
              builder: (context, params) => NotificationWidget(),
            ),
            FFRoute(
              name: 'Changepassword',
              path: 'changepassword',
              builder: (context, params) => ChangepasswordWidget(),
            ),
            FFRoute(
              name: 'CompletePasswordChange',
              path: 'completePasswordChange',
              builder: (context, params) => CompletePasswordChangeWidget(),
            ),
            FFRoute(
              name: 'LoginControlPage',
              path: 'loginControlPage',
              builder: (context, params) => LoginControlPageWidget(),
            ),
            FFRoute(
              name: 'CompleteProfileReminder',
              path: 'completeProfileReminder',
              builder: (context, params) => CompleteProfileReminderWidget(),
            ),
            FFRoute(
              name: 'FirstTimeSignup',
              path: 'firstTimeSignup',
              builder: (context, params) => FirstTimeSignupWidget(),
            ),
            FFRoute(
              name: 'Productdetails',
              path: 'productdetails',
              asyncParams: {
                'products1': getDoc(['Products'], ProductsRecord.fromSnapshot),
              },
              builder: (context, params) => ProductdetailsWidget(
                products: params.getParam('products',
                    ParamType.DocumentReference, false, ['Products']),
                products1: params.getParam('products1', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'checkoutpage',
              path: 'checkoutpage',
              asyncParams: {
                'cart': getDoc(['Cart'], CartRecord.fromSnapshot),
              },
              builder: (context, params) => CheckoutpageWidget(
                amount: params.getParam('amount', ParamType.int),
                quantity: params.getParam('quantity', ParamType.int),
                product: params.getParam('product', ParamType.String),
                cart: params.getParam('cart', ParamType.Document),
                carts: params.getParam(
                    'carts', ParamType.DocumentReference, false, ['Cart']),
              ),
            ),
            FFRoute(
              name: 'orderhistory',
              path: 'orderhistory',
              builder: (context, params) => OrderhistoryWidget(),
            ),
            FFRoute(
              name: 'EnterCard',
              path: 'enterCard',
              builder: (context, params) => EnterCardWidget(
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Success',
              path: 'success',
              builder: (context, params) => SuccessWidget(
                amount: params.getParam('amount', ParamType.String),
                txnreference: params.getParam('txnreference', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'termsofservice',
              path: 'termsofservice',
              builder: (context, params) => TermsofserviceWidget(),
            ),
            FFRoute(
              name: 'Signup',
              path: 'signup',
              builder: (context, params) => SignupWidget(),
            ),
            FFRoute(
              name: 'Homenew',
              path: 'homenew',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Homenew')
                  : HomenewWidget(),
            ),
            FFRoute(
              name: 'Searchproucts',
              path: 'searchproucts',
              builder: (context, params) => SearchprouctsWidget(
                searchTerm: params.getParam('searchTerm', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'Thirstynews',
              path: 'thirstynews',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Thirstynews')
                  : ThirstynewsWidget(),
            ),
            FFRoute(
              name: 'Thirstynsonics',
              path: 'thirstynsonics',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'Thirstynsonics')
                  : ThirstynsonicsWidget(),
            ),
            FFRoute(
              name: 'ThirstyForum',
              path: 'thirstyForum',
              builder: (context, params) => ThirstyForumWidget(),
            ),
            FFRoute(
              name: 'Artistedetail',
              path: 'artistedetail',
              asyncParams: {
                'artiste': getDoc(['Artiste'], ArtisteRecord.fromSnapshot),
              },
              builder: (context, params) => ArtistedetailWidget(
                artiste: params.getParam('artiste', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'notifications',
              path: 'notifications',
              builder: (context, params) => NotificationsWidget(),
            ),
            FFRoute(
              name: 'newsdetail',
              path: 'newsdetail',
              asyncParams: {
                'news': getDoc(['news'], NewsRecord.fromSnapshot),
              },
              builder: (context, params) => NewsdetailWidget(
                news: params.getParam('news', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'Shop',
              path: 'shop',
              builder: (context, params) => ShopWidget(),
            ),
            FFRoute(
              name: 'WearThirstyShop',
              path: 'wearThirstyShop',
              builder: (context, params) => WearThirstyShopWidget(),
            ),
            FFRoute(
              name: 'shop2',
              path: 'shop2',
              builder: (context, params) => Shop2Widget(),
            ),
            FFRoute(
              name: 'shop2Copy',
              path: 'shop2Copy',
              builder: (context, params) => Shop2CopyWidget(),
            ),
            FFRoute(
              name: 'OnboardingScreens',
              path: 'onboardingScreens',
              builder: (context, params) => OnboardingScreensWidget(),
            ),
            FFRoute(
              name: 'Cart',
              path: 'cart',
              builder: (context, params) => CartWidget(),
            ),
            FFRoute(
              name: 'SearchprouctsCopy',
              path: 'searchprouctsCopy',
              builder: (context, params) => SearchprouctsCopyWidget(
                searchTerm: params.getParam('searchTerm', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'checkoutpageCopy',
              path: 'checkoutpageCopy',
              asyncParams: {
                'cart': getDoc(['Cart'], CartRecord.fromSnapshot),
              },
              builder: (context, params) => CheckoutpageCopyWidget(
                amount: params.getParam('amount', ParamType.int),
                quantity: params.getParam('quantity', ParamType.int),
                product: params.getParam('product', ParamType.String),
                cart: params.getParam('cart', ParamType.Document),
                carts: params.getParam(
                    'carts', ParamType.DocumentReference, false, ['Cart']),
              ),
            ),
            FFRoute(
              name: 'checkoutpageCopy2',
              path: 'checkoutpageCopy2',
              asyncParams: {
                'cart': getDoc(['Cart'], CartRecord.fromSnapshot),
              },
              builder: (context, params) => CheckoutpageCopy2Widget(
                amount: params.getParam('amount', ParamType.int),
                quantity: params.getParam('quantity', ParamType.int),
                product: params.getParam('product', ParamType.String),
                cart: params.getParam('cart', ParamType.Document),
                carts: params.getParam(
                    'carts', ParamType.DocumentReference, false, ['Cart']),
              ),
            ),
            FFRoute(
              name: 'ShopNeew',
              path: 'shopNeew',
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'ShopNeew')
                  : ShopNeewWidget(),
            ),
            FFRoute(
              name: 'Menu',
              path: 'menu',
              builder: (context, params) => MenuWidget(),
            ),
            FFRoute(
              name: 'ProductdetailsNew',
              path: 'productdetailsNew',
              asyncParams: {
                'productSelection':
                    getDoc(['MenuItems'], MenuItemsRecord.fromSnapshot),
              },
              builder: (context, params) => ProductdetailsNewWidget(
                productSelection:
                    params.getParam('productSelection', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'checkoutpagenew',
              path: 'checkoutpagenew',
              builder: (context, params) => CheckoutpagenewWidget(),
            ),
            FFRoute(
              name: 'paymentmodal2',
              path: 'paymentmodal2',
              builder: (context, params) => Paymentmodal2Widget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onboardingScreens';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Image.asset(
                      'assets/images/THIRSTY_PNG_1.png',
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
