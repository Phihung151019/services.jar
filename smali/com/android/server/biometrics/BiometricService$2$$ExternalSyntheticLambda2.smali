.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/BiometricService$2;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    iput-boolean p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/biometrics/BiometricService$2;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$1:J

    iget-boolean p0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;->f$2:Z

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "BiometricService"

    const-string/jumbo v4, "handleOnDialogAnimatedIn"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "handleOnDialogAnimatedIn: AuthSession is not current"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x2

    const-string v3, "BiometricService/AuthSession"

    const/4 v4, 0x6

    const/4 v5, 0x4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDialogAnimatedIn, unexpected state: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-static {p0, v0, v3}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1
    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_2
    if-eqz p0, :cond_3

    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "delaying fingerprint sensor start"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, v0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    return-void
.end method
