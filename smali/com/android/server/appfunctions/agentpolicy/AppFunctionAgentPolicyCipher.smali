.class public final Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 6

    const-string v0, "AppFunctionAgentPolicyCipher"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/16 v3, 0x2000

    new-array v3, v3, [B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    new-array v5, v4, [B

    invoke-virtual {p1, v5, v1, v4}, Ljava/io/InputStream;->read([BII)I

    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-eq p0, v4, :cond_1

    invoke-virtual {v2, v3, v1, p0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "updateResult result is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :goto_1
    const-string/jumbo p1, "decrypt"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/appfunctions/agentpolicy/AppFunctionAgentPolicyCipher$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    array-length v3, p0

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :goto_1
    const-string p1, "AppFunctionAgentPolicyCipher"

    const-string/jumbo p2, "encrypt ////"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
