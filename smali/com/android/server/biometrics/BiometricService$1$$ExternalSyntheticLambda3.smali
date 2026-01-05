.class public final synthetic Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$1;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V
    .locals 0

    iput p8, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    iput p5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    iput p6, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    iput p7, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    iget v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    iget p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleAuthenticationTimedOut(), sensorId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cookie: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vendorCode: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BiometricService"

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "handleAuthenticationTimedOut: AuthSession is not current"

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v1

    const-string v2, "BiometricService/AuthSession"

    if-eqz v1, :cond_1

    const-string/jumbo p0, "onAuthenticationTimedOut after successful auth"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v4

    invoke-virtual {v1, v4, v5, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    const/4 p0, 0x4

    iput p0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "RemoteException"

    invoke-static {v2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$1:J

    iget v3, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$2:I

    iget v4, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$3:I

    iget v5, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$4:I

    iget p0, p0, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;->f$5:I

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleOnError() sensorId: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cookie: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", vendorCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BiometricService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo p0, "handleOnError: AuthSession is not current"

    invoke-static {v7, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    :try_start_1
    invoke-virtual {v1, v3, v4, v5, p0}, Lcom/android/server/biometrics/AuthSession;->onErrorReceived(IIII)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "handleOnError: AuthSession finished"

    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    const-string/jumbo v0, "RemoteException"

    invoke-static {v7, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
