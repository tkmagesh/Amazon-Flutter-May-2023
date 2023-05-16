import 'dart:async';

// async operation

Future get onReady {
  var dur = new Duration(seconds : 4);
  var timeoutFuture = new Future.delayed(dur);

  return timeoutFuture.then((_) {
    return 'loaded';
  });
}

main(){
  onReady.then((x) {
    print(x);
  });
}