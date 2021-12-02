//import 'dart:html';

import 'package:thsltranslation/models/classifier.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ClassifierFloat extends Classifier {
  ClassifierFloat({int? numThreads}) : super(numThreads: numThreads);

  @override
  //String get modelName => 'mobilenet_v1_1.0_224.tflite';
  String get modelName => 'model_B_rmsProp.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(127.5, 127.5);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1); //0 1
}
