import 'package:gql/ast.dart';

class Variables$Query$getEpisodes {
  factory Variables$Query$getEpisodes({int? page}) =>
      Variables$Query$getEpisodes._({
        if (page != null) r'page': page,
      });

  Variables$Query$getEpisodes._(this._$data);

  factory Variables$Query$getEpisodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$getEpisodes._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    return result$data;
  }

  CopyWith$Variables$Query$getEpisodes<Variables$Query$getEpisodes>
      get copyWith => CopyWith$Variables$Query$getEpisodes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$getEpisodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    return Object.hashAll([_$data.containsKey('page') ? l$page : const {}]);
  }
}

abstract class CopyWith$Variables$Query$getEpisodes<TRes> {
  factory CopyWith$Variables$Query$getEpisodes(
    Variables$Query$getEpisodes instance,
    TRes Function(Variables$Query$getEpisodes) then,
  ) = _CopyWithImpl$Variables$Query$getEpisodes;

  factory CopyWith$Variables$Query$getEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getEpisodes;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$getEpisodes<TRes>
    implements CopyWith$Variables$Query$getEpisodes<TRes> {
  _CopyWithImpl$Variables$Query$getEpisodes(
    this._instance,
    this._then,
  );

  final Variables$Query$getEpisodes _instance;

  final TRes Function(Variables$Query$getEpisodes) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$getEpisodes._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$getEpisodes<TRes>
    implements CopyWith$Variables$Query$getEpisodes<TRes> {
  _CopyWithStubImpl$Variables$Query$getEpisodes(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$getEpisodes {
  Query$getEpisodes({
    this.episodes,
    required this.$__typename,
  });

  factory Query$getEpisodes.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$getEpisodes(
      episodes: l$episodes == null
          ? null
          : Query$getEpisodes$episodes.fromJson(
              (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getEpisodes$episodes? episodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$episodes = episodes;
    _resultData['episodes'] = l$episodes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$episodes = episodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$episodes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getEpisodes) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$episodes = episodes;
    final lOther$episodes = other.episodes;
    if (l$episodes != lOther$episodes) {
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

extension UtilityExtension$Query$getEpisodes on Query$getEpisodes {
  CopyWith$Query$getEpisodes<Query$getEpisodes> get copyWith =>
      CopyWith$Query$getEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getEpisodes<TRes> {
  factory CopyWith$Query$getEpisodes(
    Query$getEpisodes instance,
    TRes Function(Query$getEpisodes) then,
  ) = _CopyWithImpl$Query$getEpisodes;

  factory CopyWith$Query$getEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$getEpisodes;

  TRes call({
    Query$getEpisodes$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$getEpisodes$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$getEpisodes<TRes>
    implements CopyWith$Query$getEpisodes<TRes> {
  _CopyWithImpl$Query$getEpisodes(
    this._instance,
    this._then,
  );

  final Query$getEpisodes _instance;

  final TRes Function(Query$getEpisodes) _then;

  static const _undefined = {};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getEpisodes(
        episodes: episodes == _undefined
            ? _instance.episodes
            : (episodes as Query$getEpisodes$episodes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getEpisodes$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$getEpisodes$episodes.stub(_then(_instance))
        : CopyWith$Query$getEpisodes$episodes(
            local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$getEpisodes<TRes>
    implements CopyWith$Query$getEpisodes<TRes> {
  _CopyWithStubImpl$Query$getEpisodes(this._res);

  TRes _res;

  call({
    Query$getEpisodes$episodes? episodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getEpisodes$episodes<TRes> get episodes =>
      CopyWith$Query$getEpisodes$episodes.stub(_res);
}

const documentNodeQuerygetEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getEpisodes'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'episodes'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: VariableNode(name: NameNode(value: 'page')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pages'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'next'),
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
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [],
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
                name: NameNode(value: 'created'),
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

class Query$getEpisodes$episodes {
  Query$getEpisodes$episodes({
    this.info,
    this.results,
    required this.$__typename,
  });

  factory Query$getEpisodes$episodes.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$getEpisodes$episodes(
      info: l$info == null
          ? null
          : Query$getEpisodes$episodes$info.fromJson(
              (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$getEpisodes$episodes$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getEpisodes$episodes$info? info;

  final List<Query$getEpisodes$episodes$results?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info = info;
    _resultData['info'] = l$info?.toJson();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info = info;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getEpisodes$episodes) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension$Query$getEpisodes$episodes
    on Query$getEpisodes$episodes {
  CopyWith$Query$getEpisodes$episodes<Query$getEpisodes$episodes>
      get copyWith => CopyWith$Query$getEpisodes$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getEpisodes$episodes<TRes> {
  factory CopyWith$Query$getEpisodes$episodes(
    Query$getEpisodes$episodes instance,
    TRes Function(Query$getEpisodes$episodes) then,
  ) = _CopyWithImpl$Query$getEpisodes$episodes;

  factory CopyWith$Query$getEpisodes$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$getEpisodes$episodes;

  TRes call({
    Query$getEpisodes$episodes$info? info,
    List<Query$getEpisodes$episodes$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$getEpisodes$episodes$info<TRes> get info;
  TRes results(
      Iterable<Query$getEpisodes$episodes$results?>? Function(
              Iterable<
                  CopyWith$Query$getEpisodes$episodes$results<
                      Query$getEpisodes$episodes$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$getEpisodes$episodes<TRes>
    implements CopyWith$Query$getEpisodes$episodes<TRes> {
  _CopyWithImpl$Query$getEpisodes$episodes(
    this._instance,
    this._then,
  );

  final Query$getEpisodes$episodes _instance;

  final TRes Function(Query$getEpisodes$episodes) _then;

  static const _undefined = {};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getEpisodes$episodes(
        info: info == _undefined
            ? _instance.info
            : (info as Query$getEpisodes$episodes$info?),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$getEpisodes$episodes$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$getEpisodes$episodes$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$getEpisodes$episodes$info.stub(_then(_instance))
        : CopyWith$Query$getEpisodes$episodes$info(
            local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Query$getEpisodes$episodes$results?>? Function(
                  Iterable<
                      CopyWith$Query$getEpisodes$episodes$results<
                          Query$getEpisodes$episodes$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$getEpisodes$episodes$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$getEpisodes$episodes<TRes>
    implements CopyWith$Query$getEpisodes$episodes<TRes> {
  _CopyWithStubImpl$Query$getEpisodes$episodes(this._res);

  TRes _res;

  call({
    Query$getEpisodes$episodes$info? info,
    List<Query$getEpisodes$episodes$results?>? results,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$getEpisodes$episodes$info<TRes> get info =>
      CopyWith$Query$getEpisodes$episodes$info.stub(_res);
  results(_fn) => _res;
}

class Query$getEpisodes$episodes$info {
  Query$getEpisodes$episodes$info({
    this.count,
    this.pages,
    this.next,
    required this.$__typename,
  });

  factory Query$getEpisodes$episodes$info.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$getEpisodes$episodes$info(
      count: (l$count as int?),
      pages: (l$pages as int?),
      next: (l$next as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? count;

  final int? pages;

  final int? next;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$pages = pages;
    _resultData['pages'] = l$pages;
    final l$next = next;
    _resultData['next'] = l$next;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$pages = pages;
    final l$next = next;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$pages,
      l$next,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getEpisodes$episodes$info) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$pages = pages;
    final lOther$pages = other.pages;
    if (l$pages != lOther$pages) {
      return false;
    }
    final l$next = next;
    final lOther$next = other.next;
    if (l$next != lOther$next) {
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

extension UtilityExtension$Query$getEpisodes$episodes$info
    on Query$getEpisodes$episodes$info {
  CopyWith$Query$getEpisodes$episodes$info<Query$getEpisodes$episodes$info>
      get copyWith => CopyWith$Query$getEpisodes$episodes$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getEpisodes$episodes$info<TRes> {
  factory CopyWith$Query$getEpisodes$episodes$info(
    Query$getEpisodes$episodes$info instance,
    TRes Function(Query$getEpisodes$episodes$info) then,
  ) = _CopyWithImpl$Query$getEpisodes$episodes$info;

  factory CopyWith$Query$getEpisodes$episodes$info.stub(TRes res) =
      _CopyWithStubImpl$Query$getEpisodes$episodes$info;

  TRes call({
    int? count,
    int? pages,
    int? next,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getEpisodes$episodes$info<TRes>
    implements CopyWith$Query$getEpisodes$episodes$info<TRes> {
  _CopyWithImpl$Query$getEpisodes$episodes$info(
    this._instance,
    this._then,
  );

  final Query$getEpisodes$episodes$info _instance;

  final TRes Function(Query$getEpisodes$episodes$info) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getEpisodes$episodes$info(
        count: count == _undefined ? _instance.count : (count as int?),
        pages: pages == _undefined ? _instance.pages : (pages as int?),
        next: next == _undefined ? _instance.next : (next as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getEpisodes$episodes$info<TRes>
    implements CopyWith$Query$getEpisodes$episodes$info<TRes> {
  _CopyWithStubImpl$Query$getEpisodes$episodes$info(this._res);

  TRes _res;

  call({
    int? count,
    int? pages,
    int? next,
    String? $__typename,
  }) =>
      _res;
}

class Query$getEpisodes$episodes$results {
  Query$getEpisodes$episodes$results({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.created,
    required this.$__typename,
  });

  factory Query$getEpisodes$episodes$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$getEpisodes$episodes$results(
      id: (l$id as String?),
      name: (l$name as String?),
      air_date: (l$air_date as String?),
      episode: (l$episode as String?),
      created: (l$created as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

  final String? name;

  final String? air_date;

  final String? episode;

  final String? created;

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
    final l$created = created;
    _resultData['created'] = l$created;
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
    final l$created = created;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$air_date,
      l$episode,
      l$created,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getEpisodes$episodes$results) ||
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
    final l$created = created;
    final lOther$created = other.created;
    if (l$created != lOther$created) {
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

extension UtilityExtension$Query$getEpisodes$episodes$results
    on Query$getEpisodes$episodes$results {
  CopyWith$Query$getEpisodes$episodes$results<
          Query$getEpisodes$episodes$results>
      get copyWith => CopyWith$Query$getEpisodes$episodes$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getEpisodes$episodes$results<TRes> {
  factory CopyWith$Query$getEpisodes$episodes$results(
    Query$getEpisodes$episodes$results instance,
    TRes Function(Query$getEpisodes$episodes$results) then,
  ) = _CopyWithImpl$Query$getEpisodes$episodes$results;

  factory CopyWith$Query$getEpisodes$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$getEpisodes$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? created,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getEpisodes$episodes$results<TRes>
    implements CopyWith$Query$getEpisodes$episodes$results<TRes> {
  _CopyWithImpl$Query$getEpisodes$episodes$results(
    this._instance,
    this._then,
  );

  final Query$getEpisodes$episodes$results _instance;

  final TRes Function(Query$getEpisodes$episodes$results) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getEpisodes$episodes$results(
        id: id == _undefined ? _instance.id : (id as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        air_date:
            air_date == _undefined ? _instance.air_date : (air_date as String?),
        episode:
            episode == _undefined ? _instance.episode : (episode as String?),
        created:
            created == _undefined ? _instance.created : (created as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getEpisodes$episodes$results<TRes>
    implements CopyWith$Query$getEpisodes$episodes$results<TRes> {
  _CopyWithStubImpl$Query$getEpisodes$episodes$results(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? created,
    String? $__typename,
  }) =>
      _res;
}
