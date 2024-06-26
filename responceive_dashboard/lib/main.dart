import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:responceive_dashboard/dashborad.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const DashBorad(),
      ),
    );
