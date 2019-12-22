import 'package:flutterspacex/services/api.dart';
import 'package:provider/provider.dart';

List<SingleChildCloneableWidget> providers = [
  ...independentServices
];

List<SingleChildCloneableWidget> independentServices = [
  Provider.value(value: Api())
];
