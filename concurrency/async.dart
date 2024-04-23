//异步支持

//Handing Futures
//await lookUpVersion();
/*
Future<void> checkVersion() async {
  var version = await lookUpVersion();
  // Do something with version
}
*/
/*
try {
  version = await lookUpVersion();
} catch (e) {
  // React to inability to look up the version
}
*/
/*
var entrypoint = await findEntryPoint();
var exitCode = await runExecutable(entrypoint, args);
await flushThenExit(exitCode);
*/
/*
void main() async {
  checkVersion();
  print('In main: version is ${await lookUpVersion()}');
}
*/

//声明异步函数
String lookUpVersion() => '1.0.0';
//Future<String> lookUpVersion() async => '1.0.0';

//处理流
/*
await for (varOrType identifier in expression) {
  // Executes each time the stream emits a value.
}
*/
/*
void main() async {
  // ...
  await for (final request in requestServer) {
    handleRequest(request);
  }
  // ...
}
*/