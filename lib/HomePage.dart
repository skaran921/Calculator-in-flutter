import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String first;
  String secound;
  String operation;
  String inputBox = "";

  final textfieldControler = TextEditingController();
  @override
  void initState() {
    super.initState();
    textfieldControler.text = this.inputBox;
  }

  addToInputBox(String n) {
    setState(() {
      this.inputBox += n;
      textfieldControler.text = this.inputBox;
    });
  }

  runBackspace() {
    var l = this.inputBox.length;
    print("hii bs");
    setState(() {
      inputBox = this.textfieldControler.text.substring(0, l - 1);
      textfieldControler.text = inputBox;
    });
  }

  setOperation(String operation) {
    setState(() {
      this.first = this.textfieldControler.text;
      this.textfieldControler.text = "";
      this.inputBox = "";
      this.operation = operation;
    });
  }

  ans() {
    try {
      var f = int.parse(this.first);
      var s = int.parse(this.textfieldControler.text);
      switch (this.operation) {
        case "+":
          var ans = f + s;
          setState(() {
            this.textfieldControler.text = ans.toString();
          });
          break;
        case "-":
          var ans = f - s;
          setState(() {
            this.textfieldControler.text = ans.toString();
          });
          break;
        case "*":
          var ans = f * s;
          setState(() {
            this.textfieldControler.text = ans.toString();
          });
          break;
        case "/":
          var ans = f / s;
          setState(() {
            this.textfieldControler.text = ans.toString();
          });
          break;
      }
    } catch (e) {
      setState(() {
        this.textfieldControler.text = e;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        title: Text("Calculator"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 10.0), child: Icon(Icons.mood))
        ],
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              maxLines: 2,
              controller: textfieldControler,
              enabled: false,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  fillColor: Colors.white70,
                  hintText: "",
                  contentPadding: EdgeInsets.all(10.0)),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("9");
                    },
                    child: Text(
                      "9",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("8");
                    },
                    child: Text(
                      "8",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("7");
                    },
                    child: Text(
                      "7",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey,
                    elevation: 2.0,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setOperation("*");
                    },
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("6");
                    },
                    child: Text(
                      "6",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("5");
                    },
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("4");
                    },
                    child: Text(
                      "4",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey,
                    elevation: 2.0,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setOperation("-");
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("3");
                    },
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("2");
                    },
                    child: Text(
                      "2",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("1");
                    },
                    child: Text(
                      "1",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey,
                    elevation: 2.0,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setOperation("+");
                    },
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                      backgroundColor: Colors.white,
                      elevation: 2.0,
                      foregroundColor: Colors.blueAccent,
                      onPressed: () {
                        this.runBackspace();
                      },
                      child: Icon(Icons.backspace)),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    elevation: 2.0,
                    foregroundColor: Colors.blueAccent,
                    onPressed: () {
                      addToInputBox("0");
                    },
                    child: Text(
                      "0",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.greenAccent,
                    elevation: 2.0,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      this.ans();
                    },
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                  Spacer(),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey,
                    elevation: 2.0,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setOperation("/");
                    },
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              )),
        ],
      )),
    );
  }
}
