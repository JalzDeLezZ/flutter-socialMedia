import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final otroProvider = Provider.of<DiscoverProvider>(context, listen: false); // * similar to context.watch<DiscoverProvider>();
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading
          ? const Center(
              child: CircularProgressIndicator(
              strokeWidth: 2,
            ))
          : VideoScrollableScreen(videos: discoverProvider.videos),
    );
  }
}
