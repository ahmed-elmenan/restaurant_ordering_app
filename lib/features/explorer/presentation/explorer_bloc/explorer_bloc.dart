import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'explorer_event.dart';
part 'explorer_state.dart';

class ExplorerBloc extends Bloc<ExplorerEvent, ExplorerState> {
  ExplorerBloc() : super(ExplorerInitial());

  @override
  Stream<ExplorerState> mapEventToState(
    ExplorerEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
