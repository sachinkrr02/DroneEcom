import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class OfferRepository {
  final ApiService _apiService;

  OfferRepository(this._apiService);

  Future<List<JSON>> getOffers() async {
    // var response = await _apiService.get(endpoint: '/offers');

    var offers = [
      {
        'id': 1,
        'title': 'Offer 1',
        'description': 'Offer 1 description',
        'image':
            'https://cdn.shopify.com/s/files/1/0559/1970/6265/files/Electronic_speed_controllers_480x480.jpg?v=1653627875',
        'price': '100',
        'discount': '10',
        'discountPrice': '90',
      },
      {
        'id': 2,
        'title': 'Offer 2',
        'description': 'Offer 2 description',
        'image':
            'https://images.unsplash.com/photo-1527977966376-1c8408f9f108?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZHJvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        'price': '200',
        'discount': '20',
        'discountPrice': '180',
      },
      {
        'id': 3,
        'title': 'Offer 3',
        'description': 'Offer 3 description',
        'image':
            'https://images.unsplash.com/photo-1521405924368-64c5b84bec60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRyb25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        'price': '300',
        'discount': '30',
        'discountPrice': '270',
      },
      {
        'id': 4,
        'title': 'Offer 4',
        'description': 'Offer 4 description',
        'image':
            'https://images.unsplash.com/photo-1477160739634-171ff0343882?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGRyb25lJTIwdXNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        'price': '400',
        'discount': '40',
        'discountPrice': '380',
      },
      {
        'id': 5,
        'title': 'Offer 5',
        'description': 'Offer 5 description',
        'image':
            'https://images.unsplash.com/photo-1469313785555-277fa0c1dc9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGRyb25lJTIwdXNlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        'price': '500',
        'discount': '50',
        'discountPrice': '450',
      },
    ];

    return offers;
  }
}
