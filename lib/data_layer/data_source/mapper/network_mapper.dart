
import 'package:rameshclothhouse/domain_layer/domain_layer.dart';

class Generic {
  static T fromJson<T>(dynamic json) {
    try {
      switch (T) {
        default:
          if (json is List) {
            return _fromJsonList<T>(json) as T;
          } else if (T == bool ||
              T == String ||
              T == int ||
              T == double ||
              T == Map<String, dynamic>) {
            // primitives
            if (json is bool ||
                json is String ||
                json is int ||
                json is double ||
                json is Map<String, dynamic>) {
              return json;
            } else {
              throw const NetworkExceptions.unableToProcess();
            }
          } else {
            throw const NetworkExceptions.unableToProcess();
          }
      }
    } catch (e) {
      throw NetworkExceptions.jsonDecodedException(json, e as Exception);
    }
  }

  static List<K> _fromJsonList<K>(List<dynamic> jsonList) {
    return jsonList.map<K>((json) => fromJson<K>(json)).toList();
  }
}
