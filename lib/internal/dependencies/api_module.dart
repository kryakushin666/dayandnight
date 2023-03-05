import '../../data/api/api_util.dart';
import '../../data/api/service/sunrise_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    return _apiUtil ??= ApiUtil(SunriseService());
  }
}
