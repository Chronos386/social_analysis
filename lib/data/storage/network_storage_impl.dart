import 'dart:io';
import 'dart:convert';
import 'network_storage.dart';
import '../../utils/error_codes.dart';
import 'package:http/http.dart' as http;
import 'package:social_analysis/utils/result.dart';
import 'package:social_analysis/data/models/statistic_model_data/statistic_model_data.dart';

class NetworkStorageImpl implements NetworkStorage {
  var errCodes = ErrorCodes();
  final url = "http://192.168.0.114";

  @override
  Future<Result<StatisticModelData>> getSocialAnalysis(int groupId,
      int countPosts, String login, String password) async {
    try {
      var request = http.MultipartRequest(
        'POST',
        Uri.parse('$url/api/analysis/'),
      );
      request.fields['login'] = login;
      request.fields['password'] = password;
      request.fields['group_id'] = groupId.toString();
      request.fields['count_posts'] = countPosts.toString();
      request.headers['Content-Type'] = "application/json";
      var response = await request.send().timeout(const Duration(minutes: 10));
      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        var jsonResult = json.decode(responseData);
        StatisticModelData data = StatisticModelData.fromJson(jsonResult);
        return Success(data);
      } else {
        if (response.statusCode == 400) {
          return Future.value(Error(errCodes.getMessageByCode(400)));
        } else {
          return Future.value(Error(errCodes.getMessageByCode(500)));
        }
      }
    } on HttpException catch (e) {
      return Future.value(Error(e.message));
    } on SocketException {
      return Future.value(
          Error(errCodes.getMessageByCode(errCodes.REQUEST_FAILURE)));
    } catch (e) {
      return Future.value(Error(errCodes.getMessageByCode(errCodes.FAILURE)));
    }
  }
}