import 'dart:developer';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final CounterCubit cubit = CounterCubit();
  final CounterBloc bloc = CounterBloc();

  // final UsersCubit cubit = UsersCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder(
              bloc: bloc,
              builder: (_, String state) {
                return Text(state);
              },
            ),
            ElevatedButton(
              onPressed: () {
                bloc.add(Event());
              },
              child: Text('button'),
            )
            // BlocBuilder(
            //   bloc: cubit,
            //   builder: (_, UserState state) {
            //     log('rebuild');
            //     return Text('id - ${state.users[0].id.toString()}, age - ${state.users[0].age.toString()}');
            //   },
            // ),
            // ElevatedButton(onPressed: (){cubit.emit1();}, child: Text('emit1')),
            // ElevatedButton(onPressed: (){cubit.emit5();}, child: Text('emit5')),
            // BlocBuilder(
            //   bloc: cubit,
            //   builder: (_, String state) {
            //     return Text('cubit - $state');
            //   },
            // ),
            // BlocBuilder(
            //   bloc: bloc,
            //   builder: (_, String state) {
            //     return Text('bloc - $state');
            //   },
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     cubit.emit5();
            //     bloc.add(Event5());
            //     cubit.emit1();
            //     bloc.add(Event1());
            //   },
            //   child: Text('update'),
            // ),
          ],
        ),
      ),
    );
  }
}

class Event extends Equatable{
  @override
  List<Object?> get props => [];
}

class CounterBloc extends Bloc<Event, String> {
  CounterBloc() : super('0') {
    on<Event>(
      (Event event, Emitter<String> emit) async {
        emit('1');
        await Future.delayed(const Duration(seconds: 1));
        emit('0');
        await Future.delayed(const Duration(seconds: 1));
      },
      //transformer: concurrent(),
      //transformer: sequential(),
      //transformer: droppable(),
      transformer: restartable(),
    );
  }
}

// class UsersCubit extends Cubit<UserState> {
//   UsersCubit() : super(UserState([User(id: 0, age: 0)]));
//
//   void emit1() async {
//     emit(UserState([User(id: 1, age: 1), User(id: 1, age: 1)]));
//   }
//
//   void emit5() async {
//     emit(UserState([User(id: 5, age: 5), User(id: 5, age: 5)]));
//   }
// }
//
// class UserState extends Equatable{
//   final List<User> users;
//
//   UserState(this.users);
//
//   @override
//   List<Object?> get props => [users];
// }
//
// class User extends Equatable {
//   final int id;
//   final int age;
//
//   const User({required this.id, required this.age});
//
//   @override
//   List<Object?> get props => [id, age];
// }

// class CounterCubit extends Cubit<String> {
//   CounterCubit() : super('0');
//
//   void emit1() async {
//     await Future.delayed(const Duration(seconds: 1));
//     emit('1');
//   }
//
//   void emit5() async {
//     await Future.delayed(const Duration(seconds: 5));
//     emit('5');
//   }
// }
//

// abstract class Events {}
//
// class Event1 extends Events {}
//
// class Event5 extends Events {}
//
// class CounterBloc extends Bloc<Events, String> {
//   CounterBloc() : super('0') {
//     on<Events>(
//       (Events event, Emitter<String> emit) async {
//         if (event is Event1) {
//           await _emit1(event, emit);
//         }
//         if (event is Event5) {
//           await _emit5(event, emit);
//         }
//       },
//       //transformer: concurrent(),
//       transformer: sequential(),
//       //transformer: droppable(),
//       //transformer: restartable(),
//     );
//   }
//
//   Future<void> _emit1(Event1 event, Emitter<String> emit) async {
//     await Future.delayed(const Duration(seconds: 1));
//     emit('1');
//   }
//
//   Future<void> _emit5(Event5 event, Emitter<String> emit) async {
//     await Future.delayed(const Duration(seconds: 5));
//     emit('5');
//   }
// }
