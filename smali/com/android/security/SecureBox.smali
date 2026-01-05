.class public abstract Lcom/android/security/SecureBox;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final BIG_INT_02:Ljava/math/BigInteger;

.field public static final CONSTANT_01:[B

.field public static final EC_PARAM_A:Ljava/math/BigInteger;

.field public static final EC_PARAM_B:Ljava/math/BigInteger;

.field public static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field public static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field public static final HKDF_SALT:[B

.field public static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/security/SecureBox;->VERSION:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v3, "SECUREBOX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    filled-new-array {v3, v0}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    const-string/jumbo v0, "P256 HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    const-string/jumbo v0, "SHARED HKDF-SHA-256 AES-128-GCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    const/4 v0, 0x1

    new-array v2, v0, [B

    aput-byte v0, v2, v1

    sput-object v2, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    new-array v1, v1, [B

    sput-object v1, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string/jumbo v2, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    new-instance v5, Ljava/security/spec/EllipticCurve;

    new-instance v6, Ljava/security/spec/ECFieldFp;

    invoke-direct {v6, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v5, v6, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v4, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string/jumbo v4, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v3, v5, v1, v2, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v3, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    return-void

    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method public static aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 3

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    :try_start_1
    sget-object p2, Lcom/android/security/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B[B[B)[B
    .locals 8

    sget-object v0, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p0, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both the private key and shared secret are empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    if-eqz p3, :cond_8

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    sget-object v2, Lcom/android/security/SecureBox;->VERSION:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p0, :cond_4

    sget-object p0, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x41

    invoke-static {p3, v0}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-static {v1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v0, Lcom/android/security/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const-string/jumbo v4, "Point lies outside of the expected curve"

    if-gez v1, :cond_6

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_6

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eq v1, v6, :cond_6

    sget-object v1, Lcom/android/security/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    invoke-virtual {v5, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lcom/android/security/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v7, Lcom/android/security/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-direct {v4, v2, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v2, Lcom/android/security/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v4, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "ECDH"

    invoke-static {v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1, v0, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v0

    sget-object p0, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    :goto_1
    const/16 v1, 0xc

    invoke-static {p3, v1}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p3, v2}, Lcom/android/security/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object p3

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p1

    sget-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    invoke-static {p1, v0, p0}, Lcom/android/security/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    sget-object p1, Lcom/android/security/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    invoke-static {p1, p0, v1, p3, p2}, Lcom/android/security/SecureBox;->aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/InvalidKeyException;

    invoke-direct {p0, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string/jumbo p1, "The payload was not encrypted by SecureBox v2"

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Encrypted payload must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 5

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/16 v1, 0x41

    new-array v2, v1, [B

    array-length v3, p0

    sub-int/2addr v1, v3

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    rsub-int/lit8 p0, p0, 0x21

    array-length v1, v0

    invoke-static {v0, v4, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x4

    aput-byte p0, v2, v4

    return-object v2
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B[B)[B
    .locals 5

    sget-object v0, Lcom/android/security/SecureBox;->EMPTY_BYTE_ARRAY:[B

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p0, :cond_2

    array-length v1, p1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both the public key and shared secret are empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    move-object p2, v0

    :cond_3
    if-nez p3, :cond_4

    move-object p3, v0

    :cond_4
    if-nez p0, :cond_5

    const/4 p0, 0x0

    sget-object v1, Lcom/android/security/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/security/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const-string v2, "ECDH"

    invoke-static {v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v2, p0, v1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {v2}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    sget-object v1, Lcom/android/security/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    :goto_1
    const/16 v2, 0xc

    new-array v2, v2, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p1

    sget-object v0, Lcom/android/security/SecureBox;->HKDF_SALT:[B

    invoke-static {p1, v0, v1}, Lcom/android/security/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    :try_start_1
    sget-object v0, Lcom/android/security/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/security/SecureBox$AesGcmOperation;

    invoke-static {v0, p1, v2, p3, p2}, Lcom/android/security/SecureBox;->aesGcmInternal(Lcom/android/security/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p1
    :try_end_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object p2, Lcom/android/security/SecureBox;->VERSION:[B

    if-nez p0, :cond_6

    filled-new-array {p2, v2, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-static {p0}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    filled-new-array {p2, p0, v2, p1}, [[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 3

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v2, "Unable to find the NIST P-256 curve"

    invoke-direct {v1, v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;
    .locals 3

    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    :try_start_1
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v1, p2}, Ljavax/crypto/Mac;->update([B)V

    sget-object p0, Lcom/android/security/SecureBox;->CONSTANT_01:[B

    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p2, 0x10

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B
    .locals 0

    new-array p1, p1, [B

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string/jumbo p1, "The encrypted payload is too short"

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
