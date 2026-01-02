
import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/models/announcement_model.dart';
import 'package:seller_center_dashboard/widgets/announcement_item.dart';

class AnnouncementListview extends StatelessWidget {
  const AnnouncementListview({super.key});
  static List<AnnouncementModel> announcements = [
    AnnouncementModel(
      title: 'Zalora- Seller Communication Prioritization.  ',
      date: 'Feb 11',
      description:
          'Hi, you’ve likely seen email from Zalora Seller Helpdesk to you with the Phrase [HIGH] or ...',
    ),
    AnnouncementModel(
      title: '[IMPORTANT] Update to API endponit limit. ',
      date: 'Feb 11',
      description:
          'Dear Seller, Follewing up from our previous announcement, please note a slight change ...',
    ),
    AnnouncementModel(
      title: 'Covid-19 Impact on Your Operations.  ',
      date: 'Feb 07',
      description:
          'Dear Seller, please immediately inform your Account. Manage or SHD if your operations are impacted by ...',
    ),
    AnnouncementModel(
      title: '[IMPORTANT] API endponit limit. please forward. ',
      date: 'Jan 26',
      description:
          'Dear Seller, As part of our continuous efforts to improve system response time and reliability ...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: announcements.map ((e) => AnnouncementItem(announcementModel: e)).toList(),
    );
  }
}
