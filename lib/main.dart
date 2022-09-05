import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/home_screen.dart';
import 'features/market/presentation/bloc/brands/brand_bloc.dart';
import 'features/market/presentation/bloc/topic/topic_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BrandBloc()),
        BlocProvider(create: (_) => TopicBloc()),
      ],
      child: MaterialApp(
        title: 'Material App',
        home: HomeScreen(),
      ),
    );
  }
}
