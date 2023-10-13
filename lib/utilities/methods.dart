import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

class AppMethods {
  static final customCacheManager = CacheManager(Config(
    'customCacheKey',
    stalePeriod: const Duration(days: 14),
    maxNrOfCacheObjects: 1000,
  ));

  static Future<void> makeCall(String phoneNumber) async {
    await launch("tel://$phoneNumber");
  }

  static Future<void> makeWhatsapp(String phoneNumber) async {
    await launch("https://wa.me/$phoneNumber?text=I need help from Al Shamil");
  }

  static Future<void> openUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  static Future<void> makeEmail() async {
    String email = Uri.encodeComponent(emailAddress);
    String subject = Uri.encodeComponent("Hello Dear");
    String body = Uri.encodeComponent("Hi! I need help from Silver Hair Salon");
    print(subject); //output: Hello%20Flutter
    Uri mail = Uri.parse("mailto:$email?subject=$subject&body=$body");
    if (await launchUrl(mail)) {
      //email app opened
    } else {
      //email app is not opened
    }
  }
}
