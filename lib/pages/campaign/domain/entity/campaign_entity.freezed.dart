// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignEntity {

 String get companyName; String get companyPicture; String get companyDescription; List<String> get companyCategories;
/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<CampaignEntity> get copyWith => _$CampaignEntityCopyWithImpl<CampaignEntity>(this as CampaignEntity, _$identity);

  /// Serializes this CampaignEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignEntity&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyPicture, companyPicture) || other.companyPicture == companyPicture)&&(identical(other.companyDescription, companyDescription) || other.companyDescription == companyDescription)&&const DeepCollectionEquality().equals(other.companyCategories, companyCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyPicture,companyDescription,const DeepCollectionEquality().hash(companyCategories));

@override
String toString() {
  return 'CampaignEntity(companyName: $companyName, companyPicture: $companyPicture, companyDescription: $companyDescription, companyCategories: $companyCategories)';
}


}

/// @nodoc
abstract mixin class $CampaignEntityCopyWith<$Res>  {
  factory $CampaignEntityCopyWith(CampaignEntity value, $Res Function(CampaignEntity) _then) = _$CampaignEntityCopyWithImpl;
@useResult
$Res call({
 String companyName, String companyPicture, String companyDescription, List<String> companyCategories
});




}
/// @nodoc
class _$CampaignEntityCopyWithImpl<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  _$CampaignEntityCopyWithImpl(this._self, this._then);

  final CampaignEntity _self;
  final $Res Function(CampaignEntity) _then;

/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? companyPicture = null,Object? companyDescription = null,Object? companyCategories = null,}) {
  return _then(_self.copyWith(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyPicture: null == companyPicture ? _self.companyPicture : companyPicture // ignore: cast_nullable_to_non_nullable
as String,companyDescription: null == companyDescription ? _self.companyDescription : companyDescription // ignore: cast_nullable_to_non_nullable
as String,companyCategories: null == companyCategories ? _self.companyCategories : companyCategories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignEntity].
extension CampaignEntityPatterns on CampaignEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String companyName,  String companyPicture,  String companyDescription,  List<String> companyCategories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.companyName,_that.companyPicture,_that.companyDescription,_that.companyCategories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String companyName,  String companyPicture,  String companyDescription,  List<String> companyCategories)  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity():
return $default(_that.companyName,_that.companyPicture,_that.companyDescription,_that.companyCategories);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String companyName,  String companyPicture,  String companyDescription,  List<String> companyCategories)?  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.companyName,_that.companyPicture,_that.companyDescription,_that.companyCategories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignEntity implements CampaignEntity {
  const _CampaignEntity({required this.companyName, required this.companyPicture, required this.companyDescription, required final  List<String> companyCategories}): _companyCategories = companyCategories;
  factory _CampaignEntity.fromJson(Map<String, dynamic> json) => _$CampaignEntityFromJson(json);

@override final  String companyName;
@override final  String companyPicture;
@override final  String companyDescription;
 final  List<String> _companyCategories;
@override List<String> get companyCategories {
  if (_companyCategories is EqualUnmodifiableListView) return _companyCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_companyCategories);
}


/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignEntityCopyWith<_CampaignEntity> get copyWith => __$CampaignEntityCopyWithImpl<_CampaignEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignEntity&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.companyPicture, companyPicture) || other.companyPicture == companyPicture)&&(identical(other.companyDescription, companyDescription) || other.companyDescription == companyDescription)&&const DeepCollectionEquality().equals(other._companyCategories, _companyCategories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyName,companyPicture,companyDescription,const DeepCollectionEquality().hash(_companyCategories));

@override
String toString() {
  return 'CampaignEntity(companyName: $companyName, companyPicture: $companyPicture, companyDescription: $companyDescription, companyCategories: $companyCategories)';
}


}

/// @nodoc
abstract mixin class _$CampaignEntityCopyWith<$Res> implements $CampaignEntityCopyWith<$Res> {
  factory _$CampaignEntityCopyWith(_CampaignEntity value, $Res Function(_CampaignEntity) _then) = __$CampaignEntityCopyWithImpl;
@override @useResult
$Res call({
 String companyName, String companyPicture, String companyDescription, List<String> companyCategories
});




}
/// @nodoc
class __$CampaignEntityCopyWithImpl<$Res>
    implements _$CampaignEntityCopyWith<$Res> {
  __$CampaignEntityCopyWithImpl(this._self, this._then);

  final _CampaignEntity _self;
  final $Res Function(_CampaignEntity) _then;

/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? companyPicture = null,Object? companyDescription = null,Object? companyCategories = null,}) {
  return _then(_CampaignEntity(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,companyPicture: null == companyPicture ? _self.companyPicture : companyPicture // ignore: cast_nullable_to_non_nullable
as String,companyDescription: null == companyDescription ? _self.companyDescription : companyDescription // ignore: cast_nullable_to_non_nullable
as String,companyCategories: null == companyCategories ? _self._companyCategories : companyCategories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
