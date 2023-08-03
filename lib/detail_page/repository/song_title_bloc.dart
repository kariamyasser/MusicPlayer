import 'package:bloc/bloc.dart';

class SongTitleEvent{

}

class ChangeSongTitle extends SongTitleEvent {
  final String id ;
  ChangeSongTitle(this.id) ;
}

// evnets 

class SongTitleBloc extends Bloc<SongTitleEvent, String> {
  @override
  String get initialState => '' ;

  @override
  void onTransition(Transition<SongTitleEvent, String> transition) {
    print(transition) ;
  }

  @override
  Stream<String> mapEventToState(
    SongTitleEvent event,
  ) async* {
    if(event is ChangeSongTitle){
      yield event.id ;
    }
  }
}

