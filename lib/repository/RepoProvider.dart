import 'package:cricbuzz/service/ApiService.dart';

import '../models/currentMatches.dart';

class RepoProvider {
  ApiService apiService = ApiService();
  Future<CurrentMatches> getCurrentMatched() async {
    final response = await apiService.getCurrentMatches();
    return CurrentMatches.fromJson(response);
  }
}