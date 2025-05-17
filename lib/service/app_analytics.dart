// //
// import 'package:firebase_analytics/firebase_analytics.dart';

// abstract class AppAnalytics {
//   const AppAnalytics();
//   Future<bool> isSupported();
//   Future<void> logEvent({
//     required String name,
//     Map<String, Object?>? parameters,
//     AnalyticsCallOptions? callOptions,
//   });
//   Future<void> logAppOpen({AnalyticsCallOptions? callOptions, Map<String, Object?>? parameters});
//   Future<void> logScreenView({
//     String? screenClass,
//     String? screenName,
//     Map<String, Object?>? parameters,
//     AnalyticsCallOptions? callOptions,
//   });
//   Future<void> logSearch({
//     required String searchTerm,
//     int? numberOfNights,
//     int? numberOfRooms,
//     int? numberOfPassengers,
//     String? origin,
//     String? destination,
//     String? startDate,
//     String? endDate,
//     String? travelClass,
//     Map<String, Object?>? parameters,
//     AnalyticsCallOptions? callOptions,
//   }); 

//   Future<void> logSelectContent({
//     required String contentType,
//     required String itemId,
//     Map<String, Object?>? parameters,
//   });
//   Future<void> logSelectItem({
//     String? itemListId,
//     String? itemListName,
//     List<AnalyticsEventItem>? items,
//     Map<String, Object?>? parameters,
//     AnalyticsCallOptions? callOptions,
//   });
//   Future<void> logShare({
//     required String contentType,
//     required String itemId,
//     required String method,
//     Map<String, Object?>? parameters,
//   });
//   Future<void> logSignUp({required String signUpMethod, Map<String, Object?>? parameters});
// }
