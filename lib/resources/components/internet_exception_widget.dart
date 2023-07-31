import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/resources/colors/app_color.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColor.redColor,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text('internet_exception'.tr),
            ),
          ),
        ],
      ),
    );
  }
}
