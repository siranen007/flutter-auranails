import 'package:auranails/utility/palette.dart';
import 'package:flutter/rendering.dart';

class BackgroundPainter extends CustomPainter {
  BackgroundPainter()
      : bluePaint = Paint()
          ..color = Palette.lightBlue
          ..style = PaintingStyle.fill,
        grayPaint = Paint()
          ..color = Palette.darkBlue
          ..style = PaintingStyle.fill,
        orangePaint = Paint()
          ..color = Palette.orange
          ..style = PaintingStyle.fill;

  final Paint bluePaint;
  final Paint grayPaint;
  final Paint orangePaint;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    print(size);
    paintBlue(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  void paintBlue(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, bluePaint);
  }
}
