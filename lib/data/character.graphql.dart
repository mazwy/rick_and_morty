import 'package:gql/ast.dart';

class Variables$Query$GetCharacter {
  factory Variables$Query$GetCharacter({required String id}) =>
      Variables$Query$GetCharacter._({
        r'id': id,
      });

  Variables$Query$GetCharacter._(this._$data);

  factory Variables$Query$GetCharacter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetCharacter._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetCharacter<Variables$Query$GetCharacter>
      get copyWith => CopyWith$Variables$Query$GetCharacter(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetCharacter) ||
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

abstract class CopyWith$Variables$Query$GetCharacter<TRes> {
  factory CopyWith$Variables$Query$GetCharacter(
    Variables$Query$GetCharacter instance,
    TRes Function(Variables$Query$GetCharacter) then,
  ) = _CopyWithImpl$Variables$Query$GetCharacter;

  factory CopyWith$Variables$Query$GetCharacter.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCharacter;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetCharacter<TRes>
    implements CopyWith$Variables$Query$GetCharacter<TRes> {
  _CopyWithImpl$Variables$Query$GetCharacter(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCharacter _instance;

  final TRes Function(Variables$Query$GetCharacter) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$GetCharacter._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCharacter<TRes>
    implements CopyWith$Variables$Query$GetCharacter<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCharacter(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetCharacter {
  Query$GetCharacter({
    this.character,
    required this.$__typename,
  });

  factory Query$GetCharacter.fromJson(Map<String, dynamic> json) {
    final l$character = json['character'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacter(
      character: l$character == null
          ? null
          : Query$GetCharacter$character.fromJson(
              (l$character as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCharacter$character? character;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$character = character;
    _resultData['character'] = l$character?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$character = character;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$character,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacter) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$character = character;
    final lOther$character = other.character;
    if (l$character != lOther$character) {
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

extension UtilityExtension$Query$GetCharacter on Query$GetCharacter {
  CopyWith$Query$GetCharacter<Query$GetCharacter> get copyWith =>
      CopyWith$Query$GetCharacter(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCharacter<TRes> {
  factory CopyWith$Query$GetCharacter(
    Query$GetCharacter instance,
    TRes Function(Query$GetCharacter) then,
  ) = _CopyWithImpl$Query$GetCharacter;

  factory CopyWith$Query$GetCharacter.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacter;

  TRes call({
    Query$GetCharacter$character? character,
    String? $__typename,
  });
  CopyWith$Query$GetCharacter$character<TRes> get character;
}

class _CopyWithImpl$Query$GetCharacter<TRes>
    implements CopyWith$Query$GetCharacter<TRes> {
  _CopyWithImpl$Query$GetCharacter(
    this._instance,
    this._then,
  );

  final Query$GetCharacter _instance;

  final TRes Function(Query$GetCharacter) _then;

  static const _undefined = {};

  TRes call({
    Object? character = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacter(
        character: character == _undefined
            ? _instance.character
            : (character as Query$GetCharacter$character?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCharacter$character<TRes> get character {
    final local$character = _instance.character;
    return local$character == null
        ? CopyWith$Query$GetCharacter$character.stub(_then(_instance))
        : CopyWith$Query$GetCharacter$character(
            local$character, (e) => call(character: e));
  }
}

class _CopyWithStubImpl$Query$GetCharacter<TRes>
    implements CopyWith$Query$GetCharacter<TRes> {
  _CopyWithStubImpl$Query$GetCharacter(this._res);

  TRes _res;

  call({
    Query$GetCharacter$character? character,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCharacter$character<TRes> get character =>
      CopyWith$Query$GetCharacter$character.stub(_res);
}

const documentNodeQueryGetCharacter = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCharacter'),
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
        name: NameNode(value: 'character'),
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
            name: NameNode(value: 'status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
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
            name: NameNode(value: 'origin'),
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
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'episode'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'episode'),
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

class Query$GetCharacter$character {
  Query$GetCharacter$character({
    this.id,
    this.status,
    this.type,
    this.image,
    this.origin,
    this.episode,
    required this.$__typename,
  });

  factory Query$GetCharacter$character.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$type = json['type'];
    final l$image = json['image'];
    final l$origin = json['origin'];
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacter$character(
      id: (l$id as String?),
      status: (l$status as String?),
      type: (l$type as String?),
      image: (l$image as String?),
      origin: l$origin == null
          ? null
          : Query$GetCharacter$character$origin.fromJson(
              (l$origin as Map<String, dynamic>)),
      episode: (l$episode as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetCharacter$character$episode.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? status;

  final String? type;

  final String? image;

  final Query$GetCharacter$character$origin? origin;

  final List<Query$GetCharacter$character$episode?>? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$origin = origin;
    _resultData['origin'] = l$origin?.toJson();
    final l$episode = episode;
    _resultData['episode'] = l$episode?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$type = type;
    final l$image = image;
    final l$origin = origin;
    final l$episode = episode;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$type,
      l$image,
      l$origin,
      l$episode == null ? null : Object.hashAll(l$episode.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacter$character) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$origin = origin;
    final lOther$origin = other.origin;
    if (l$origin != lOther$origin) {
      return false;
    }
    final l$episode = episode;
    final lOther$episode = other.episode;
    if (l$episode != null && lOther$episode != null) {
      if (l$episode.length != lOther$episode.length) {
        return false;
      }
      for (int i = 0; i < l$episode.length; i++) {
        final l$episode$entry = l$episode[i];
        final lOther$episode$entry = lOther$episode[i];
        if (l$episode$entry != lOther$episode$entry) {
          return false;
        }
      }
    } else if (l$episode != lOther$episode) {
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

extension UtilityExtension$Query$GetCharacter$character
    on Query$GetCharacter$character {
  CopyWith$Query$GetCharacter$character<Query$GetCharacter$character>
      get copyWith => CopyWith$Query$GetCharacter$character(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacter$character<TRes> {
  factory CopyWith$Query$GetCharacter$character(
    Query$GetCharacter$character instance,
    TRes Function(Query$GetCharacter$character) then,
  ) = _CopyWithImpl$Query$GetCharacter$character;

  factory CopyWith$Query$GetCharacter$character.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacter$character;

  TRes call({
    String? id,
    String? status,
    String? type,
    String? image,
    Query$GetCharacter$character$origin? origin,
    List<Query$GetCharacter$character$episode?>? episode,
    String? $__typename,
  });
  CopyWith$Query$GetCharacter$character$origin<TRes> get origin;
  TRes episode(
      Iterable<Query$GetCharacter$character$episode?>? Function(
              Iterable<
                  CopyWith$Query$GetCharacter$character$episode<
                      Query$GetCharacter$character$episode>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetCharacter$character<TRes>
    implements CopyWith$Query$GetCharacter$character<TRes> {
  _CopyWithImpl$Query$GetCharacter$character(
    this._instance,
    this._then,
  );

  final Query$GetCharacter$character _instance;

  final TRes Function(Query$GetCharacter$character) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? type = _undefined,
    Object? image = _undefined,
    Object? origin = _undefined,
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacter$character(
        id: id == _undefined ? _instance.id : (id as String?),
        status: status == _undefined ? _instance.status : (status as String?),
        type: type == _undefined ? _instance.type : (type as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        origin: origin == _undefined
            ? _instance.origin
            : (origin as Query$GetCharacter$character$origin?),
        episode: episode == _undefined
            ? _instance.episode
            : (episode as List<Query$GetCharacter$character$episode?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCharacter$character$origin<TRes> get origin {
    final local$origin = _instance.origin;
    return local$origin == null
        ? CopyWith$Query$GetCharacter$character$origin.stub(_then(_instance))
        : CopyWith$Query$GetCharacter$character$origin(
            local$origin, (e) => call(origin: e));
  }

  TRes episode(
          Iterable<Query$GetCharacter$character$episode?>? Function(
                  Iterable<
                      CopyWith$Query$GetCharacter$character$episode<
                          Query$GetCharacter$character$episode>?>?)
              _fn) =>
      call(
          episode: _fn(_instance.episode?.map((e) => e == null
              ? null
              : CopyWith$Query$GetCharacter$character$episode(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetCharacter$character<TRes>
    implements CopyWith$Query$GetCharacter$character<TRes> {
  _CopyWithStubImpl$Query$GetCharacter$character(this._res);

  TRes _res;

  call({
    String? id,
    String? status,
    String? type,
    String? image,
    Query$GetCharacter$character$origin? origin,
    List<Query$GetCharacter$character$episode?>? episode,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCharacter$character$origin<TRes> get origin =>
      CopyWith$Query$GetCharacter$character$origin.stub(_res);
  episode(_fn) => _res;
}

class Query$GetCharacter$character$origin {
  Query$GetCharacter$character$origin({
    this.name,
    required this.$__typename,
  });

  factory Query$GetCharacter$character$origin.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacter$character$origin(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCharacter$character$origin) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Query$GetCharacter$character$origin
    on Query$GetCharacter$character$origin {
  CopyWith$Query$GetCharacter$character$origin<
          Query$GetCharacter$character$origin>
      get copyWith => CopyWith$Query$GetCharacter$character$origin(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacter$character$origin<TRes> {
  factory CopyWith$Query$GetCharacter$character$origin(
    Query$GetCharacter$character$origin instance,
    TRes Function(Query$GetCharacter$character$origin) then,
  ) = _CopyWithImpl$Query$GetCharacter$character$origin;

  factory CopyWith$Query$GetCharacter$character$origin.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacter$character$origin;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacter$character$origin<TRes>
    implements CopyWith$Query$GetCharacter$character$origin<TRes> {
  _CopyWithImpl$Query$GetCharacter$character$origin(
    this._instance,
    this._then,
  );

  final Query$GetCharacter$character$origin _instance;

  final TRes Function(Query$GetCharacter$character$origin) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacter$character$origin(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacter$character$origin<TRes>
    implements CopyWith$Query$GetCharacter$character$origin<TRes> {
  _CopyWithStubImpl$Query$GetCharacter$character$origin(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCharacter$character$episode {
  Query$GetCharacter$character$episode({
    this.episode,
    required this.$__typename,
  });

  factory Query$GetCharacter$character$episode.fromJson(
      Map<String, dynamic> json) {
    final l$episode = json['episode'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacter$character$episode(
      episode: (l$episode as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? episode;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episode = episode;
    _resultData['episode'] = l$episode;
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
    if (!(other is Query$GetCharacter$character$episode) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetCharacter$character$episode
    on Query$GetCharacter$character$episode {
  CopyWith$Query$GetCharacter$character$episode<
          Query$GetCharacter$character$episode>
      get copyWith => CopyWith$Query$GetCharacter$character$episode(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCharacter$character$episode<TRes> {
  factory CopyWith$Query$GetCharacter$character$episode(
    Query$GetCharacter$character$episode instance,
    TRes Function(Query$GetCharacter$character$episode) then,
  ) = _CopyWithImpl$Query$GetCharacter$character$episode;

  factory CopyWith$Query$GetCharacter$character$episode.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacter$character$episode;

  TRes call({
    String? episode,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCharacter$character$episode<TRes>
    implements CopyWith$Query$GetCharacter$character$episode<TRes> {
  _CopyWithImpl$Query$GetCharacter$character$episode(
    this._instance,
    this._then,
  );

  final Query$GetCharacter$character$episode _instance;

  final TRes Function(Query$GetCharacter$character$episode) _then;

  static const _undefined = {};

  TRes call({
    Object? episode = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCharacter$character$episode(
        episode:
            episode == _undefined ? _instance.episode : (episode as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCharacter$character$episode<TRes>
    implements CopyWith$Query$GetCharacter$character$episode<TRes> {
  _CopyWithStubImpl$Query$GetCharacter$character$episode(this._res);

  TRes _res;

  call({
    String? episode,
    String? $__typename,
  }) =>
      _res;
}
