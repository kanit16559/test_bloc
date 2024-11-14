import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  TestBloc() : super(TestInitial()) {
    // on<TestEvent>((event, emit) async {
    //   if(event.eventId == 1){
    //     emit(TestLoading());
    //     await Future.delayed(Duration(seconds: 2));
    //     emit(TestSuccess());
    //
    //   }else if(event.eventId == 2){
    //     emit(TestSuccess());
    //   }
    //
    // });

    on<GetDataTest>(onGetDataTest);
    on<UpdateToSuccess>(onUpdateToSuccess);
  }

  void onGetDataTest(GetDataTest event, Emitter<TestState> emit) async {
    emit(TestLoading());
    await Future.delayed(Duration(seconds: 2));
    emit(TestSuccess());
  }

  void onUpdateToSuccess(UpdateToSuccess event, Emitter<TestState> emit){
    emit(TestSuccess());
  }
}
