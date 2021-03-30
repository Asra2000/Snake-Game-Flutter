import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';
import '../utilities/gridUI.dart';

enum Direction { top, bottom, left, right }
Random random = new Random();

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {

  @override
  void initState(){
    super.initState();
    startGame();
  }

  List<int> snake = [70, 71, 72, 73];
  int length = 5;
  int step = 20;
  Direction direction = Direction.right;
  int foodPos = random.nextInt(100);
  int rowCount, total;

  void startGame(){
    snake = [70, 71, 72, 73];
    const duration = Duration(milliseconds: 600);
    Timer.periodic(duration, (timer) {
      moveSnake(direction);
    });
  }

  void moveSnake(Direction dir){
    setState(() {
      switch(dir){
        case Direction.top:
          if(snake.last < rowCount)
            snake.add(snake.last - rowCount + total);
          else
            snake.add(snake.last - rowCount);
          break;

        case Direction.bottom:
          if(snake.last > total)
            snake.add(snake.last - total);
          else
            snake.add(snake.last + rowCount);
          break;

        case Direction.left:
          if(snake.last % 20 == 0)
            snake.add(snake.last - 1 + rowCount);
          else
            snake.add(snake.last - 1);
          break;

        default:
          // move right
        if((snake.last + 1) % rowCount == 0)
          snake.add(snake.last + 1 - rowCount);
        else
          snake.add(snake.last + 1);
          break;
      }

      if(snake.last == foodPos)
        generateRandomPosition();
      else
      snake.removeAt(0);
    });

  }

  void generateRandomPosition(){
    setState(() {
     foodPos = random.nextInt(100);
    });
  }

  bool checkIndex(int index){
    for(int i in snake)
      if(i == index) return true;
      return false;
  }

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - topPadding;
    rowCount = width.toInt()~/step;
    total = height.toInt()~/step * rowCount;

    return Scaffold(
        backgroundColor: Colors.black54,
        body: GestureDetector(
          onVerticalDragUpdate: (details){
          if(direction != Direction.top && details.delta.dy > 0)
            direction = Direction.bottom;
          else if(direction != Direction.bottom && details.delta.dy < 0)
            direction =Direction.top;
        },
          onHorizontalDragUpdate: (details){
            if(direction != Direction.right && details.delta.dx < 0)
              direction = Direction.left;
            else if(direction != Direction.left && details.delta.dx > 0)
              direction =Direction.right;
          },
          child: Container(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: total,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: rowCount),
              // Generate 100 widgets that display their index in the List.
              itemBuilder: (BuildContext context, int index) {
                if(index == foodPos) return BubbleGrid(color: Colors.yellow,);
                else
                return (checkIndex(index))?BubbleGrid(color: Colors.white,) : BubbleGrid();
              }),
            ),
          ),
        );
  }
}

