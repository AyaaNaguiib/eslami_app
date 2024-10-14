import 'package:flutter/material.dart';

import '../../../../../core/assets_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> with SingleTickerProviderStateMixin {
   late AnimationController _controller;
  int _counter = 0;
  String _currentText = 'سبحان الله';
  double _rotationValue = 0.0;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _rotationValue += 1 / 33;
      if (_counter > 33) {
        _counter = 1;
        _currentText = _currentText == 'سبحان الله' ? 'الحمدلله' : 'سبحان الله';
      }
      _controller.forward(from: 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsManager.LightMainBg),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return RotationTransition(
                    turns: AlwaysStoppedAnimation(_rotationValue),
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          AssetsManager.bodyOfSebha,
                          height: 300,
                          width: 300,
                        ),
                        Positioned(
                          top: -37,
                          child: Image.asset(
                            AssetsManager.headOfSebha,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'عدد التسبيحات',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFB7935F).withOpacity(0.57),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  '$_counter',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFB7935F),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    _currentText,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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



