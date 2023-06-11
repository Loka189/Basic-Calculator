import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 47, 27, 83)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color(0xff203A43),
          toolbarHeight: 50,
          elevation: 0,
          title: const Text(
            'Calculator',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(
                    colors: [
                      Color(0xff007991),
                      Color(0xff1CB5E0),
                      Color(0xff78ffd6)
                    ],
                    stops: [
                      0.0,
                      0.7,
                      1.0
                    ],
                    begin: FractionalOffset(1.0, 0.0),
                    end: FractionalOffset(0.0, 1.0))),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                  Color(0xff0F2027),
                  Color(0xff203A43),
                  Color(0xff2C5364)
                ],
                    begin: FractionalOffset(1.0, 0.0),
                    end: FractionalOffset(0.0, 1.0))),
            child: const WholeBody()));
  }
}

class WholeBody extends StatefulWidget {
  const WholeBody({super.key});

  @override
  State<WholeBody> createState() => _WholeBodyState();
}

class _WholeBodyState extends State<WholeBody> {
  var num1Con = TextEditingController();
  var num2Con = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: TextField(
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
            keyboardType: TextInputType.number,
            controller: num1Con,
            decoration: InputDecoration(
                hintText: 'Enter 1st number..',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 101, 126, 156)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.cyan)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue))),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100, right: 100),
          child: TextField(
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
            keyboardType: TextInputType.number,
            controller: num2Con,
            decoration: InputDecoration(
                hintText: 'Enter 2nd number..',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 101, 126, 156)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.cyan)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue))),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          result,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  var num1 = double.parse(num1Con.text.toString());
                  var num2 = double.parse(num2Con.text.toString());
                  var sum = num1 + num2;
                  result = 'Summation is $sum';
                  setState(() {});
                },
                child: Container(
                  width: 135,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer,
                          color: Color.fromARGB(255, 64, 156, 179),
                        )
                      ],
                      gradient: gradientColor(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Add',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
                ),
              ),
              InkWell(
                onTap: () {
                  var num1 = double.parse(num1Con.text.toString());
                  var num2 = double.parse(num2Con.text.toString());
                  var dif = num1 - num2;
                  result = 'Difference is $dif';
                  setState(() {});
                },
                child: Container(
                  width: 135,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer,
                          color: Color.fromARGB(255, 64, 156, 179),
                        )
                      ],
                      gradient: gradientColor(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Substraction',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  var num1 = double.parse(num1Con.text.toString());
                  var num2 = double.parse(num2Con.text.toString());
                  var mul = num1 * num2;
                  result = 'Multiplication is $mul';
                  setState(() {});
                },
                child: Container(
                  width: 135,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer,
                          color: Color.fromARGB(255, 64, 156, 179),
                        )
                      ],
                      gradient: gradientColor(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Multiply',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
                ),
              ),
              InkWell(
                onTap: () {
                  var num1 = double.parse(num1Con.text.toString());
                  var num2 = double.parse(num2Con.text.toString());
                  var div = num1 / num2;
                  result = 'Division is ${div.toStringAsFixed(3)}';
                  setState(() {});
                },
                child: Container(
                  width: 135,
                  height: 50,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          blurStyle: BlurStyle.outer,
                          color: Color.fromARGB(255, 64, 156, 179),
                        )
                      ],
                      gradient: gradientColor(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    'Divide',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

Gradient gradientColor() {
  return const LinearGradient(
      colors: [Color(0xff007991), Color(0xff1CB5E0), Color(0xff78ffd6)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
