import 'package:http/http.dart' as http;
import 'package:simple_flutter_patterns/entities/post/api/post.dart';

Future<Post> fetchPost() async {
  await Future.delayed(const Duration(seconds: 1));

  var url = Uri.https('jsonplaceholder.typicode.com', 'posts/1');

  final response = await http.get(url);
  return PostMapper.fromJson(response.body);
}
