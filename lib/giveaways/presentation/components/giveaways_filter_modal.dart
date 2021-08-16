import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../data/cubit/giveaways_cubit.dart';

// ignore: must_be_immutable
class GiveawaysFilterModal extends StatelessWidget {
  GiveawaysFilterModal({Key? key}) : super(key: key);

  String type = '';
  String platform = '';
  String sort = '';

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
                        style: TextStyle(fontSize: 22),
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
                          value: 'date',
                          child: Text('Release Date'),
                        ),
                        FormBuilderFieldOption(
                          value: 'popularity',
                          child: Text('Popularity'),
                        ),
                        FormBuilderFieldOption(
                          value: 'value ',
                          child: Text('Value'),
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
                      'Giveaway Type',
                      style: TextStyle(fontSize: 16),
                    ),
                    FormBuilderChoiceChip(
                      name: 'type',
                      options: [
                        FormBuilderFieldOption(
                          value: 'game',
                          child: Text('Game'),
                        ),
                        FormBuilderFieldOption(
                          value: 'loot',
                          child: Text('Loot'),
                        ),
                        FormBuilderFieldOption(
                          value: 'beta',
                          child: Text('Beta'),
                        ),
                      ],
                      spacing: 8,
                      onChanged: (value) {
                        if (value != null) {
                          type = value.toString();
                        } else {
                          type = '';
                        }
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Platform',
                      style: TextStyle(fontSize: 16),
                    ),
                    FormBuilderDropdown(
                      name: 'category_form',
                      hint: Text('Select a platform'),
                      items: [
                        'pc',
                        'steam',
                        'epic-games-store',
                        'ubisoft',
                        'gog',
                        'itchio',
                        'ps4',
                        'xbox-one',
                        'switch',
                        'android',
                        'ios',
                        'vr',
                        'battlenet',
                        'origin',
                        'drm-free',
                      ]
                          .map(
                            (val) => DropdownMenuItem(
                              value: val,
                              child: Text(val),
                            ),
                          )
                          .toList(growable: false),
                      onChanged: (value) {
                        platform = value.toString();
                      },
                    ),
                    const Spacer(),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.solidTimesCircle,
                            size: 40,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 32),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            context.read<GiveawaysCubit>().getGiveawaysList(
                                  sort: sort,
                                  platform: platform,
                                  type: type,
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
