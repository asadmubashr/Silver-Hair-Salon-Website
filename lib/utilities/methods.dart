import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class AppMethods {
  static final customCacheManager = CacheManager(Config(
    'customCacheKey',
    stalePeriod: const Duration(days: 14),
    maxNrOfCacheObjects: 1000,
  ));
}
