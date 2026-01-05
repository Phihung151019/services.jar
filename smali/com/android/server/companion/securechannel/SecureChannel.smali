.class public final Lcom/android/server/companion/securechannel/SecureChannel;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlias:Ljava/lang/String;

.field public final mCallback:Lcom/android/server/companion/transport/SecureTransport;

.field public mClientInit:[B

.field public mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

.field public mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

.field public final mHandshakeLock:Ljava/lang/Object;

.field public volatile mInProgress:Z

.field public final mInput:Ljava/io/InputStream;

.field public final mOutput:Ljava/io/OutputStream;

.field public final mPreSharedKey:[B

.field public mPskVerified:Z

.field public mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

.field public volatile mStopped:Z

.field public mVerificationResult:I

.field public final mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/android/server/companion/transport/SecureTransport;[BLcom/android/server/companion/securechannel/AttestationVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/transport/SecureTransport;

    iput-object p4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    iput-object p5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    return-void
.end method

.method public static constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B
    .locals 3

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne p0, v1, :cond_0

    const-string p0, "Initiator"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "Responder"

    :goto_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 3

    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    const-string v1, "CDM_SecureChannel"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "Stopping secure channel."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInProgress:Z

    if-eqz v0, :cond_1

    const-string v0, "Closing secure channel."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final completeHandshake([B)V
    .locals 7

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    const-string v5, "CDM_SecureChannel"

    if-eqz p1, :cond_8

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    const-string p1, "Detected a Ukey2 handshake role collision. Negotiating a role."

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    array-length v0, p1

    if-eq v0, v3, :cond_3

    array-length p1, p1

    sub-int v2, p1, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_5

    aget-byte v3, p1, v0

    aget-byte v6, v4, v0

    if-eq v3, v6, :cond_4

    sub-int v2, v3, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-gez v2, :cond_6

    const-string p1, "Assigned: Responder"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    goto :goto_3

    :cond_6
    const-string p1, "Assigned: Initiator; Discarding received Client Init"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v4, v0, [B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_7
    new-instance p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;

    const-string p1, "Failed to resolve Ukey2 handshake role collision."

    invoke-direct {p0, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/HandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-boolean v0, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-nez p1, :cond_c

    sget-object p1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-direct {v2, p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    if-eqz v0, :cond_9

    const-string/jumbo p1, "Receiving Ukey2 Client Init message"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1, v4}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_a

    const-string/jumbo p1, "Sending Ukey2 Server Init message"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    array-length v3, v2

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v6, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    if-eqz v0, :cond_b

    const-string/jumbo p1, "Receiving Ukey2 Client Finish message"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    sget-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    const-string/jumbo p1, "Receiving Ukey2 Server Init message"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1, v4}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->parseHandshakeMessage([B)V

    if-eqz v0, :cond_e

    const-string/jumbo p1, "Sending Ukey2 Client Finish message"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-object p1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    :goto_4
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->isHandshakeComplete()Z

    move-result p1

    if-eqz p1, :cond_10

    if-eqz v0, :cond_f

    const-string/jumbo p1, "Ukey2 Handshake completed successfully"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {p1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->toConnectionContext()Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    return-void

    :cond_10
    const-string p0, "Failed to complete Ukey2 Handshake"

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Ukey2 Handshake did not complete as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final exchangeAuthentication()V
    .locals 15

    sget-object v0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->RESPONDER:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    sget-boolean v2, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    const-string v3, "CDM_SecureChannel"

    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPreSharedKey:[B

    if-eqz v4, :cond_3

    if-eqz v2, :cond_0

    const-string v5, "Exchanging pre-shared keys."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v5, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->PRE_SHARED_KEY:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v6, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-static {v6, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    invoke-virtual {p0, v5}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v6, v1, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_3

    const-string/jumbo v4, "The pre-shared key was successfully authenticated."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify the hash of pre-shared key."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerifier:Lcom/android/server/companion/securechannel/AttestationVerifier;

    if-eqz v4, :cond_f

    iget v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez v5, :cond_4

    const-string/jumbo p0, "Remote attestation was already verified."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v2, :cond_5

    const-string v5, "Exchanging device attestation."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "secure-channel-"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v7, v6

    :goto_2
    if-nez v7, :cond_6

    iput-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    :cond_7
    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iget-object v7, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {v7}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    new-instance v8, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v9, 0xc

    invoke-direct {v8, v7, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    const-string/jumbo v7, "SHA-256"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v5

    const-string v7, "EC"

    const-string v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v7}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mAlias:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/companion/securechannel/KeyStoreUtils;->loadKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v5

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v8, v5

    move v9, v6

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->writeBytes([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    sget-object v7, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->ATTESTATION:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v7, v5}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    invoke-virtual {p0, v7}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v12

    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    if-ne v5, v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->getSessionUnique()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->constructToken(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;[B)[B

    move-result-object v0

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "localbinding.challenge"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "android.key_owned_by_system"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, v4, Lcom/android/server/companion/securechannel/AttestationVerifier;->mFlags:I

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    and-int/2addr v0, v1

    if-lez v0, :cond_b

    const-string/jumbo v0, "param_max_patch_level_diff_months"

    const/16 v5, 0x18

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_b
    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v14, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v5}, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v1, v4, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    const-class v4, Landroid/security/attestationverification/AttestationVerificationManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v9, Landroid/security/attestationverification/AttestationProfile;

    const/4 v1, 0x3

    invoke-direct {v9, v1}, Landroid/security/attestationverification/AttestationProfile;-><init>(I)V

    new-instance v13, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x3

    invoke-virtual/range {v8 .. v14}, Landroid/security/attestationverification/AttestationVerificationManager;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sget-object v1, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->AVF_RESULT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    invoke-virtual {p0, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-nez v0, :cond_d

    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_c

    if-eqz v2, :cond_f

    const-string/jumbo p0, "Remote attestation was successfully verified."

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to verify remote attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string/jumbo v0, "Remote device failed to verify local attestation."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Attestation verification timed out."

    invoke-direct {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance v0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v1, "Attestation verification was interrupted"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method public final initiateHandshake()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    if-eqz v1, :cond_0

    const-string p0, "CDM_SecureChannel"

    const-string/jumbo v1, "Ukey2 handshake is already completed."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;->INITIATOR:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    iput-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    new-instance v2, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-direct {v2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;-><init>(Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;)V

    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mHandshakeContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;

    invoke-virtual {v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext;->getNextHandshakeMessage()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    sget-boolean v2, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CDM_SecureChannel"

    const-string/jumbo v3, "Sending Ukey2 Client Init message"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mClientInit:[B

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mRole:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DHandshakeContext$Role;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isSecured()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mPskVerified:Z

    if-nez v0, :cond_2

    iget p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mVerificationResult:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B
    .locals 8

    const-string/jumbo v0, "Unexpected message type. Expected "

    sget-boolean v1, Lcom/android/server/companion/securechannel/SecureChannel;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CDM_SecureChannel"

    const-string/jumbo v2, "Waiting to receive next secure message."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "CDM_SecureChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Waiting to receive next "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    monitor-enter v1

    const/4 v2, 0x6

    :try_start_0
    new-array v2, v2, [B

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v2}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/4 v5, 0x1

    const-wide v6, 0x7fffffffffffffffL

    if-ne v4, v5, :cond_5

    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v4

    if-ne v3, v4, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {v3, v0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p0, v0, v2}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->decodeMessageFromPeer([B[B)[B

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string/jumbo v0, "Payload is too large."

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; Found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->from(S)Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Skipping rest of data."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mInput:Ljava/io/InputStream;

    invoke-static {p0, v6, v7}, Llibcore/io/Streams;->skipByReading(Ljava/io/InputStream;J)J

    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string/jumbo p1, "Secure channel version mismatch. Currently on version 1. Skipping rest of data."

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final receiveSecureMessage()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mCallback:Lcom/android/server/companion/transport/SecureTransport;

    const-string v2, "CDM_SecureChannel"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Received a message without a secure connection. Message will be ignored."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is not secure."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v0, "CDM_CompanionTransport"

    const-string/jumbo v2, "Secure transport encountered an error."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v1, Lcom/android/server/companion/transport/SecureTransport;->mSecureChannel:Lcom/android/server/companion/securechannel/SecureChannel;

    iget-boolean p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mStopped:Z

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/android/server/companion/transport/SecureTransport;->close()V

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/securechannel/SecureChannel;->readMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/companion/securechannel/SecureChannelException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Ignoring received message."

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_1
    :goto_0
    return-void
.end method

.method public final sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    monitor-enter v0

    const/4 v1, 0x6

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->-$$Nest$fgetmValue(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_INIT:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->HANDSHAKE_FINISH:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mConnectionContext:Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;

    invoke-virtual {p1, p2, v1}, Lcom/google/security/cryptauth/lib/securegcm/ukey2/D2DConnectionContextV1;->encodeMessageToPeer([B[B)[B

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lcom/android/server/companion/securechannel/SecureChannel;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendSecureMessage([B)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/companion/securechannel/SecureChannel;->isSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/android/server/companion/securechannel/SecureChannel$MessageType;->SECURE_MESSAGE:Lcom/android/server/companion/securechannel/SecureChannel$MessageType;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/securechannel/SecureChannel;->sendMessage(Lcom/android/server/companion/securechannel/SecureChannel$MessageType;[B)V
    :try_end_0
    .catch Lcom/google/security/cryptauth/lib/securegcm/ukey2/BadHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string v0, "Failed to encrypt data."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p0, "CDM_SecureChannel"

    const-string p1, "Cannot send a message without a secure connection."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Channel is not secured yet."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
