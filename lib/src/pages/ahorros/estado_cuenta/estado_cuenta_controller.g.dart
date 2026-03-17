// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estado_cuenta_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$estadosCuentaControllerHash() =>
    r'992da47f2d3c572a0658313b042716e761624308';

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

abstract class _$EstadosCuentaController
    extends BuildlessAutoDisposeAsyncNotifier<
        ConsultaMovimientosCuentaRespuesta> {
  late final String numeroCuenta;

  FutureOr<ConsultaMovimientosCuentaRespuesta> build(
    String numeroCuenta,
  );
}

/// See also [EstadosCuentaController].
@ProviderFor(EstadosCuentaController)
const estadosCuentaControllerProvider = EstadosCuentaControllerFamily();

/// See also [EstadosCuentaController].
class EstadosCuentaControllerFamily
    extends Family<AsyncValue<ConsultaMovimientosCuentaRespuesta>> {
  /// See also [EstadosCuentaController].
  const EstadosCuentaControllerFamily();

  /// See also [EstadosCuentaController].
  EstadosCuentaControllerProvider call(
    String numeroCuenta,
  ) {
    return EstadosCuentaControllerProvider(
      numeroCuenta,
    );
  }

  @override
  EstadosCuentaControllerProvider getProviderOverride(
    covariant EstadosCuentaControllerProvider provider,
  ) {
    return call(
      provider.numeroCuenta,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'estadosCuentaControllerProvider';
}

/// See also [EstadosCuentaController].
class EstadosCuentaControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<EstadosCuentaController,
        ConsultaMovimientosCuentaRespuesta> {
  /// See also [EstadosCuentaController].
  EstadosCuentaControllerProvider(
    String numeroCuenta,
  ) : this._internal(
          () => EstadosCuentaController()..numeroCuenta = numeroCuenta,
          from: estadosCuentaControllerProvider,
          name: r'estadosCuentaControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$estadosCuentaControllerHash,
          dependencies: EstadosCuentaControllerFamily._dependencies,
          allTransitiveDependencies:
              EstadosCuentaControllerFamily._allTransitiveDependencies,
          numeroCuenta: numeroCuenta,
        );

  EstadosCuentaControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.numeroCuenta,
  }) : super.internal();

  final String numeroCuenta;

  @override
  FutureOr<ConsultaMovimientosCuentaRespuesta> runNotifierBuild(
    covariant EstadosCuentaController notifier,
  ) {
    return notifier.build(
      numeroCuenta,
    );
  }

  @override
  Override overrideWith(EstadosCuentaController Function() create) {
    return ProviderOverride(
      origin: this,
      override: EstadosCuentaControllerProvider._internal(
        () => create()..numeroCuenta = numeroCuenta,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        numeroCuenta: numeroCuenta,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<EstadosCuentaController,
      ConsultaMovimientosCuentaRespuesta> createElement() {
    return _EstadosCuentaControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EstadosCuentaControllerProvider &&
        other.numeroCuenta == numeroCuenta;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, numeroCuenta.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin EstadosCuentaControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ConsultaMovimientosCuentaRespuesta> {
  /// The parameter `numeroCuenta` of this provider.
  String get numeroCuenta;
}

class _EstadosCuentaControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<EstadosCuentaController,
        ConsultaMovimientosCuentaRespuesta> with EstadosCuentaControllerRef {
  _EstadosCuentaControllerProviderElement(super.provider);

  @override
  String get numeroCuenta =>
      (origin as EstadosCuentaControllerProvider).numeroCuenta;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
