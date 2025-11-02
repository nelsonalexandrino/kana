// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'household_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$householdServiceHash() => r'e91f0f7b06f33456f91560cb39a7f71d0efe41f7';

/// See also [householdService].
@ProviderFor(householdService)
final householdServiceProvider = AutoDisposeProvider<HouseholdService>.internal(
  householdService,
  name: r'householdServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$householdServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef HouseholdServiceRef = AutoDisposeProviderRef<HouseholdService>;
String _$currentUserIdHash() => r'b575e143ac1ee8cf8f1271405e64bea0eb69034e';

/// See also [currentUserId].
@ProviderFor(currentUserId)
final currentUserIdProvider = AutoDisposeProvider<String?>.internal(
  currentUserId,
  name: r'currentUserIdProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserIdRef = AutoDisposeProviderRef<String?>;
String _$userHouseholdsHash() => r'2bd939598e29b5d51416355fc82469d419331315';

/// See also [userHouseholds].
@ProviderFor(userHouseholds)
final userHouseholdsProvider =
    AutoDisposeStreamProvider<List<HouseholdModel>>.internal(
      userHouseholds,
      name: r'userHouseholdsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userHouseholdsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserHouseholdsRef = AutoDisposeStreamProviderRef<List<HouseholdModel>>;
String _$selectedHouseholdHash() => r'424c11db34ddaf66aca678e05af495a9a9a72d32';

/// See also [selectedHousehold].
@ProviderFor(selectedHousehold)
final selectedHouseholdProvider =
    AutoDisposeStreamProvider<HouseholdModel?>.internal(
      selectedHousehold,
      name: r'selectedHouseholdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$selectedHouseholdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SelectedHouseholdRef = AutoDisposeStreamProviderRef<HouseholdModel?>;
String _$householdMembersHash() => r'6d31b475192894fb5bae36448573f98b17074b7d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [householdMembers].
@ProviderFor(householdMembers)
const householdMembersProvider = HouseholdMembersFamily();

/// See also [householdMembers].
class HouseholdMembersFamily extends Family<AsyncValue<List<MemberModel>>> {
  /// See also [householdMembers].
  const HouseholdMembersFamily();

  /// See also [householdMembers].
  HouseholdMembersProvider call(String householdId) {
    return HouseholdMembersProvider(householdId);
  }

  @override
  HouseholdMembersProvider getProviderOverride(
    covariant HouseholdMembersProvider provider,
  ) {
    return call(provider.householdId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'householdMembersProvider';
}

/// See also [householdMembers].
class HouseholdMembersProvider
    extends AutoDisposeStreamProvider<List<MemberModel>> {
  /// See also [householdMembers].
  HouseholdMembersProvider(String householdId)
    : this._internal(
        (ref) => householdMembers(ref as HouseholdMembersRef, householdId),
        from: householdMembersProvider,
        name: r'householdMembersProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$householdMembersHash,
        dependencies: HouseholdMembersFamily._dependencies,
        allTransitiveDependencies:
            HouseholdMembersFamily._allTransitiveDependencies,
        householdId: householdId,
      );

  HouseholdMembersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.householdId,
  }) : super.internal();

  final String householdId;

  @override
  Override overrideWith(
    Stream<List<MemberModel>> Function(HouseholdMembersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HouseholdMembersProvider._internal(
        (ref) => create(ref as HouseholdMembersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        householdId: householdId,
      ),
    );
  }

  @override
  AutoDisposeStreamProviderElement<List<MemberModel>> createElement() {
    return _HouseholdMembersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HouseholdMembersProvider &&
        other.householdId == householdId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, householdId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HouseholdMembersRef on AutoDisposeStreamProviderRef<List<MemberModel>> {
  /// The parameter `householdId` of this provider.
  String get householdId;
}

class _HouseholdMembersProviderElement
    extends AutoDisposeStreamProviderElement<List<MemberModel>>
    with HouseholdMembersRef {
  _HouseholdMembersProviderElement(super.provider);

  @override
  String get householdId => (origin as HouseholdMembersProvider).householdId;
}

String _$currentUserMemberHash() => r'e0a56286fe09fc9545dd430ac07eaafd5c4c0670';

/// See also [currentUserMember].
@ProviderFor(currentUserMember)
final currentUserMemberProvider =
    AutoDisposeStreamProvider<MemberModel?>.internal(
      currentUserMember,
      name: r'currentUserMemberProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentUserMemberHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrentUserMemberRef = AutoDisposeStreamProviderRef<MemberModel?>;
String _$selectedHouseholdIdHash() =>
    r'c6b77d9e82d901ece70b825668335f6ef53e3b56';

/// See also [SelectedHouseholdId].
@ProviderFor(SelectedHouseholdId)
final selectedHouseholdIdProvider =
    AutoDisposeNotifierProvider<SelectedHouseholdId, String?>.internal(
      SelectedHouseholdId.new,
      name: r'selectedHouseholdIdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$selectedHouseholdIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedHouseholdId = AutoDisposeNotifier<String?>;
String _$householdControllerHash() =>
    r'f041364a88777bb8a4c4e55ba13b74750d81ec3c';

/// See also [HouseholdController].
@ProviderFor(HouseholdController)
final householdControllerProvider =
    AutoDisposeAsyncNotifierProvider<HouseholdController, void>.internal(
      HouseholdController.new,
      name: r'householdControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$householdControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$HouseholdController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
