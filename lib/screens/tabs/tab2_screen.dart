import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final folders = [
      {'name': 'Work & Engineering', 'count': '18 Notes'},
      {'name': 'Personal Journal', 'count': '42 Notes'},
      {'name': 'Reading & Book Summaries', 'count': '14 Notes'},
      {'name': 'Quick Scratchpad', 'count': '7 Notes'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Notebooks')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: folders.length,
        itemBuilder: (context, i) {
          final f = folders[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.folder, color: AppTheme.primaryColor),
                    const SizedBox(width: 14),
                    Text(f['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Text(f['count']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}

