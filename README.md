[![Version](https://img.shields.io/pub/v/fancy_tab?color=%2354C92F&logo=dart)](https://pub.dev/packages/fancy_tab/install)

# Fancy Tab

It is fancy and beautiful tab bar design.It is highly customisable and easy to use with PageView.builder.

<img src="https://user-images.githubusercontent.com/92029288/187216317-c00f4b9b-5914-4205-b7b5-bd9d7b4167a9.mp4" alt="alt text" width="300" height="620">


## 🌟 Installing
```
dependencies:
    fancy_tab: ^0.0.4
```

## ⚡️ Import
```
import 'package:fancy_tab/fancy_tab.dart';
```


|  | Android | IOS | Web  | Windows | MacOs | Linux |
| --- | --- | --- | --- | --- | --- | --- |
| Supported | ✅️️ |  ✅️ |  ✅️ |  ✅️ |  ✅️ |  ✅️

# 📙 How To Use

## Available Parameters
```dart
 FancyTab({
Key? key,
required this.selected,
required this.labelsList,
required this.length,
this.onTap,
this.textDirection = TextDirection.ltr,
this.selectedColor = const Color(0xFF2196F3),
this.unSelectedColor = const Color(0xA69E9E9E),
this.selectedTextColor = const Color(0xFFFFFFFF),
this.unSelectedTextColor = const Color(0xFF7A7A7A),
this.borderColor = const Color(0xFF000000),
this.separator = 5,
this.tabBarHeight = 50,
});
```
| Parameter                           | Datatype               |    Initial Value          |
|---------------------------------    |------------------------|---------------------------|
| selected                            | int                    |        null               |
| labelsList                          | List<string>           |        null               |
| length                              | int                    |        null               |
| onTap                               | void Function?(int)?   |        null               |
| textDirection                       | TextDirection?         |   TextDirection.ltr       |
| selectedColor                       | Color?                 |   Color(0xFF2196F3)       |
| unSelectedColor                     | Color?                 |   Color(0xA69E9E9E)       |
| selectedTextColor                   | Color?                 |   Color(0xFFFFFFFF)       |
| unSelectedTextColor                 | Color?                 |   Color(0xFF7A7A7A)       |
| borderColor                         | Color?                 |   Color(0xFF000000)       |
| separator                           | double?                |        5.0                |
| tabBarHeight                        | double?                |        50.0               |


# Contributions
If you encounter any problem or the library is missing a feature feel free to open an issue. Feel free to fork, improve the package and make pull request.
