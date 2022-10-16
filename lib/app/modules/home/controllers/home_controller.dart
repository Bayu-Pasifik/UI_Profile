import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final Uri _urlFacebook =
      Uri.parse('https://www.facebook.com/bayu.pasifik.3/');
  final Uri _urlInstagram =
      Uri.parse('https://www.instagram.com/shirogane_shin/');
  Future<void> call() async {
    await launchUrl(
      Uri(scheme: "tel", path: "081358995401"),
    );
  }

  Future<void> facebook() async {
    await launchUrl(_urlFacebook, mode: LaunchMode.externalApplication);
  }

  Future<void> instagram() async {
    await launchUrl(_urlInstagram, mode: LaunchMode.externalApplication);
  }
}
