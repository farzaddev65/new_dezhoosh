
import 'package:bestdroid/app/data/models/user/user_model.dart';
import 'package:get/get.dart';

class SettingController extends GetxController{
  RxList<UserDto> personList=<UserDto>[].obs;

  @override
  void onInit() {
    super.onInit();
    personList.add(UserDto(fullName: 'محمد',isConfirm: 1));
    personList.add(UserDto(fullName: 'فرزاد',isConfirm: 0));
    personList.add(UserDto(fullName: 'محمد رضا',isConfirm: 0));
    personList.refresh();
  }

}