import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/cubitcounter.dart';
import 'package:points_counter/cubit/states.dart';
void main() {
  runApp(counterpoints());
}


class counterpoints extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return  cubitCounter();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homepage()),
    );
  }
}
class homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<cubitCounter,parent>(
          builder: (context, state) => Scaffold(
          backgroundColor: Color.fromARGB(255, 243, 185, 242),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 97, 13, 96),
            centerTitle: true,
            title: Text('Football-points-counter'),
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: Row(children: [
                  Column(
                    children: [
                      Text(
                        "Zamalek",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "${BlocProvider.of<cubitCounter>(context).za}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 120),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 97, 13, 96),
                            minimumSize: Size(135, 55),
                          ),
                          onPressed: () {
                            BlocProvider.of<cubitCounter>(context).zamalekfunction(1);
                          },
                          child: Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 97, 13, 96),
                            minimumSize: Size(135, 55),
                          ),
                          child: Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            BlocProvider.of<cubitCounter>(context).zamalekfunction(2);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<cubitCounter>(context).zamalekfunction(3);
                          },
                          child: Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 97, 13, 96),
                              minimumSize: Size(130, 55)),
                        ),
                      ),
                    ],
                  ),
                  
                  Column(
                    children: [
                      Text(
                        "AL-Ahly",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "${BlocProvider.of<cubitCounter>(context).ah}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 120),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 97, 13, 96),
                            minimumSize: Size(130, 55),
                          ),
                          onPressed: () {
                          BlocProvider.of<cubitCounter>(context).ahlykfunction(1);
                          },
                          child: Text(
                            'add 1 point',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 97, 13, 96),
                            minimumSize: Size(130, 55),
                          ),
                          child: Text(
                            'add 2 point',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                          BlocProvider.of<cubitCounter>(context).ahlykfunction(2);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: ElevatedButton(
                          onPressed: () {
                          BlocProvider.of<cubitCounter>(context).ahlykfunction(3);
                          },
                          child: Text(
                            'add 3 point',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 97, 13, 96),
                              minimumSize: Size(130, 55)),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: ElevatedButton(
                  onPressed: () {
                      BlocProvider.of<cubitCounter>(context).zero();
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 97, 13, 96),
                    minimumSize: Size(150, 60),
                  ),
                ),
              ),
            ],
          ),
      ),
      listener: (context,state){
          if(state is changeINzamalek)
          {

          }
          else{

          }
      },
        );
  }
}