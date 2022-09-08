import 'package:flutter/material.dart';

class QuranView extends StatefulWidget {
  String header;
  String quran;
  QuranView({
    required this.quran,
    required this.header,
  });

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  double savedOffset = 0.0;
  bool saveIt = false;
  ScrollController? _scrollController;
  double fontSize = 20.0;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.header,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (fontSize != 40) {
                  fontSize++;
                }
              });
            },
            icon: Icon(
              Icons.zoom_in_outlined,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (fontSize != 20) {
                  fontSize--;
                }
              });
            },
            icon: Icon(
              Icons.zoom_out_outlined,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.all(
          20.0,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Center(
                child: Text(
                  "﷽",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                    color: Colors.black,
                    fontSize: 40.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                widget.quran,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize,
                ),
              ),
            ],
          );
        },
        itemCount: 1,
      ),
    );
  }

}