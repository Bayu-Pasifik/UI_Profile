import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final Uri _urlFacebook = Uri.parse('https://www.facebook.com/bayu.pasifik.3');
  final Uri _urlInstagram =
      Uri.parse('https://www.instagram.com/shirogane_shin/');
  final Uri _urlDiscord =
      Uri.parse('https://discordapp.com/users/565549988541759534/');
  final Uri _urlTelegram = Uri.parse('https://telegram.me/+6281358995401');
  final Uri _urlWhatsApp2 =
      Uri.parse('https://api.whatsapp.com/send?phone=6281358995401&text=Hello');
  final Uri _urlgithub = Uri.parse('https://github.com/Bayu-Pasifik');
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

  Future<void> discord() async {
    await launchUrl(_urlDiscord, mode: LaunchMode.externalApplication);
  }

  Future<void> telegram() async {
    await launchUrl(_urlTelegram, mode: LaunchMode.externalApplication);
  }

  Future<void> whatsApp() async {
    await launchUrl(_urlWhatsApp2, mode: LaunchMode.externalApplication);
  }

  Future<void> github() async {
    await launchUrl(_urlgithub, mode: LaunchMode.externalApplication);
  }
}
