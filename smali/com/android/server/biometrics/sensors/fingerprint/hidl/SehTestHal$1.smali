.class public final Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    return-void
.end method


# virtual methods
.method public final deliverAcquiredEvent(II)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAcquired(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final deliverAuthenticationResult(I)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    const/16 v0, 0x3ec

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mEnrollmentIds:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    move v3, p1

    new-instance v5, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/16 v0, 0x45

    invoke-static {v0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final deliverEnrollResult(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mIsTpaMode:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iget-wide v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mDeviceId:J

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentEnrollmentId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mCurrentUserID:I

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->onEnrollResult(IIIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final deliverErrorEvent(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->deliverErrorEvent(II)V

    return-void
.end method

.method public final deliverTspEvent(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string/jumbo v2, "info"

    if-ne p1, v1, :cond_0

    const/16 p1, 0xf

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/SehTestHal;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
