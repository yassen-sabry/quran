import 'package:shared_preferences/shared_preferences.dart';

String arabicFont="quran";
double arabicFontsize=28;
double mushafFontsize=40;

Uri quranAppUrl=Uri.parse('');

Future saveSetting ()async{
  final prefs= await SharedPreferences.getInstance();
  await prefs.setInt('arabicFontSize', arabicFontsize.toInt());
  await prefs.setInt('mushafFontSize', mushafFontsize.toInt());
}

Future getSetting ()async{
  try{
    final prefs= await SharedPreferences.getInstance();
    arabicFontsize = await prefs.getInt('arabicFontSize')!.toDouble();
    mushafFontsize = await prefs.getInt('mushafFontSize')!.toDouble();
  }catch(_){
    arabicFontsize=28;
    mushafFontsize=40;
  }
}


List <Map>arabicName = [
  {"surah":"1", "name":'الفاتحة'},
  {"surah":"2", "name":'البقرة'},
  {"surah":"3", "name":'آل عمران'},
  {"surah":"4", "name":'النساء'},
  {"surah":"5", "name":'المائدة'},
  {"surah":"6", "name":'الأنعام'},
  {"surah":"7", "name":'الأعراف'},
  {"surah":"8", "name":'الأنفال'},
  {"surah":"9", "name":'التوبة'},
  {"surah":"10", "name":'يونس'},
  {"surah":"11", "name":'هود'},
  {"surah":"12", "name":'يوسف'},
  {"surah":"13", "name":'الرعد'},
  {"surah":"14", "name":'إبراهيم'},
  {"surah":"15", "name":'الحجر'},
  {"surah":"16", "name":'النحل'},
  {"surah":"17", "name":'الإسراء'},
  {"surah":"18", "name":'الكهف'},
  {"surah":"19", "name":'مريم'},
  {"surah":"20", "name":'طـه'},
  {"surah":"21", "name":'الأنبياء'},
  {"surah":"22", "name":'الحـج'},
  {"surah":"23", "name":'الؤمنون'},
  {"surah":"24", "name":'النـور'},
  {"surah":"25", "name":'الفرقان'},
  {"surah":"26", "name":'الشعراء'},
  {"surah":"27", "name":'النمل'},
  {"surah":"28", "name":'القصـص'},
  {"surah":"29", "name":'العنكبوت'},
  {"surah":"30", "name":'الـروم'},
  {"surah":"31", "name":'لقمان'},
  {"surah":"32", "name":'السجدة'},
  {"surah":"33", "name":'الأحزاب'},
  {"surah":"34", "name":'سـبأ'},
  {"surah":"35", "name":'فاطر'},
  {"surah":"36", "name":'يـس'},
  {"surah":"37", "name":'الصافات'},
  {"surah":"38", "name":'ص'},
  {"surah":"39", "name":'الزمـر'},
  {"surah":"40", "name":'غـافر'},
];