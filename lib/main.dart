import 'package:flutter/material.dart';

void main() {
  runApp(

   MyApp(), 
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // build の中に追加します。
    // return の意味は関数を説明するときに解説します。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('昆布＠flutter大学',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        body:SingleChildScrollView(
          child:Column(
            children: [
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
              TweetTile(),
            ],
          ),
        )
      ),
    );
  }
}

class TweetTile extends StatelessWidget {
  const TweetTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('昆布＠flutter大学'),
                  SizedBox(width: 10),
                  Text ('2022／05\15'),
                ],          
              ),
              SizedBox(height: 10),
              Text('最高でした'),
              IconButton(
                onPressed: () {}, // ボタンを押したときに実行する内容を書けます。今回は何も実行しません。
                icon: Icon(Icons.favorite_border), // Icon も Widget のひとつ。Icons. と打つと候補がたくさんでるので好きなアイコンに変更してみよう。
                ),
            ],
          ),
        ],
      ),
    );
  }
}