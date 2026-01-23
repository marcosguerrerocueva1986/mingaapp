import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:basic_utils/basic_utils.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:pointycastle/asymmetric/rsa.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:pointycastle/signers/rsa_signer.dart'; 
import 'package:pointycastle/digests/sha256.dart';
import 'package:pointycastle/export.dart';
Uint8List _generateSeed() {
  final random = Random.secure();
  final seed = Uint8List(32);
  for (int i = 0; i < seed.length; i++) {
    seed[i] = random.nextInt(256);
  }
  return seed;
}
// Función para generar claves RSA
Future<AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>> generateRSAKeyPair() async {
  final rsaParams = RSAKeyGeneratorParameters(BigInt.from(65537), 2048, 64);
  final random = FortunaRandom();
  random.seed(KeyParameter(_generateSeed())); // Usa una semilla aleatoria segura
  final params = ParametersWithRandom(rsaParams, random);
  
  final keyGenerator = RSAKeyGenerator();
  keyGenerator.init(params);

  final keyPair = keyGenerator.generateKeyPair();
  return AsymmetricKeyPair<RSAPublicKey, RSAPrivateKey>(
    keyPair.publicKey as RSAPublicKey,
    keyPair.privateKey as RSAPrivateKey,
  );
}

// Función para codificar la clave pública a formato PEM
String encodePublicKeyToPem(RSAPublicKey publicKey) {
  return CryptoUtils.encodeRSAPublicKeyToPemPkcs1(publicKey);
}

// Función para codificar la clave privada a formato PEM (PKCS#1)
String encodePrivateKeyToPem(RSAPrivateKey privateKey) {
  return CryptoUtils.encodeRSAPrivateKeyToPemPkcs1(privateKey);
}
Uint8List hashMessage(String message) {
  final digest = SHA256Digest();
  final messageBytes = Uint8List.fromList(utf8.encode(message));
  final hashBytes = digest.process(messageBytes);
  return hashBytes;
}
Uint8List signHash(RSAPrivateKey privateKey, Uint8List hash) {
  final signer = RSASigner(SHA256Digest(), 'RSA');
  // La línea de abajo requiere importar 'package:pointycastle/ecc/api.dart'; o 'package:pointycastle/export.dart';
  signer.init(true, PrivateKeyParameter<RSAPrivateKey>(privateKey)); 
  final signature = signer.generateSignature(hash);
  return signature.bytes;
}
String signatureToBase64(Uint8List signatureBytes) {
  return base64Encode(signatureBytes);
}