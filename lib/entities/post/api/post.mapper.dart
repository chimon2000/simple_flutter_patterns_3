// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'post.dart';

class PostMapper extends ClassMapperBase<Post> {
  PostMapper._();

  static PostMapper? _instance;
  static PostMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PostMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Post';

  static String _$title(Post v) => v.title;
  static const Field<Post, String> _f$title = Field('title', _$title);

  @override
  final Map<Symbol, Field<Post, dynamic>> fields = const {
    #title: _f$title,
  };

  static Post _instantiate(DecodingData data) {
    return Post(data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static Post fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Post>(map));
  }

  static Post fromJson(String json) {
    return _guard((c) => c.fromJson<Post>(json));
  }
}

mixin PostMappable {
  String toJson() {
    return PostMapper._guard((c) => c.toJson(this as Post));
  }

  Map<String, dynamic> toMap() {
    return PostMapper._guard((c) => c.toMap(this as Post));
  }

  PostCopyWith<Post, Post, Post> get copyWith =>
      _PostCopyWithImpl(this as Post, $identity, $identity);
  @override
  String toString() {
    return PostMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PostMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return PostMapper._guard((c) => c.hash(this));
  }
}

extension PostValueCopy<$R, $Out> on ObjectCopyWith<$R, Post, $Out> {
  PostCopyWith<$R, Post, $Out> get $asPost =>
      $base.as((v, t, t2) => _PostCopyWithImpl(v, t, t2));
}

abstract class PostCopyWith<$R, $In extends Post, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title});
  PostCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PostCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Post, $Out>
    implements PostCopyWith<$R, Post, $Out> {
  _PostCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Post> $mapper = PostMapper.ensureInitialized();
  @override
  $R call({String? title}) =>
      $apply(FieldCopyWithData({if (title != null) #title: title}));
  @override
  Post $make(CopyWithData data) => Post(data.get(#title, or: $value.title));

  @override
  PostCopyWith<$R2, Post, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PostCopyWithImpl($value, $cast, t);
}
