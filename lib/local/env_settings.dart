final class EnvSettings {
  static const env = String.fromEnvironment("ENV", defaultValue: "WITHOUT_ENV");

  static const baseUrl = String.fromEnvironment(
    "BASE_URL",
    defaultValue: "WITHOUT_BASE_URL",
  );
}
