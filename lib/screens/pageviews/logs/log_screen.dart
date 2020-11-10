import 'package:flutter/material.dart';
import 'package:switchcalls/models/log.dart';
import 'package:switchcalls/resources/local_db/repository/log_repository.dart';
import 'package:switchcalls/utils/universal_variables.dart';

class LogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UniversalVariables.blackColor,
      body: Center(
        child: FlatButton(
          child: Text("Click Me"),
          onPressed: () {
            LogRepository.init(isHive: true);
            LogRepository.addLogs(Log());
          },
        ),
      ),
    );
  }
}
