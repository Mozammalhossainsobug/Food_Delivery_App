import 'dart:convert';

import 'package:food_delivery_final/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList=[];
  List<ProductModel> get popularProductlist => _popularProductList;

  bool _isloaded = false;
  bool get isloaded=>_isloaded;

  Future<void> getPopularProductList()async {
   Response response = await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     print("got products");
     _popularProductList=[];
     //_popularProductList.addAll(Product.fromJson(response.body).products);
     // print(_popularProductList);
     _isloaded=true;
     update();
   }else{

   }
  }
}