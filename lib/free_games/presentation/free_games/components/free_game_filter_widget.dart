import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../data/cubit/free_games_cubit.dart';

// ignore: must_be_immutable
class FreeGameFilterWidget extends StatelessWidget {
  FreeGameFilterWidget({Key? key}) : super(key: key);

  String sort = '';
  String platform = 'all';
  String category = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      const Align(
                        child: Text(
                          'Filter',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Sort by',
                        style: TextStyle(fontSize: 16),
                      ),
                      FormBuilderChoiceChip(
                        name: 'sort-by',
                        options: const [
                          FormBuilderFieldOption(
                            value: 'release-date',
                            child: Text('Release Date'),
                          ),
                          FormBuilderFieldOption(
                            value: 'popularity',
                            child: Text('Popularity'),
                          ),
                          FormBuilderFieldOption(
                            value: 'alphabetical ',
                            child: Text('Alphabetical'),
                          ),
                          FormBuilderFieldOption(
                            value: 'relevance ',
                            child: Text('Relevance'),
                          ),
                        ],
                        spacing: 8,
                        onChanged: (value) {
                          if (value != null) {
                            sort = value.toString();
                          } else {
                            sort = '';
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Platform',
                        style: TextStyle(fontSize: 16),
                      ),
                      FormBuilderChoiceChip(
                        name: 'platform',
                        options: const [
                          FormBuilderFieldOption(
                            value: 'pc',
                            child: Text('PC'),
                          ),
                          FormBuilderFieldOption(
                            value: 'browser',
                            child: Text('Browser'),
                          ),
                          FormBuilderFieldOption(
                            value: 'all',
                            child: Text('Any'),
                          ),
                        ],
                        spacing: 8,
                        onChanged: (value) {
                          if (value != null) {
                            platform = value.toString();
                          } else {
                            platform = 'all';
                          }
                        },
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Genre',
                        style: TextStyle(fontSize: 16),
                      ),
                      FormBuilderDropdown(
                        name: 'category_form',
                        hint: const Text('Select a Genre'),
                        items: [
                          'mmorpg',
                          'shooter',
                          'strategy',
                          'moba',
                          'racing',
                          'sports',
                          'social',
                          'sandbox',
                          'open-world',
                          'survival',
                          'pvp',
                          'pve',
                          'pixel',
                          'voxel',
                          'zombie',
                          'turn-based',
                          'first-person',
                          'third-Person',
                          'top-down',
                          'tank',
                          'space',
                          'sailing',
                          'side-scroller',
                          'superhero',
                          'permadeath',
                          'card',
                          'battle-royale',
                          'mmo',
                          'mmofps',
                          'mmotps',
                          '3d',
                          '2d',
                          'anime',
                          'fantasy',
                          'sci-fi',
                          'fighting',
                          'action-rpg',
                          'action',
                          'military',
                          'martial-arts',
                          'flight',
                          'low-spec',
                          'tower-defense',
                          'horror',
                          'mmorts',
                        ]
                            .map(
                              (val) => DropdownMenuItem(
                                value: val,
                                child: Text(val),
                              ),
                            )
                            .toList(growable: false),
                        onChanged: (value) {
                          category = value.toString();
                        },
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const FaIcon(
                              FontAwesomeIcons.solidTimesCircle,
                              size: 40,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 32),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              context.read<FreeGamesCubit>().getFreeGamesList(
                                    sort: sort,
                                    platform: platform,
                                    category: category,
                                  );
                            },
                            child: FaIcon(
                              FontAwesomeIcons.solidCheckCircle,
                              size: 40,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
