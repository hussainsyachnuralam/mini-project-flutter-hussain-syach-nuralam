// import 'package:eventder/controller/sqlite.dart';
// import 'package:eventder/models/favourite.dart';

// // setting database sql
// class Bhandaram {
//   static DbHelper? db;
//   static List<Favourite> favourites = <Favourite>[];

//   static init() {
//     db = DbHelper();
//     _loadFavourites();
//   }

//   static _loadFavourites() async {
//     favourites.clear();
//     var _favourites = await db!.getFavourites();
//     favourites.addAll(_favourites);
//   }

//   static updateFavourites() {
//     _loadFavourites();
//   }

//   static unFavItem(String id) {
//     List<Favourite> _items = [];
//     for (int i = 0; i < favourites.length; i++) {
//       if (favourites[i].eventId != id) {
//         _items.add(favourites[i]);
//       }
//     }
//     favourites.clear();
//     favourites.addAll(_items);
//   }
// }
