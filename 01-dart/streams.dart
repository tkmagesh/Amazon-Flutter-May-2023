import 'dart:async';

main(){
  var tensStream = new Stream.fromIterable([10,20,30]);
  tensStream.listen((no){
    print("no : $no");
  });

  new Stream.periodic(new Duration(seconds : 1))
    .take(5)
    .listen((_) => print('tick()'));

  //transformation
  new Stream.fromIterable([1,2,3,4,5])
    .map((no) => no * 2)
    .listen((doubleNo) => print('doubleNo : $doubleNo'));

  //Broadcast streams (can be listened by multiple listeners)
  var sc = new StreamController.broadcast();
  var broadcastStream = sc.stream;
  broadcastStream.listen((v) => print('listener #1, v : $v'));
  broadcastStream.listen((v) => print('listener #2, v : $v'));
  sc.add('Magesh');
  sc.add('Suresh');
}