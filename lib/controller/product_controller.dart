import 'package:ecommerce_appwith_rest_api/service/product_repository.dart';
import 'package:get/get.dart';


class ProductController extends GetxController {
  Productrepository productrepository = Productrepository();
  List product = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async {
    var product = await productrepository.Featchapi();
  }
}
