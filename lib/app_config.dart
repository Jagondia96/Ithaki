enum Environment { dev, prod }

class AppConfig {
  final Environment environment;
  final String apiBaseUrl;
  final String appName;

  const AppConfig({
    required this.environment,
    required this.apiBaseUrl,
    required this.appName,
  });

  static const dev = AppConfig(
    environment: Environment.dev,
    apiBaseUrl: 'https://dev.api.ithaki.com',
    appName: 'Itháki Dev',
  );

  static const prod = AppConfig(
    environment: Environment.prod,
    apiBaseUrl: 'https://api.ithaki.com',
    appName: 'Itháki',
  );
}
