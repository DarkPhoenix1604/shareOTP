class AppSMSModel {
  final String to;
  final String body;
  const AppSMSModel({
    required this.to,
    required this.body,
  });

  @override
  String toString() => 'AppSMSModel(to: $to, body: $body)';
}
