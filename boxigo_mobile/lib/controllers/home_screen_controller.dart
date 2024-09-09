import 'package:boxigo_mobile/models/user_data_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final dio = Dio();
  UserDataModel? userDataModel;
  bool isLoader=false;
  bool isInventory=true;
  bool isCustomItems=false;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getUserData();
  }

  getUserData() async {
    showLoader();
    try {
      final response = await dio.get('http://test.api.boxigo.in/sample-data/');
hideLoader();
      if (response.statusCode == 200) {
        userDataModel = UserDataModel.fromJson(response.data);
        update();
      } else {
        print('api got failed');
      }
    } on DioException catch (e) {
      hideLoader();
      print(e);
    }
  }
  showLoader(){
    isLoader=true;
    update();
  }hideLoader(){
    isLoader=false;
    update();
  }
}
