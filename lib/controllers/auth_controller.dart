import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
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

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      isLoading.value = true;
      print("✅ User going to login....");
      await appWriteService.account.createEmailPasswordSession(
        email: email,
        password: password,
      );
       Get.rawSnackbar(message: "✅ Login Successful");
      print("✅ Login Successful");
    } catch (ex) {
      Get.rawSnackbar(message: ex.toString());
      print("❌ Error While login ");
    }
    finally{
      isLoading.value = false;
    }
  }

  Future<void> getLoginUserDetails() async {
    try{
      User user = await appWriteService.account.get();
      print("✅ Login User Found");
      print("User Name :${user.name}");
      print("Email id :${user.email}");
      print("User id :${user.$id}");
    }
    catch(ex)
    {
      print("❌ User Not Login");
    }
  }

  Future<void> logOutUser()async {
    try{
      await appWriteService.account.deleteSession(sessionId: 'current');
      print("✅ User Logout");
    }
    catch(ex)
    {
      print("❌ Error while logout");
    }
  }

  
}
