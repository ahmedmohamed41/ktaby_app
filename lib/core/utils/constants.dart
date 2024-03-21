import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
const defoultScafColor = Color(0xff100B20);
const kTransitionDuration = Duration(seconds: 1);

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );
      Future<void> cutomLaunchUrl({required String ur}) async {
    Uri uri = Uri.parse(ur);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
