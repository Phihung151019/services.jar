.class public abstract Lcom/android/server/biometrics/sensors/HalClientMonitor;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLazyDaemon:Ljava/util/function/Supplier;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    iget-object p2, p4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    iget-object p2, p4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p2, :cond_1

    const/4 p1, 0x2

    :cond_1
    :goto_0
    new-instance p2, Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result p3

    new-instance p4, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {p4}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    move/from16 p5, p11

    invoke-direct {p2, p4, p3, p1, p5}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    return-void
.end method

.method public final getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isCryptoOperation()Z

    move-result p0

    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    return-object v1
.end method

.method public final isBiometricPrompt()Z
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract startHalOperation()V
.end method

.method public abstract unableToStart()V
.end method

.method public final unsubscribeBiometricContext()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
