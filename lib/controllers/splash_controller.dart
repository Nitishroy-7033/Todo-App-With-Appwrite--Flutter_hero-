import 'package:appwrite/models.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/pages/auth/login_page.dart';
import 'package:todo_with_app_write/pages/home_page.dart';
import 'package:todo_with_app_write/services/app_write_service.dart';

class SplashController extends GetxController {
  final AppWriteService appWriteService = AppWriteService();


  @override
  void onInit(){
    super.onInit() ;
    init();
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 3));
    try {
      User user = await appWriteService.account.get();
      print("✅ Login User Found");
      print("User Name :${user.name}");
      print("Email id :${user.email}");
      print("User id :${user.$id}");
      Get.offAll(HomePage());
    } catch (ex) {
      Get.offAll(LoginPage());
      print("❌ User Not Login");
    }
  }
}
