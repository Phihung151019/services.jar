.class public final Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;
.super Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

.field public final synthetic val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;Lcom/android/internal/widget/IUpdateVerifierInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    invoke-direct {p0}, Lcom/android/internal/widget/IUpdateVerifierCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceiveSaGuid(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "LockSettingsService"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->unbindService()V

    return-void

    :cond_0
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iget-object v3, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mCredential:[B

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p1, v5, v1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->makeX(Ljava/lang/String;Ljava/lang/String;[B)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->g:Ljava/math/BigInteger;

    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->N:Ljava/math/BigInteger;

    invoke-virtual {v5, v3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "exception to make verifier = "

    invoke-static {v2, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v4

    :goto_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mCredential:[B

    :try_start_1
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p1, v5, v1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->makeX(Ljava/lang/String;Ljava/lang/String;[B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->hash([[B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->pbkdf2([C[B)[B

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string/jumbo v3, "exception to make wrapKey = "

    invoke-static {p1, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->val$iUpdateVerifierInterface:Lcom/android/internal/widget/IUpdateVerifierInterface;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->mVerifierType:I

    invoke-interface {p1, v2, v1, v4, v0}, Lcom/android/internal/widget/IUpdateVerifierInterface;->updateVerifierWithWk([B[B[BI)V

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection$1;->this$1:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;->unbindService()V

    return-void
.end method
