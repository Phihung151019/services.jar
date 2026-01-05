.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$2:I

    iput p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$3:I

    iput p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$2:I

    iget v7, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$3:I

    iget v8, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;->f$4:I

    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "BiometricService"

    const-string/jumbo v0, "onAcquired: AuthSession is not current"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    if-eqz v0, :cond_1

    const-string/jumbo p0, "onAcquired after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string/jumbo v0, "sensorId: "

    const-string v2, " acquiredInfo: "

    const-string v4, " vendor: "

    invoke-static {v3, v7, v0, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v6

    iget-object v0, v5, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    new-instance v4, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;IIILjava/lang/String;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 v0, 0x6

    if-ne v7, v0, :cond_5

    move v7, v8

    :cond_5
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {p0, v7, v9}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAcquired(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo v0, "Remote exception"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method
