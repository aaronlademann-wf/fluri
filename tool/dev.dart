// Copyright 2015 Workiva Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library tool.dev;

import 'dart:async';

import 'package:dart_dev/dart_dev.dart' show dev, config;

/// Run dart_dev with fluri's configuration.
Future main(List<String> args) async {
  // https://github.com/Workiva/dart_dev

  List<String> directories = ['lib/', 'test/', 'tool/'];
  config.analyze.entryPoints = directories;
  config.copyLicense.directories = directories;
  config.coverage.reportOn = ['lib/'];
  config.format.paths = directories;
  config.test.platforms = ['vm'];

  await dev(args);
}
