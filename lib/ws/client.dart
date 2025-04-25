import 'package:stomp_dart_client/stomp_dart_client.dart';

StompClient client = StompClient(
  config: StompConfig(
    url: 'wss://ap-websocket.xinba66.com/ws/websocket',
    onConnect: (frame) {
      print('Connected to WebSocket');
      client.subscribe(
        destination: '/topic/sport/single/match/104899328',
        headers: {},
        callback: (frame) {
          // Received a frame for this subscription
          print(frame.binaryBody);
        },
      );
    },
  ),
);
