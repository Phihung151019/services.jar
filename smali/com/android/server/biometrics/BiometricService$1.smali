.class public final Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAcquired(III)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthenticationFailed(I)V
    .locals 4

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAuthenticationSucceeded(I[B)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(IIII)V
    .locals 11

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    const/4 v9, 0x1

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    iget-object p0, v2, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    iget-wide v4, v2, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    move-object v3, v2

    new-instance v2, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIIII)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
