# Architecture

## Running the Project with Visual Studio Code's Debugger

Simply running `flutter run` works and will use connect to the backend via `localhost`. The available environment options that are passed via `flutter run --dart-define=env=<OPTION>` are:

1. `local`: Uses localhost;
1. `dev`: Uses the debug database with mocked data;
1. `prod`: Uses production database.

## Main files of `myoro_matchup/lib/`

1. `common`: Reused files that are not critical to the application working;
1. `core`: Features that are required for the application to work correctly;
1. `110n`: Localization;
1. `module`: Domain modules of the application;
1. `main.dart`: Entry point;
1. `myoro_matchup.dart`: Export file.
