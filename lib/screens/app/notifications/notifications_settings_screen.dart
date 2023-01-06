import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qaren/models/base/notification_option.dart';
import 'package:qaren/models/base/notification_option_title.dart';
import 'package:qaren/widgets/qaren_text.dart';
import 'package:qaren/widgets/switch_option_item.dart';

class NotificationsSettingsScreen extends StatefulWidget {
  const NotificationsSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsSettingsScreen> createState() =>
      _NotificationsSettingsScreenState();
}

class _NotificationsSettingsScreenState
    extends State<NotificationsSettingsScreen> {
  final List<NotificationOptionTitle> _options = <NotificationOptionTitle>[
    NotificationOptionTitle(title: 'Offer Magazine', options: [
      NotificationOption(title: 'From all Stores'),
      NotificationOption(title: 'From Stores in favorite'),
    ]),
    NotificationOptionTitle(title: 'Offer', options: [
      NotificationOption(title: 'From all Stores'),
      NotificationOption(title: 'From Stores in favorite'),
      NotificationOption(title: 'From all Product'),
      NotificationOption(title: 'From Product in favorite'),
      NotificationOption(title: 'From Product in my Qaren list'),
    ]),
    NotificationOptionTitle(title: 'Special Offer', options: [
      NotificationOption(title: 'From all Stores'),
      NotificationOption(title: 'From Stores in favorite'),
      NotificationOption(title: 'From all Product'),
      NotificationOption(title: 'From Product in favorite'),
      NotificationOption(title: 'From Product in my Qaren list'),
    ]),
    NotificationOptionTitle(title: 'Qaren Offer', options: [
      NotificationOption(title: 'From all Stores'),
      NotificationOption(title: 'From Stores in favorite'),
      NotificationOption(title: 'From all Product'),
      NotificationOption(title: 'From Product in favorite'),
      NotificationOption(title: 'From Product in my Qaren list'),
    ]),
    NotificationOptionTitle(title: 'Coupon', options: [
      NotificationOption(title: 'From all Stores'),
      NotificationOption(title: 'From Stores in favorite'),
      NotificationOption(title: 'From all Product'),
      NotificationOption(title: 'From Product in favorite'),
      NotificationOption(title: 'From Product in my Qaren list'),
    ]),
    NotificationOptionTitle(title: 'Qaren list', options: [
      NotificationOption(title: 'Update Shared list Product'),
    ]),
    NotificationOptionTitle(title: 'Price Alert', options: [
      NotificationOption(title: 'price updated'),
    ]),
    NotificationOptionTitle(title: 'Get Notfication', options: [
      NotificationOption(title: 'Pop Up'),
      NotificationOption(title: 'E-mail'),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const QarenText(
          title: 'Notifications Settings',
          textColor: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: ListView.builder(
        itemCount: _options.length,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 27.h),
        itemBuilder: (context, mainIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QarenText(
                title: _options[mainIndex].title,
                textAlign: TextAlign.start,
                textColor: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              SizedBox(height: 16.h),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _options[mainIndex].options.length,
                itemBuilder: (context, index) {
                  return SwitchOptionItem(
                    title: _options[mainIndex].options[index].title,
                    value: _options[mainIndex].options[index].status,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() =>
                            _options[mainIndex].options[index].status = value);
                      }
                    },
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
