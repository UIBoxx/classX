import 'package:flutter/material.dart';
import 'package:notex/utils/chapter_content.dart';

class NepaliPage extends StatefulWidget {
  final VoidCallback onToggleDarkMode;
  const NepaliPage({super.key, required this.onToggleDarkMode});

  @override
  State<NepaliPage> createState() => _NepaliPageState();
}

class _NepaliPageState extends State<NepaliPage> {
  bool isDarkMode = false;
  List nepaliChapters = [
        'Chapter 1: उज्यालो यात्रा',
        'Chapter 2: घरझगडा',
        'Chapter 3: चिकित्सा ज्ञान र आयुर्वेद चिकित्सा',
        'Chapter 4: यस्तो कहिलै नहोस्',
        'Chapter 5: लक्ष्मीप्रसाद देवकोटा',
        'Chapter 6: अधिकार ठुलो कि कर्तव्य ठुलो ?',
        'Chapter 7: शत्रु',
        'Chapter 8: नेपाली हाम्रो श्रम र सिप',
        'Chapter 9: मेरो देशको शिक्षा',
        'Chapter 10: व्यावसायिक चिठी',
        'Chapter 11: कर्तव्य',
        'Chapter 12: पाब्लो फिकासो',
        'Chapter 13: पख्नोस्',
        'Chapter 14: घरको माया',
        'Chapter 15: गाउँमाथि एउटा कविता',
        'Chapter 16: आयाम',
        'Chapter 17: सुनाइ पाठ',
  ];
  // List chapterContent = [
  // ];

  static const chapterContent = 'The content will be uploaded soon!';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nepali'),
        elevation: 0,
        actions: [
          Switch(
              activeColor: Colors.purple,
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                widget.onToggleDarkMode();
              }),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: nepaliChapters.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: GestureDetector(
               onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyChapterContent(
                              chapterName: nepaliChapters[index],
                              // chapterContent: chapterContent[index],
                              chapterContent: chapterContent,
                            )),
                  );
                },
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(
                      nepaliChapters[index],
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
