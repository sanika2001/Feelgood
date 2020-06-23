import 'dart:async';
import 'package:feelsgood/Models/Offer.dart';

class OfferBloc {
  List<Offer> _offerList = [
    Offer(
        "Grapes",
        "https://5.imimg.com/data5/RK/KV/XE/SELLER-100337308/black-sharad-seedless-grapes-500x500.jpg",
        "2",
        "7"),
    Offer(
        "Harpic",
        "https://images-na.ssl-images-amazon.com/images/I/61DcrT78DOL._SL1000_.jpg",
        "4",
        "7"),
    Offer(
        "Munch",
        "https://lh3.googleusercontent.com/proxy/7hQb4_sqmw21-9F4iiB8hNz0vh2reUncieaWVey4RGObwB7p3SbppywiQAsYlK0yIN44w-VpmIQMUtBaq4wDzuOh1rN80H8cXrieZC0nolR9TcHBQiDYxAQZaQ",
        "1",
        "1.5"),
  ];

  final _offerListStreamContoller = StreamController<List<Offer>>();

  Stream<List<Offer>> get itemListStream => _offerListStreamContoller.stream;
  StreamSink<List<Offer>> get itemListSink => _offerListStreamContoller.sink;

  OfferBloc() {
    _offerListStreamContoller.add(_offerList);
  }

  void dispose() {
    _offerListStreamContoller.close();
  }
}
