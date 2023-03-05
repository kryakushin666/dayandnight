import '../../data/repository/day_data_repository.dart';
import '../../domain/repository/day_repository.dart';
import 'api_module.dart';

class RepositoryModule {
  static DayRepository? _dayRepository;

  static DayRepository dayRepository() {
    return _dayRepository ??= DayDataRepository(
      ApiModule.apiUtil(),
    );
  }
}
