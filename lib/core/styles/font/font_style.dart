import 'package:full_store_app/core/service/shared_perf/shared_keys.dart';
import 'package:full_store_app/core/service/shared_perf/shared_pref.dart';

class FamilyNameHelper {
  static const String arabicFamily = "Arabic";
  static const String englishFamily = "English";

  static String getLocalizedFontFamily() {
    final currentFamily = SharedPref.instance.getString(PrefKeys.language);
    if (currentFamily == 'ar') {
      return arabicFamily;
    } else {
      return arabicFamily;
    }
  }
}
