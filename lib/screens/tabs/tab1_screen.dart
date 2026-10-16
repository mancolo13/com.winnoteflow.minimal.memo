import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • NoteFlow'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_note, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: AppTheme.surfaceColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('PINNED MEMO', style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 11, letterSpacing: 1.2)),
                    Icon(Icons.push_pin, color: AppTheme.primaryColor, size: 16),
                  ],
                ),
                SizedBox(height: 8),
                Text('Quarterly Launch Objectives', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                SizedBox(height: 6),
                Text('• Finalize mobile app store deployment assets\n• Verify backend endpoint response latency < 120ms\n• Deliver sprint report to stakeholders by Friday', style: TextStyle(color: Colors.white70, height: 1.4)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Text('Recent Notes', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          _noteTile('Product Architecture Ideas', 'Drafted 2h ago • System design notes'),
          _noteTile('Weekly Grocery & Pantry List', 'Drafted yesterday • 12 items'),
          _noteTile('Reading Quotes: Deep Work', 'Drafted 3 days ago • Cal Newport notes'),
        ],
      ),
    );
  }

  Widget _noteTile(String title, String meta) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 4),
          Text(meta, style: const TextStyle(color: Colors.white60, fontSize: 12)),
        ],
      ),
    );
  }
}

