.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "handleCancelAuthentication: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "handleCancelAuthentication: AuthSession finished"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricService;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p0

    const-string v1, "BiometricService"

    if-nez p0, :cond_3

    const-string/jumbo p0, "handleClientDied: AuthSession is not current"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Session: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v2, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    const-string/jumbo v1, "Remote Exception: "

    const-string v2, "BiometricService/AuthSession"

    invoke-static {v1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_2
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    :cond_5
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
