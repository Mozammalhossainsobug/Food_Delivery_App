import 'package:food_delivery_final/controllers/popular_product_controller.dart';
import 'package:food_delivery_final/data/api/api_client.dart';
import 'package:food_delivery_final/data/repository/popular_product_repo.dart';
import 'package:food_delivery_final/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void>init()async {
  //api client
   Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

   //repos
   Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

   //controllers
   Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}