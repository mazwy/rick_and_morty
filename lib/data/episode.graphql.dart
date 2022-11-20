import 'package:gql/ast.dart';

class Variables$Query$GetEpisode {
  factory Variables$Query$GetEpisode({required String id}) =>
      Variables$Query$GetEpisode._({
        r'id': id,
      });

  Variables$Query$GetEpisode._(this._$data);

  factory Variables$Query$GetEpisode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetEpisode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetEpisode<Variables$Query$GetEpisode>
      get copyWith => CopyWith$Variables$Query$GetEpisode(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetEpisode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$GetEpisode<TRes> {
  factory CopyWith$Variables$Query$GetEpisode(
    Variables$Query$GetEpisode instance,
    TRes Function(Variables$Query$GetEpisode) then,
  ) = _CopyWithImpl$Variables$Query$GetEpisode;

  factory CopyWith$Variables$Query$GetEpisode.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetEpisode;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetEpisode<TRes>
    implements CopyWith$Variables$Query$GetEpisode<TRes> {
  _CopyWithImpl$Variables$Query$GetEpisode(
    this._instance,
    this._then,
  );

  final Variables$Query$GetEpisode _instance;

  final TRes Function(Variables$Query$GetEpisode) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetEpisode._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetEpisode<TRes>
    implements CopyWith$Variables$Query$GetEpisode<TRes> {
  _CopyWithStubImpl$Variables$Query$GetEpisode(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetEpisode {
  Query$GetEpisode({
    this.episode,
    required this.$__typename,
  });

  factory Query$GetEpisode.fromJson(Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisode(
      episode: l$episode == null
          ? null
          : Query$GetEpisode$episode.fromJson(
              (l$episode as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEpisode$episode? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episode,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisode) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisode on Query$GetEpisode {
  CopyWith$Query$GetEpisode<Query$GetEpisode> get copyWith =>
      CopyWith$Query$GetEpisode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEpisode<TRes> {
  factory CopyWith$Query$GetEpisode(
    Query$GetEpisode instance,
    TRes Function(Query$GetEpisode) then,
  ) = _CopyWithImpl$Query$GetEpisode;

  factory CopyWith$Query$GetEpisode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisode;

  TRes call({
    Query$GetEpisode$episode? episode,
    String? $__typename,
  });
  CopyWith$Query$GetEpisode$episode<TRes> get episode;
}

class _CopyWithImpl$Query$GetEpisode<TRes>
    implements CopyWith$Query$GetEpisode<TRes> {
  _CopyWithImpl$Query$GetEpisode(
    this._instance,
    this._then,
  );

  final Query$GetEpisode _instance;

  final TRes Function(Query$GetEpisode) _then;

  static const _undefined = {};

  TRes call({
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisode(
        episode: episode == _undefined
            ? _instance.episode
            : (episode as Query$GetEpisode$episode?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEpisode$episode<TRes> get episode {
    final local$episode = _instance.episode;
    return local$episode == null
        ? CopyWith$Query$GetEpisode$episode.stub(_then(_instance))
        : CopyWith$Query$GetEpisode$episode(
            local$episode, (e) => call(episode: e));
  }
}

class _CopyWithStubImpl$Query$GetEpisode<TRes>
    implements CopyWith$Query$GetEpisode<TRes> {
  _CopyWithStubImpl$Query$GetEpisode(this._res);

  TRes _res;

  call({
    Query$GetEpisode$episode? episode,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEpisode$episode<TRes> get episode =>
      CopyWith$Query$GetEpisode$episode.stub(_res);
}

const documentNodeQueryGetEpisode = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEpisode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'episode'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'air_date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'episode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetEpisode$episode {
  Query$GetEpisode$episode({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.characters,
    required this.$__typename,
  });

  factory Query$GetEpisode$episode.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisode$episode(
      id: (l$id as String?),
      name: (l$name as String?),
      air_date: (l$air_date as String?),
      episode: (l$episode as String?),
      characters: (l$characters as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetEpisode$episode$characters.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? air_date;

  final String? episode;

  final List<Query$GetEpisode$episode$characters?>? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$air_date = air_date;
    _resultData['air_date'] = l$air_date;
    final l$episode = episode;
    _resultData['episode'] = l$episode;
    final l$characters = characters;
    _resultData['characters'] = l$characters?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$air_date = air_date;
    final l$episode = episode;
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$air_date,
      l$episode,
      l$characters == null ? null : Object.hashAll(l$characters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisode$episode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$air_date = air_date;
    final lOther$air_date = other.air_date;
    if (l$air_date != lOther$air_date) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != lOther$episode) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != null && lOther$characters != null) {
      if (l$characters.length != lOther$characters.length) {
        return false;
      }
      for (int i = 0; i < l$characters.length; i++) {
        final l$characters$entry = l$characters[i];
        final lOther$characters$entry = lOther$characters[i];
        if (l$characters$entry != lOther$characters$entry) {
          return false;
        }
      }
    } else if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisode$episode
    on Query$GetEpisode$episode {
  CopyWith$Query$GetEpisode$episode<Query$GetEpisode$episode> get copyWith =>
      CopyWith$Query$GetEpisode$episode(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEpisode$episode<TRes> {
  factory CopyWith$Query$GetEpisode$episode(
    Query$GetEpisode$episode instance,
    TRes Function(Query$GetEpisode$episode) then,
  ) = _CopyWithImpl$Query$GetEpisode$episode;

  factory CopyWith$Query$GetEpisode$episode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisode$episode;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    List<Query$GetEpisode$episode$characters?>? characters,
    String? $__typename,
  });
  TRes characters(
      Iterable<Query$GetEpisode$episode$characters?>? Function(
              Iterable<
                  CopyWith$Query$GetEpisode$episode$characters<
                      Query$GetEpisode$episode$characters>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetEpisode$episode<TRes>
    implements CopyWith$Query$GetEpisode$episode<TRes> {
  _CopyWithImpl$Query$GetEpisode$episode(
    this._instance,
    this._then,
  );

  final Query$GetEpisode$episode _instance;

  final TRes Function(Query$GetEpisode$episode) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisode$episode(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        air_date:
            air_date == _undefined ? _instance.air_date : (air_date as String?),
        episode:
            episode == _undefined ? _instance.episode : (episode as String?),
        characters: characters == _undefined
            ? _instance.characters
            : (characters as List<Query$GetEpisode$episode$characters?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes characters(
          Iterable<Query$GetEpisode$episode$characters?>? Function(
                  Iterable<
                      CopyWith$Query$GetEpisode$episode$characters<
                          Query$GetEpisode$episode$characters>?>?)
              _fn) =>
      call(
          characters: _fn(_instance.characters?.map((e) => e == null
              ? null
              : CopyWith$Query$GetEpisode$episode$characters(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetEpisode$episode<TRes>
    implements CopyWith$Query$GetEpisode$episode<TRes> {
  _CopyWithStubImpl$Query$GetEpisode$episode(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    List<Query$GetEpisode$episode$characters?>? characters,
    String? $__typename,
  }) =>
      _res;
  characters(_fn) => _res;
}

class Query$GetEpisode$episode$characters {
  Query$GetEpisode$episode$characters({
    this.name,
    this.image,
    required this.$__typename,
  });

  factory Query$GetEpisode$episode$characters.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisode$episode$characters(
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEpisode$episode$characters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEpisode$episode$characters
    on Query$GetEpisode$episode$characters {
  CopyWith$Query$GetEpisode$episode$characters<
          Query$GetEpisode$episode$characters>
      get copyWith => CopyWith$Query$GetEpisode$episode$characters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisode$episode$characters<TRes> {
  factory CopyWith$Query$GetEpisode$episode$characters(
    Query$GetEpisode$episode$characters instance,
    TRes Function(Query$GetEpisode$episode$characters) then,
  ) = _CopyWithImpl$Query$GetEpisode$episode$characters;

  factory CopyWith$Query$GetEpisode$episode$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisode$episode$characters;

  TRes call({
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEpisode$episode$characters<TRes>
    implements CopyWith$Query$GetEpisode$episode$characters<TRes> {
  _CopyWithImpl$Query$GetEpisode$episode$characters(
    this._instance,
    this._then,
  );

  final Query$GetEpisode$episode$characters _instance;

  final TRes Function(Query$GetEpisode$episode$characters) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisode$episode$characters(
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEpisode$episode$characters<TRes>
    implements CopyWith$Query$GetEpisode$episode$characters<TRes> {
  _CopyWithStubImpl$Query$GetEpisode$episode$characters(this._res);

  TRes _res;

  call({
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}
