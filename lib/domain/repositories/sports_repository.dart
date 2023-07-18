import '../../data/data_sources/sports_remote_data_sources.dart';
import '../models/sports_model.dart';

class SportsRepository {
  SportsRepository(this._sportsRemoteDataSource);

  final SportsRemoteDataSource _sportsRemoteDataSource;

  Future<SportsModel?> getSportsModel({
    required int categoryId,
  }) async {
    final json = await _sportsRemoteDataSource.getSportsData(
      categoryId: categoryId,
      categoryName: 'categoryName',
    );

    if (json == null) {
      return null;
    }

    return SportsModel.fromJson(json);
  }

  getGenres() {}

  getSportsData(categoryId) {}
}
