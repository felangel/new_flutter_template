import 'package:journal_clean_architecture/domain/entities/app_theme.dart';
import 'package:journal_clean_architecture/domain/repositories/user_settings_repository.dart';

class UserSettingsService {
  final UserSettingsRepository repository;

  UserSettingsService(this.repository);

  Future<AppTheme> get theme => repository.theme();

  Future<void> updateTheme(AppTheme theme) => repository.updateTheme(theme);

  Future<String> get locale => repository.locale();

  Future<void> updateLocale(String locale) => repository.updateLocale(locale);
}
