.class public final Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService$2;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    return-void
.end method


# virtual methods
.method public final onDismissed(I[B)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->onDialogDismissed(I[B)V

    return-void
.end method

.method public final onError(II)V
    .locals 6

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    iget-object p0, v1, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v2, v1, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onEvent(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricService$2;->onDialogAnimatedIn(Z)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$2;->onSystemEvent(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$2;->onDeviceCredentialPressed()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTryAgainPressed(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;->this$0:Lcom/android/server/biometrics/BiometricService$2;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$2;->onTryAgainPressed()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/BiometricService$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
