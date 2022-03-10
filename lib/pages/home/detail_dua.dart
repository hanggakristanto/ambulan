import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'program.dart';

class DetailDua extends StatefulWidget {
  const DetailDua({Key? key}) : super(key: key);

  @override
  _DetailDuaState createState() => _DetailDuaState();
}

class _DetailDuaState extends State<DetailDua> with TickerProviderStateMixin {
  late Future<List<Show>> shows;
  String searchString = "";
  var formatter = NumberFormat("#,##0");
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    shows = fetchShows();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tes',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('tes'),
          backgroundColor: const Color(0xffA82E32),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FutureBuilder(
                builder: (context, AsyncSnapshot<List<Show>> snapshot) {
                  if (snapshot.hasData) {
                    return Center(
                      child: ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return snapshot.data![index].title
                                  .toLowerCase()
                                  .contains(searchString)
                              ? ListTile(
                                  leading: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(5.0), //or 15.0
                                    child: Container(
                                        height: 170.0,
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${snapshot.data?[index].imageUrl}'),
                                                fit: BoxFit.cover))),
                                  ),
                                  title: Text('${snapshot.data?[index].title}'),
                                  subtitle: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Terkumpul: Rp. ${formatter.format(snapshot.data?[index].terkumpul).replaceAll(',', '.')}'),
                                      snapshot.data?[index].target == 0
                                          ? Text('Open Donasi')
                                          : Text(
                                              'Dari Rp. ${formatter.format(snapshot.data?[index].target).replaceAll(',', '.')}'),
                                    ],
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => program(
                                            id_campaign:
                                                snapshot.data?[index].malId,
                                            gb_campaign:
                                                snapshot.data?[index].imageUrl,
                                            tx_campaign:
                                                snapshot.data?[index].deskripsi,
                                            tk_campaign: snapshot
                                                .data?[index].terkumpul
                                                .toString(),
                                            jd_campaign:
                                                snapshot.data?[index].title,
                                          ),
                                        ));
                                  })
                              : Container();
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return snapshot.data![index].title
                                  .toLowerCase()
                                  .contains(searchString)
                              ? Divider()
                              : Container();
                        },
                      ),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                    return Center(child: Text('Something went wrong :('));
                  }
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Harap Menunggu ...',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            CircularProgressIndicator(
                              value: controller.value,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                future: shows,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//future-menunggu
//asyn = metohod tidak di tunguin
Future<List<Show>> fetchShows() async {
  //await= menunggu
  final response = await http
      .get(Uri.parse('http://layanandaqu.pppa.id/api/sedekahonline/campaign'),
          // Uri.parse('http://127.0.0.1:8000/api/campaign'),
          // Uri.parse('http://127.0.0.1:8000/api/products'),
          headers: {
        // 'apikey': '702dde7d-c535-4136-9613-61358039a80e',
        'apikey': '702dde7d-c535-4136-9613-61358039a70e',
        'store': 'mydaqu'
      });

  if (response.statusCode == 200) {
    var topShowsJson = jsonDecode(response.body)['data'] as List;
    // print(response.body);
    return topShowsJson.map((show) => Show.fromJson(show)).toList();
  } else {
    throw Exception('Failed to load');
  }
}

class Show {
  final String malId;
  final String title;
  final String imageUrl;
  final String deskripsi;
  final int target;
  final int terkumpul;

  Show(
      {required this.malId,
      required this.title,
      required this.imageUrl,
      required this.target,
      required this.terkumpul,
      required this.deskripsi});

  factory Show.fromJson(Map<String, dynamic> json) {
    return Show(
      malId: json['id_camp'],
      title: json['judul'],
      imageUrl: json['gambar'],
      terkumpul: json['terkumpul'],
      target: json['target'],
      deskripsi: json['deskripsi'],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(MaterialApp(
//     home: Tesapi(),
//   ));
// }

// class Tesapi extends StatefulWidget {
//   const Tesapi({Key? key}) : super(key: key);

//   @override
//   State<Tesapi> createState() => _TesapiState();
// }

// class _TesapiState extends State<Tesapi> {
//   final String apiUrl = "https://reqres.in/api/users?page=2";

//   Future<List<dynamic>> _fecthData() async {
//     var result = await http.get(Uri.parse(apiUrl));
//     return json.decode(result.body)['data'];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Belajar API'),
//       ),
//       // ignore: avoid_unnecessary_containers
//       body: Container(
//         child: FutureBuilder<List<dynamic>>(
//           future: _fecthData(),
//           builder: (BuildContext context, AsyncSnapshot snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                   padding: EdgeInsets.all(10),
//                   itemCount: snapshot.data.length,
//                   itemBuilder: (BuildContext context, dynamic index) {
//                     return ListTile(
//                       leading: CircleAvatar(
//                         radius: 30,
//                         backgroundImage:
//                             NetworkImage(snapshot.data[index]['avatar']),
//                       ),
//                       title: Text(snapshot.data[index]['first_name'] +
//                           " " +
//                           snapshot.data[index]['last_name']),
//                       subtitle: Text(snapshot.data[index]['email']),
//                     );
//                   });
//             } else {
//               var controller;
//               return Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Text(
//                               'Harap Menunggu ...',
//                               style: Theme.of(context).textTheme.headline6,
//                             ),
//                             CircularProgressIndicator(
//                               value: controller.value,
//                               semanticsLabel: 'Linear progress indicator',
//                             ),
//                           ],
//                         ),
//                       ]));
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:api_pertama/repository.dart';
// import 'package:flutter/material.dart';

// import 'model.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Blog> listBlog = [];
//   Repository repository = Repository();
//   getData() async {
//     listBlog = await repository.getData();
//   }

//   @override
//   void initState() {
//     getData();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.separated(
//           itemBuilder: (context, index) {
//             // ignore: avoid_unnecessary_containers
//             return Container(
//               child: Text(listBlog[index].name),
//             );
//           },
//           separatorBuilder: (context, index) {
//             return Divider();
//           },
//           itemCount: listBlog.length),
//     );
//   }
// }

// import 'package:api_pertama/post_result_model.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PostResult postResult = null;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("AppBar Demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text((postResult != null)
//                   ? postResult.id +
//                       " | " +
//                       postResult.name +
//                       " | " +
//                       postResult.job +
//                       " | " +
//                       postResult.created
//                   : "tidak ada data"),
//               ElevatedButton(
//                 onPressed: () {
//                   PostResult.connecToApi("hangga", "job").then((value) {
//                     postResult = value;
//                     setState(() {});
//                   });
//                 },
//                 child: Text("POST"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }