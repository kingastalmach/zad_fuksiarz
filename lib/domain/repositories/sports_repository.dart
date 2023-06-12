import '../../data/data_sources/sports_by_category.dart';
import '../models/sports_model.dart';

class SportsRepository {
  SportsRepository(this._sportsRemoteDataSource);

  final SportsRemoteDataSource _sportsRemoteDataSource;

  Future<SportsModel?> getSportsModel({
    required int categoryId,
  }) async {
    final json = await _sportsRemoteDataSource.getSportsData(
      categoryId: categoryId,
    );

    if (json == null) {
      return null;
    }

    return SportsModel.fromJson(json);
  }
}
