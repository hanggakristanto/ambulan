import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
import 'dart:convert';
import 'package:flutter/scheduler.dart';
import 'dart:async';
import 'dart:io';
// import 'package:html/parser.dart';
// import 'input.dart';
// import 'pilih_nominal.dart';

final List<String> imgList = [];
final List<String> judulList = [];
final List<String> idList = [];
const kDefaultPaddin = 10.0;

class program extends StatefulWidget {
  final String? id_campaign;
  final String? gb_campaign;
  final String? tx_campaign;
  final String? tk_campaign;
  final String? jd_campaign;

  program(
      {Key? key,
      @required this.id_campaign,
      @required this.gb_campaign,
      @required this.tx_campaign,
      @required this.tk_campaign,
      @required this.jd_campaign})
      : super(key: key);
  @override
  _programState createState() => _programState();
}

class _programState extends State<program> {
  @override
  void initState() {
    String articleContent = widget.tx_campaign.toString();
    String content = articleContent.replaceAll("<img>", " ");
    Widget articleContentHtml2 = Column(
      children: [
        // Html(
        //   data: content,
        //   style: {
        //     "p": Style(
        //       textAlign: TextAlign.justify,
        //     ),
        //   },
        // ),
      ],
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String articleContent = widget.tx_campaign.toString();
    String content = articleContent.replaceAll(
        "<p xss=removed><img", "<img style='display:none' ");
    double width2 = MediaQuery.of(context).size.width - 50;
    double widths = MediaQuery.of(context).size.width;
    double heights = MediaQuery.of(context).size.height + 100;
    Widget articleContentHtml2 = Expanded(
      child: Column(
        children: [
          // Html(
          //   data: content,
          //   style: {
          //     "p": Style(
          //       textAlign: TextAlign.justify,
          //     ),
          //   },
          // ),
        ],
      ),
    );
    return Scaffold(
      body: Stack(children: <Widget>[
        ListView(children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPaddin,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.jd_campaign.toString(),
                      style: Theme.of(context).textTheme.headline5),
                  SizedBox(height: kDefaultPaddin),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Hero(
                          tag: "Test",
                          child: Image.network(
                            widget.gb_campaign.toString(),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: widths,
                    child: Row(children: <Widget>[
                      articleContentHtml2,
                    ]),
                  ),
                  Container(
                    width: widths,
                    height: 80,
                  ),
                ],
              ),
            ),
          )
        ])
      ]),
      floatingActionButton: Container(
          width: width2,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => pilih_nominal(
              //         id_campaign: widget.id_campaign.toString(),
              //       ),
              //     ));
            },
            label: const Text('Donasi'),
            backgroundColor: Colors.pink,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
