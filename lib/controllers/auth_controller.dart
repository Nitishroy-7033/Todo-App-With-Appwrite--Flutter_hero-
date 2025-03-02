import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';
import 'package:todo_with_app_write/services/app_write_service.dart';

class AuthController extends GetxController {
  final AppWriteService appWriteService = AppWriteService();
  RxBool isLoading = false.obs;
  Future<void> createUserWithEmailPassword(
      String name, String email, String password) async {
    try {
      print("✅ User Creating...");
      isLoading.value = true;
      var userId = ID.unique();
      await appWriteService.account.create(
        userId: userId,
        name: name,
        email: email,
        password: password,
      );
      Get.rawSnackbar(message: "✅ User create successfully");
       print("✅ User Created");
    } catch (ex) {
      Get.rawSnackbar(message: ex.toString());
       print("❌ Error while creating user");
    } finally {
      isLoading.value = false;
    }
  }
}
