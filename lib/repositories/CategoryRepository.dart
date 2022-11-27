import 'package:day59/shared/typedef.dart';
import 'package:day59/services/networking/ApiService.dart';

class CategoryRepository {
  final ApiService _apiService;

  CategoryRepository(this._apiService);

  Future<List<JSON>> getCategories() async {
    // var response = await _apiService.get(endpoint: '/offers');

    var categories = [
      {
        'id': 1,
        'name': 'Drone',
        'image':
            'https://images.unsplash.com/photo-1524143986875-3b098d78b363?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
      },
      {
        'id': 2,
        'name': 'Parts',
        'image':
            'https://images.unsplash.com/photo-1486611367184-17759508999c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZHJvbmUlMjBwYXJ0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 3,
        'name': 'Books',
        'image':
            'https://images.unsplash.com/photo-1542983434-ed2295c9f94c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZHJvbmUlMjBib29rc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 4,
        'name': 'Motors',
        'image':
            'https://images.unsplash.com/photo-1596877454778-9103606a5349?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRyb25lJTIwbW90b3JzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 5,
        'name': 'Propellers',
        'image':
            'https://images.unsplash.com/photo-1487304655522-c039cc299c9d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvcGVsbGVycyUyMGRyb25lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 6,
        'name': 'Wires',
        'image':
            'https://images.unsplash.com/photo-1456615913800-c33540eac399?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGRyb25lJTIwd2lyZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 7,
        'name': 'ESC',
        'image':
            'https://images.unsplash.com/photo-1469313785555-277fa0c1dc9e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGRyb25lJTIwZXNjfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 8,
        'name': 'Controllers',
        'image':
            'https://images.unsplash.com/photo-1517431160408-a558aa6ff32b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGRyb25lJTIwY29udHJvbGxlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 9,
        'name': 'Battery',
        'image':
            'https://images.unsplash.com/photo-1591964006776-90b32e88f5ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmF0dGVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=600'
      },
      {
        'id': 10,
        'name': 'Camera',
        'image':
            'https://images.unsplash.com/photo-1580707221190-bd94d9087b7f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhbWVyYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
      },
      {
        'id': 11,
        'name': 'Others',
        'image':
            'https://images.unsplash.com/photo-1539872209618-fb1770aa6ff8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGV4dHJhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
      },
    ];

    return categories;
  }
}
