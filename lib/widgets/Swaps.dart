import 'package:flutter/material.dart';
import 'package:swap_app/styles/colors.dart';
import 'package:swap_app/widgets/options.dart';

class Swaps extends StatefulWidget {
  final myData;

  Swaps({Key key, this.myData}) : super(key: key);

  @override
  _SwapsState createState() => _SwapsState();
}

class _SwapsState extends State<Swaps> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: ListView.builder(
                itemCount: widget.myData.length,
                itemBuilder: (context, index){
              return Container(
                margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                height: 200,
                decoration: decoration.copyWith(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Swap Item", style: TextStyle(color: Color(0xFFFF6275), fontSize: 15,)),
                          SwapState(stateIsNew: widget.myData[index]["new"],)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.myData[index]["name"], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text(widget.myData[index]["description"], style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 3,),
                                SizedBox(height: 15),
                                Text("Desired Quality", style: TextStyle(color: Colors.grey[300]),)
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(widget.myData[index]["image"])
                              )
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ))
      ],
    );
  }
}

class SwapState extends StatelessWidget {
  final bool stateIsNew;

  const SwapState({Key key, this.stateIsNew}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: stateIsNew ? gradient : LinearGradient(
          colors: <Color>[
            Colors.black,
            Colors.black
          ]
        )
      ),
      child: Center(child: Text(stateIsNew ? "New" : "Sent", style: TextStyle(color: Colors.white),),),
    );
  }
}
