import 'package:gql/ast.dart';

class Variables$Query$GetEpisodes {
  factory Variables$Query$GetEpisodes({int? page}) =>
      Variables$Query$GetEpisodes._({
        if (page != null) r'page': page,
      });

  Variables$Query$GetEpisodes._(this._$data);

  factory Variables$Query$GetEpisodes.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    return Variables$Query$GetEpisodes._(result$data);
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

  CopyWith$Variables$Query$GetEpisodes<Variables$Query$GetEpisodes>
      get copyWith => CopyWith$Variables$Query$GetEpisodes(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetEpisodes) ||
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

abstract class CopyWith$Variables$Query$GetEpisodes<TRes> {
  factory CopyWith$Variables$Query$GetEpisodes(
    Variables$Query$GetEpisodes instance,
    TRes Function(Variables$Query$GetEpisodes) then,
  ) = _CopyWithImpl$Variables$Query$GetEpisodes;

  factory CopyWith$Variables$Query$GetEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetEpisodes;

  TRes call({int? page});
}

class _CopyWithImpl$Variables$Query$GetEpisodes<TRes>
    implements CopyWith$Variables$Query$GetEpisodes<TRes> {
  _CopyWithImpl$Variables$Query$GetEpisodes(
    this._instance,
    this._then,
  );

  final Variables$Query$GetEpisodes _instance;

  final TRes Function(Variables$Query$GetEpisodes) _then;

  static const _undefined = {};

  TRes call({Object? page = _undefined}) =>
      _then(Variables$Query$GetEpisodes._({
        ..._instance._$data,
        if (page != _undefined) 'page': (page as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetEpisodes<TRes>
    implements CopyWith$Variables$Query$GetEpisodes<TRes> {
  _CopyWithStubImpl$Variables$Query$GetEpisodes(this._res);

  TRes _res;

  call({int? page}) => _res;
}

class Query$GetEpisodes {
  Query$GetEpisodes({
    this.episodes,
    required this.$__typename,
  });

  factory Query$GetEpisodes.fromJson(Map<String, dynamic> json) {
    final l$episodes = json['episodes'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes(
      episodes: l$episodes == null
          ? null
          : Query$GetEpisodes$episodes.fromJson(
              (l$episodes as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEpisodes$episodes? episodes;

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
    if (!(other is Query$GetEpisodes) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetEpisodes on Query$GetEpisodes {
  CopyWith$Query$GetEpisodes<Query$GetEpisodes> get copyWith =>
      CopyWith$Query$GetEpisodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEpisodes<TRes> {
  factory CopyWith$Query$GetEpisodes(
    Query$GetEpisodes instance,
    TRes Function(Query$GetEpisodes) then,
  ) = _CopyWithImpl$Query$GetEpisodes;

  factory CopyWith$Query$GetEpisodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes;

  TRes call({
    Query$GetEpisodes$episodes? episodes,
    String? $__typename,
  });
  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes;
}

class _CopyWithImpl$Query$GetEpisodes<TRes>
    implements CopyWith$Query$GetEpisodes<TRes> {
  _CopyWithImpl$Query$GetEpisodes(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes _instance;

  final TRes Function(Query$GetEpisodes) _then;

  static const _undefined = {};

  TRes call({
    Object? episodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes(
        episodes: episodes == _undefined
            ? _instance.episodes
            : (episodes as Query$GetEpisodes$episodes?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes {
    final local$episodes = _instance.episodes;
    return local$episodes == null
        ? CopyWith$Query$GetEpisodes$episodes.stub(_then(_instance))
        : CopyWith$Query$GetEpisodes$episodes(
            local$episodes, (e) => call(episodes: e));
  }
}

class _CopyWithStubImpl$Query$GetEpisodes<TRes>
    implements CopyWith$Query$GetEpisodes<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes(this._res);

  TRes _res;

  call({
    Query$GetEpisodes$episodes? episodes,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEpisodes$episodes<TRes> get episodes =>
      CopyWith$Query$GetEpisodes$episodes.stub(_res);
}

const documentNodeQueryGetEpisodes = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEpisodes'),
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

class Query$GetEpisodes$episodes {
  Query$GetEpisodes$episodes({
    this.info,
    this.results,
    required this.$__typename,
  });

  factory Query$GetEpisodes$episodes.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes$episodes(
      info: l$info == null
          ? null
          : Query$GetEpisodes$episodes$info.fromJson(
              (l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$GetEpisodes$episodes$results.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEpisodes$episodes$info? info;

  final List<Query$GetEpisodes$episodes$results?>? results;

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
    if (!(other is Query$GetEpisodes$episodes) ||
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

extension UtilityExtension$Query$GetEpisodes$episodes
    on Query$GetEpisodes$episodes {
  CopyWith$Query$GetEpisodes$episodes<Query$GetEpisodes$episodes>
      get copyWith => CopyWith$Query$GetEpisodes$episodes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisodes$episodes<TRes> {
  factory CopyWith$Query$GetEpisodes$episodes(
    Query$GetEpisodes$episodes instance,
    TRes Function(Query$GetEpisodes$episodes) then,
  ) = _CopyWithImpl$Query$GetEpisodes$episodes;

  factory CopyWith$Query$GetEpisodes$episodes.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes$episodes;

  TRes call({
    Query$GetEpisodes$episodes$info? info,
    List<Query$GetEpisodes$episodes$results?>? results,
    String? $__typename,
  });
  CopyWith$Query$GetEpisodes$episodes$info<TRes> get info;
  TRes results(
      Iterable<Query$GetEpisodes$episodes$results?>? Function(
              Iterable<
                  CopyWith$Query$GetEpisodes$episodes$results<
                      Query$GetEpisodes$episodes$results>?>?)
          _fn);
}

class _CopyWithImpl$Query$GetEpisodes$episodes<TRes>
    implements CopyWith$Query$GetEpisodes$episodes<TRes> {
  _CopyWithImpl$Query$GetEpisodes$episodes(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes$episodes _instance;

  final TRes Function(Query$GetEpisodes$episodes) _then;

  static const _undefined = {};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes$episodes(
        info: info == _undefined
            ? _instance.info
            : (info as Query$GetEpisodes$episodes$info?),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$GetEpisodes$episodes$results?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEpisodes$episodes$info<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Query$GetEpisodes$episodes$info.stub(_then(_instance))
        : CopyWith$Query$GetEpisodes$episodes$info(
            local$info, (e) => call(info: e));
  }

  TRes results(
          Iterable<Query$GetEpisodes$episodes$results?>? Function(
                  Iterable<
                      CopyWith$Query$GetEpisodes$episodes$results<
                          Query$GetEpisodes$episodes$results>?>?)
              _fn) =>
      call(
          results: _fn(_instance.results?.map((e) => e == null
              ? null
              : CopyWith$Query$GetEpisodes$episodes$results(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$GetEpisodes$episodes<TRes>
    implements CopyWith$Query$GetEpisodes$episodes<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes$episodes(this._res);

  TRes _res;

  call({
    Query$GetEpisodes$episodes$info? info,
    List<Query$GetEpisodes$episodes$results?>? results,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEpisodes$episodes$info<TRes> get info =>
      CopyWith$Query$GetEpisodes$episodes$info.stub(_res);
  results(_fn) => _res;
}

class Query$GetEpisodes$episodes$info {
  Query$GetEpisodes$episodes$info({
    this.count,
    this.pages,
    this.next,
    required this.$__typename,
  });

  factory Query$GetEpisodes$episodes$info.fromJson(Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$pages = json['pages'];
    final l$next = json['next'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes$episodes$info(
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
    if (!(other is Query$GetEpisodes$episodes$info) ||
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

extension UtilityExtension$Query$GetEpisodes$episodes$info
    on Query$GetEpisodes$episodes$info {
  CopyWith$Query$GetEpisodes$episodes$info<Query$GetEpisodes$episodes$info>
      get copyWith => CopyWith$Query$GetEpisodes$episodes$info(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisodes$episodes$info<TRes> {
  factory CopyWith$Query$GetEpisodes$episodes$info(
    Query$GetEpisodes$episodes$info instance,
    TRes Function(Query$GetEpisodes$episodes$info) then,
  ) = _CopyWithImpl$Query$GetEpisodes$episodes$info;

  factory CopyWith$Query$GetEpisodes$episodes$info.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes$episodes$info;

  TRes call({
    int? count,
    int? pages,
    int? next,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEpisodes$episodes$info<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$info<TRes> {
  _CopyWithImpl$Query$GetEpisodes$episodes$info(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes$episodes$info _instance;

  final TRes Function(Query$GetEpisodes$episodes$info) _then;

  static const _undefined = {};

  TRes call({
    Object? count = _undefined,
    Object? pages = _undefined,
    Object? next = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes$episodes$info(
        count: count == _undefined ? _instance.count : (count as int?),
        pages: pages == _undefined ? _instance.pages : (pages as int?),
        next: next == _undefined ? _instance.next : (next as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEpisodes$episodes$info<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$info<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes$episodes$info(this._res);

  TRes _res;

  call({
    int? count,
    int? pages,
    int? next,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEpisodes$episodes$results {
  Query$GetEpisodes$episodes$results({
    this.id,
    this.name,
    this.air_date,
    this.episode,
    this.created,
    required this.$__typename,
  });

  factory Query$GetEpisodes$episodes$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$air_date = json['air_date'];
    final l$episode = json['episode'];
    final l$created = json['created'];
    final l$$__typename = json['__typename'];
    return Query$GetEpisodes$episodes$results(
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
    if (!(other is Query$GetEpisodes$episodes$results) ||
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

extension UtilityExtension$Query$GetEpisodes$episodes$results
    on Query$GetEpisodes$episodes$results {
  CopyWith$Query$GetEpisodes$episodes$results<
          Query$GetEpisodes$episodes$results>
      get copyWith => CopyWith$Query$GetEpisodes$episodes$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  factory CopyWith$Query$GetEpisodes$episodes$results(
    Query$GetEpisodes$episodes$results instance,
    TRes Function(Query$GetEpisodes$episodes$results) then,
  ) = _CopyWithImpl$Query$GetEpisodes$episodes$results;

  factory CopyWith$Query$GetEpisodes$episodes$results.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEpisodes$episodes$results;

  TRes call({
    String? id,
    String? name,
    String? air_date,
    String? episode,
    String? created,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEpisodes$episodes$results<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  _CopyWithImpl$Query$GetEpisodes$episodes$results(
    this._instance,
    this._then,
  );

  final Query$GetEpisodes$episodes$results _instance;

  final TRes Function(Query$GetEpisodes$episodes$results) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? air_date = _undefined,
    Object? episode = _undefined,
    Object? created = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEpisodes$episodes$results(
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

class _CopyWithStubImpl$Query$GetEpisodes$episodes$results<TRes>
    implements CopyWith$Query$GetEpisodes$episodes$results<TRes> {
  _CopyWithStubImpl$Query$GetEpisodes$episodes$results(this._res);

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
