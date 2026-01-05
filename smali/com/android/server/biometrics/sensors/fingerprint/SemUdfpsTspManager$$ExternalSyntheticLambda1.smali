.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->getInputDeviceManager()Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    move-result-object v1

    const-string v2, "FingerprintService"

    if-nez v1, :cond_0

    const-string/jumbo p0, "sendCommand fail : InputDeviceManager is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput p0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mLastCmd:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    iget v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    invoke-interface {v1, v3, v4, v4, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTemperature(I)I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    invoke-interface {v1, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodLpMode(I)I

    goto :goto_1

    :pswitch_3
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v3, v4, v5, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodRect(IIII)I

    goto :goto_1

    :pswitch_4
    invoke-interface {v1, v4, v4, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    goto :goto_1

    :pswitch_5
    invoke-interface {v1, v3, v4, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    goto :goto_1

    :pswitch_6
    invoke-interface {v1, v3, v3, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    goto :goto_1

    :pswitch_7
    invoke-interface {v1, v3, v4, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I

    goto :goto_1

    :pswitch_8
    invoke-interface {v1, v3, v3, v4, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(IIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendCommand fail with e : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string/jumbo v0, "setTspMode: ["

    const-string/jumbo v1, "] done"

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
