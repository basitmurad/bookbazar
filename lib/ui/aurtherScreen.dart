
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AurtherScreen extends StatefulWidget {
  State<StatefulWidget> createState() => _AurtherScreen();
}

class _AurtherScreen extends State<AurtherScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Authors'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustumSerachDelagate());
              },
              icon: Icon(Icons.search))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                alignment: Alignment.topLeft,
                child: Text('check the authors'),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                alignment: Alignment.topLeft,
                child: Text(
                  'Authors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  alignment: Alignment.topLeft,
                  child: DefaultTabController(

                    length: 7, // Number of tabs
                    child: Column(
                      children: [
                        TabBar(


isScrollable: true,
                          tabAlignment: TabAlignment.start,
                          tabs: [
                            Tab(text: 'Tab 1'),
                            Tab(text: 'Tab 2'),
                            Tab(text: 'Tab 3'),
                            Tab(text: 'Tab 2'),
                            Tab(text: 'Tab 3'),
                            Tab(text: 'Tab 2'),
                            Tab(text: 'Tab 3'),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              // Content of Tab 1
                              Container(
                                  color: Colors.red,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.yellow,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.blue,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.grey,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.amber,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.grey,
                                  child: Text('Tab 1 Content')),
                              Container(
                                  color: Colors.amber,
                                  child: Text('Tab 1 Content')),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustumSerachDelagate extends SearchDelegate {
  List<String> names = [
    'Product A',
    'Product B',
    'Product C',
    'Product A',
    'Product B',
    'Product C'
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> match = [];

    for (var fruit in names) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        match.add(fruit);
      }

      return ListView.builder(
        itemCount: match.length,
        itemBuilder: (context, index) {
          var result = match[index];
          return ListTile(
            title: Text(result),
          );
        },
      );
    }
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> match = [];

    for (var fruit in names) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        match.add(fruit);
      }
    }

    return ListView.builder(
      itemCount: match.length,
      itemBuilder: (context, index) {
        var result = match[index];
        return ListTile(
          title: Text(result),
        );
      },
    );

    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
