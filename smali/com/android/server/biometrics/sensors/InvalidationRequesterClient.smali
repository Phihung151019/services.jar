.class public final Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

.field public final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    new-instance p2, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;-><init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 p1, p6

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/biometrics/BiometricManager;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method
