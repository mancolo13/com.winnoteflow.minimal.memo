import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Action Checklist')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _checkItem('Review pull request code changes', true),
          _checkItem('Run end-to-end integration tests', true),
          _checkItem('Submit app binary for store review', false),
        ],
      ),
    );
  }

  Widget _checkItem(String title, bool done) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Icon(done ? Icons.check_box : Icons.check_box_outline_blank, color: done ? AppTheme.primaryColor : Colors.white54),
          const SizedBox(width: 12),
          Expanded(child: Text(title, style: TextStyle(fontWeight: FontWeight.w600, decoration: done ? TextDecoration.lineThrough : null, color: done ? Colors.white54 : Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis)),
        ],
      ),
    );
  }
}

