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
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    Align(
                      child: Text(
                        'Filter',
                        style: TextStyle(fontSize: 20),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Sort by',
                      style: TextStyle(fontSize: 16),
                    ),
                    FormBuilderChoiceChip(
                      name: 'sort-by',
                      options: [
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
                    SizedBox(height: 16),
                    Text(
                      'Platform',
                      style: TextStyle(fontSize: 16),
                    ),
                    FormBuilderChoiceChip(
                      name: 'platform',
                      options: [
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
                    SizedBox(height: 16),
                    Text(
                      'Genre',
                      style: TextStyle(fontSize: 16),
                    ),
                    FormBuilderDropdown(
                      name: 'category_form',
                      hint: Text('Select a Genre'),
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
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidTimesCircle,
                          size: 40,
                          color: Colors.red,
                        ),
                        SizedBox(width: 32),
                        InkWell(
                          onTap: () {
                            print(sort);
                            print(platform);
                            print(category);

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
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
