import 'package:flutter/material.dart';
import 'package:seller_center_dashboard/models/announcement_model.dart';
import 'package:seller_center_dashboard/utils/app_styles.dart';
import 'package:seller_center_dashboard/widgets/announcement_item.dart';
import 'package:seller_center_dashboard/widgets/announcement_listview.dart';

class AnnouncementPageview extends StatefulWidget {
  const AnnouncementPageview({super.key});

  @override
  State<AnnouncementPageview> createState() => _AnnouncementPageviewState();
}

class _AnnouncementPageviewState extends State<AnnouncementPageview> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  late final List<List<AnnouncementModel>> pages;

  @override
  void initState() {
    super.initState();
    final allAnnouncements = AnnouncementListview.announcements;
    pages = [
      AnnouncementListview.announcements,
      AnnouncementListview.announcements,
      AnnouncementListview.announcements
    ];

    // تقسيم العناصر لكل صفحة 4 عناصر
    for (var i = 0; i < allAnnouncements.length; i += 4) {
      pages.add(allAnnouncements.sublist(
        i,
        i + 4 > allAnnouncements.length ? allAnnouncements.length : i + 4,
      ));
    }
  }

  void _nextPage() {
    if (_currentPage < pages.length - 1) {
      _currentPage++;
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _currentPage--;
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       AspectRatio(
         aspectRatio: 2.3,
         child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, pageIndex) {
                final pageAnnouncements = pages[pageIndex];
                return Column(
                  children: pageAnnouncements
                      .map((e) => AnnouncementItem(announcementModel: e))
                      .toList(),
                );
              },
            ),
       ),
        
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: _prevPage,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.only(left: 12, right: 6, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  color: Color(0xff403C4E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.arrow_back_ios, size: 16,color: Colors.white,),
              ),
            ),
            SizedBox(width: 20),
            Text(
              "${_currentPage + 1}/${pages.length}",
              style: AppStyles.style20Bold(context),
            ),
            SizedBox(width: 20),
            InkWell(
              onTap: _nextPage,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 6, right: 12, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  color: Color(0xff403C4E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Transform.rotate(
                  angle: 3.14,
                  child: Icon(Icons.arrow_back_ios, size: 16,color: Colors.white,)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
