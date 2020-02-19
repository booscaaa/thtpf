import 'package:mobx/mobx.dart';
import 'package:tht/api/person.dart';
import 'package:tht/model/person.dart';

part 'person.g.dart';

class PersonController = _PersonController with _$PersonController;

abstract class _PersonController with Store {
  @observable
  ObservableList<Person> _people = new ObservableList<Person>();


  @computed
  List<Person> get people => _people.toList();

  @action
  getPeople() async {
    PersonApi api = new PersonApi();

    _people = ObservableList<Person>.of(await api.index());
  }
}
