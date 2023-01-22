import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lifegoals/models/meal.dart';
import 'package:lifegoals/themes/dark_theme.dart';
import 'package:lifegoals/themes/light_theme.dart';
import 'package:lifegoals/widgets/attributes/price_attribute.dart';
import 'package:lifegoals/widgets/attributes/weight_attribute.dart';
import 'package:lifegoals/widgets/ingredients.dart';
import 'package:lifegoals/widgets/meal_detail.dart';
import 'package:lifegoals/widgets/rotated_image.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookAppBeta());
}

class WidgetbookAppBeta extends StatelessWidget {
  const WidgetbookAppBeta({super.key});

  @override
  Widget build(BuildContext context) {
    final devices = [
      Apple.iPhone11,
      Apple.iPhone12,
      const Device.special(
        name: 'Test',
        resolution: Resolution(
          nativeSize: DeviceSize(width: 400, height: 400),
          scaleFactor: 1,
        ),
      ),
    ];

    return Widgetbook.material(
      appInfo: AppInfo(name: 'Widgetbook App'),
      addons: [
        ...configureMaterialAddons(
          themeSetting: MaterialThemeSetting.firstAsSelected(
            themes: [
              WidgetbookTheme(name: 'Light', data: lightTheme),
              WidgetbookTheme(name: 'Dark', data: darkTheme),
            ],
          ),
          frameSetting: FrameSetting.firstAsSelected(
            frames: [
              DefaultDeviceFrame(
                setting: DeviceSetting.firstAsSelected(devices: devices),
              ),
              NoFrame(),
              WidgetbookFrame(
                setting: DeviceSetting.firstAsSelected(devices: devices),
              )
            ],
          ),
          textScaleSetting: TextScaleSetting.firstAsSelected(
            textScales: [
              1,
              2,
              3,
            ],
          ),
          localizationSetting: LocalizationSetting(
            activeLocale: const Locale('en'),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locales: [const Locale('en'), const Locale('de')],
          ),
        ),
      ],
      directories: [
        WidgetbookCategory(
          name: 'widgets test',
          children: [
            WidgetbookFolder(
              name: 'attributes',
              children: [
                WidgetbookComponent(
                  name: 'PriceAttribute',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short price',
                      builder: (context) => PriceAttribute(price: 8.5),
                    ),
                    WidgetbookUseCase(
                      name: 'Long price',
                      builder: (context) => PriceAttribute(price: 108.5),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'WeightAttribute',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short weight',
                      builder: (context) => WeightAttribute(
                        weight: 320,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Long weight',
                      builder: (context) => WeightAttribute(
                        weight: 1050,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Ingredients',
              useCases: [
                WidgetbookUseCase(
                  name: 'Shortl list ',
                  builder: (context) => Ingredients(
                    ingredients: [
                      'tomato',
                      'beef',
                      'onion',
                    ],
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Medium list',
                  builder: (context) => Ingredients(
                    ingredients: [
                      'tomato',
                      'beef',
                      'onion',
                      'mustard',
                      'cheese',
                      'sauce'
                    ],
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Long list',
                  builder: (context) => Ingredients(
                    ingredients: [
                      'tomato',
                      'beef',
                      'onion',
                      'mustard',
                      'cheese',
                      'sauce',
                      'olives',
                      'bread',
                      'bacon',
                    ],
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Rotated image',
              useCases: [
                WidgetbookUseCase(
                  name: 'Default',
                  builder: (context) => RotatedImage(
                    assetPath: 'assets/burger.jpg',
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'MealDetail',
              useCases: [
                WidgetbookUseCase(
                  name: 'Short name',
                  builder: (context) => MealDetail(
                    meal: Meal(
                      title: 'Bacon Burger',
                      imagePath: 'assets/burger.jpg',
                      ingredients: [
                        'tomato',
                        'beef',
                        'onion',
                      ],
                      price: 8.5,
                      weight: 320,
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Long name',
                  builder: (context) => MealDetail(
                    meal: Meal(
                      title: 'Bacon Burger with cheese and onions',
                      imagePath: 'assets/burger.jpg',
                      ingredients: [
                        'tomato',
                        'beef',
                        'onion',
                      ],
                      price: 8.5,
                      weight: 320,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'pages',
          children: [
            WidgetbookFolder(
              name: 'attributes',
              children: [
                WidgetbookComponent(
                  name: 'PriceAttribute',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short price',
                      builder: (context) => PriceAttribute(price: 8.5),
                    ),
                    WidgetbookUseCase(
                      name: 'Long price',
                      builder: (context) => PriceAttribute(price: 108.5),
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: 'WeightAttribute',
                  useCases: [
                    WidgetbookUseCase(
                      name: 'Short weight',
                      builder: (context) => WeightAttribute(
                        weight: 320,
                      ),
                    ),
                    WidgetbookUseCase(
                      name: 'Long weight',
                      builder: (context) => WeightAttribute(
                        weight: 1050,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
