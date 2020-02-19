// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonController on _PersonController, Store {
  Computed<List<Person>> _$peopleComputed;

  @override
  List<Person> get people =>
      (_$peopleComputed ??= Computed<List<Person>>(() => super.people)).value;

  final _$_peopleAtom = Atom(name: '_PersonController._people');

  @override
  ObservableList<Person> get _people {
    _$_peopleAtom.context.enforceReadPolicy(_$_peopleAtom);
    _$_peopleAtom.reportObserved();
    return super._people;
  }

  @override
  set _people(ObservableList<Person> value) {
    _$_peopleAtom.context.conditionallyRunInAction(() {
      super._people = value;
      _$_peopleAtom.reportChanged();
    }, _$_peopleAtom, name: '${_$_peopleAtom.name}_set');
  }

  final _$getPeopleAsyncAction = AsyncAction('getPeople');

  @override
  Future getPeople() {
    return _$getPeopleAsyncAction.run(() => super.getPeople());
  }
}
