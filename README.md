# Frankenstein

[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)

A straight forward approach to combining commonly used Flutter UI elements into a single implementation.

## Contents

- [Features](#features)
- [Prerequisite](#prerequisite)
- [Getting Started](#getting-started)
- [Plugin Usage](#plugin-usage)
- [Compatibility with Nx](#compatibility-with-nx)

## Features

Here is a list of some of the coolest features of the plugin:

- ✅ SizedBox
- ✅ GestureDetector
- ✅ Padding
- ✅ Expanded
- ✅ DecoratedBox
- ✅ SingleChildScrollView
- ✅ GestureDetector
- ✅ GestureDetector
- ...

## Getting Started

The Frankenstein plugin currently ships with a single widget named 'ZZ' which enables all of the feature capabilities.

Usage is as simple as specifying the properties you want the child to be contained in.

```dart
ZZ(
  flex: 0,
  padding: const EdgeInsets.all(20.0),
  canScroll: true,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(4.0),
    border: Border.all(),
  ),
  onTap: () {
    // Tap handler
  },
  child: const Center(
    child: Text(
      'Hello!',
      style: TextStyle(color: Colors.red),
    ),
  ),
),
```

## Usage

  final Widget child;
  final void Function()? onTap;
  final EdgeInsets? padding;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final int? flex;
  final bool? canScroll;

Here the list of available arguments

| Argument            | Widget                        | Description                         |
| ------------------- | ----------------------------- | ----------------------------------- |
| `child`             | _see `Widget`_                | The Widget to be wrapped            |
| `onTap`             | _see `GestureDetector`_       | Gesture Detection for the Widget    |
| `padding`           | _see `Padding`_               | Encapsulate the Widget with Padding |
| `decoration`        | _see `DecoratedBox`_          | Provide Decoration around Widget    |
| `height`<sup>1</sup>| _see `SizedBox`_              | Set a height for your Widget        |
| `width`<sup>1</sup> | _see `SizedBox`_              | Set a width for your Widget         |
| `flex`<sup>1</sup>  | _see `Expanded`_              | Set the flex value of your Widget   |
| `canScroll`         | _see `SingleChildScrollView`_ | Enable scrolling for your Widget    |

<sup>1</sup> : *These properties are mutually exclusive. If both flex and width/height are specified, only flex will be used.*

## License

Copyright (c) 2021-2022 Michael Wrock. Licensed under the BSD License (BSD)

<p>
  <img src="https://opensource.org/files/OSI_Approved_License.png" width="50">
</p>

## Credits 

Built with Nx and NxRocks.

<p>
  <img src="https://raw.githubusercontent.com/tinesoft/nxrocks/master/images/nx-flutter.png" width="50">
</p>
