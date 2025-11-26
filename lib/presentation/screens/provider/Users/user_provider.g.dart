// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(geminiUser)
const geminiUserProvider = GeminiUserProvider._();

final class GeminiUserProvider
    extends $FunctionalProvider<types.User, types.User, types.User>
    with $Provider<types.User> {
  const GeminiUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geminiUserProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geminiUserHash();

  @$internal
  @override
  $ProviderElement<types.User> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  types.User create(Ref ref) {
    return geminiUser(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(types.User value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<types.User>(value),
    );
  }
}

String _$geminiUserHash() => r'5366138887b64900c99ee63f0e27bccc8617caf0';

@ProviderFor(User)
const userProvider = UserProvider._();

final class UserProvider
    extends $FunctionalProvider<types.User, types.User, types.User>
    with $Provider<types.User> {
  const UserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userHash();

  @$internal
  @override
  $ProviderElement<types.User> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  types.User create(Ref ref) {
    return User(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(types.User value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<types.User>(value),
    );
  }
}

String _$userHash() => r'02adf5e2a0f795fc4700c675c87042a345ca68e5';
