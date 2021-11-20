// APIKEY= 0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p
import 'package:http/http.dart' as http;

Future apicall() async {
  http.Response response;
  response = await http.get(
    Uri.parse(
        'https://quizapi.io/api/v1/questions?apiKey=0VeurWECWRQgSX1Ib9DdCrVSsvkGH2TysmCJeg3p&category=linux&difficulty=Medium&limit=15&tags=BASH'),
    headers: {"Accept": "application/json"},
  );
  if (response.statusCode == 200) {
    print(response.body);
  }
}
