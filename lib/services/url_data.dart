import 'package:shared_preferences/shared_preferences.dart';

url_data_category(category) async {
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();
  url_data_pref.setString('selected_category', category);
}
url_data_difficulty(difficulty) async {
  SharedPreferences url_data_pref = await SharedPreferences.getInstance();
  url_data_pref.setString('selected_difficulty', difficulty);
}


