import 'dart:async';

// async operation

/* 
Future get onReady {
  var dur = new Duration(seconds : 4);
  var timeoutFuture = new Future.delayed(dur);

  return timeoutFuture.then((_) {
    return 'loaded';
  });
} 
*/

Future get onReady async {
  var dur = new Duration(seconds : 4);
  var timeoutFuture = new Future.delayed(dur);
  await timeoutFuture;
  return 'loaded';
}

 main() async {
 /* 
  onReady.then((x) {
    print(x);
  }); 
  */
  var x = await onReady;
  print(x);
}