import 'package:flutter/material.dart';

import '../../../data/models/free_game_details.dart';
import 'system_requirements_widget.dart';

class MinimumSpecSection extends StatelessWidget {
  final FreeGameDetails game;

  const MinimumSpecSection({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Minimum System Requirements',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 8),
          SystemRequirementsWidget(
            text1: 'OS',
            text2: game.minimumSystemRequirements.os ?? 'N/A',
          ),
          SystemRequirementsWidget(
            text1: 'Processor',
            text2: game.minimumSystemRequirements.processor ?? 'N/A',
          ),
          SystemRequirementsWidget(
            text1: 'Memory',
            text2: game.minimumSystemRequirements.memory ?? 'N/A',
          ),
          SystemRequirementsWidget(
            text1: 'Graphics',
            text2: game.minimumSystemRequirements.graphics ?? 'N/A',
          ),
          SystemRequirementsWidget(
            text1: 'Storage',
            text2: game.minimumSystemRequirements.storage ?? 'N/A',
          ),
        ],
      ),
    );
  }
}
