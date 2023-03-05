import 'package:dayandnight/data/api/request/get_day_body.dart';

import '../../domain/model/day.dart';
import '../mapper/day_mapper.dart';
import 'service/sunrise_service.dart';

class ApiUtil {
  final SunriseService _sunriseService;

  ApiUtil(this._sunriseService);

  Future<Day> getDay({
    required double latitude,
    required double longitude,
  }) async {
    final body = GetDayBody(latitude: latitude, longitude: longitude);
    final result = await _sunriseService.getDay(body);
    return DayMapper.fromApi(result);
  }
}
