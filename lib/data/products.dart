import 'package:ozone/view/home/product.dart';

List<ProductModel> getproduct() {
  //fill here to had more specialities
  List<ProductModel> products = new List<ProductModel>();
  ProductModel productModel = new ProductModel();

  //1
  productModel.nameOfProduction = 'Mangue';
  productModel.variety = "Kent";
  productModel.density = "100 ha";
  products.add(productModel);

  productModel = new ProductModel();

  //2
  productModel.nameOfProduction = 'Ananas';
  productModel.variety = "Queen";
  productModel.density = "200 ha";
  products.add(productModel);

  productModel = new ProductModel();

  //3
  productModel.nameOfProduction = "Poireau";
  productModel.variety = "Malabre";
  productModel.density = "300 ha";
  products.add(productModel);

  productModel = new ProductModel();

  return products;
}
