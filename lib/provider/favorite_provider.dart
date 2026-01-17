import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<Product>_favorite = [];
  List<Product> get favorite =>_favorite;
  void toggleFavorite(Product product){
    if(_favorite.contains(product)){
      _favorite.remove(product);

    }else{
      _favorite.add(product);
    }
    notifyListeners();
  }
 bool isExist(Product product){
    final isExit =_favorite.contains(product);
    return isExit;
 }

  static FavoriteProvider of(BuildContext context,{
    bool listen=true,
  }){
    return Provider.of<FavoriteProvider>(context,listen: listen,);
  }
}

class Product {
}