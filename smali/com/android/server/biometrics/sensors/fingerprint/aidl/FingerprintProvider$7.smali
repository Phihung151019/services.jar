.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    move-object p1, p2

    move-object p2, p3

    move p3, p4

    move-object p4, p5

    move p5, p6

    move-object p6, p7

    move-object p7, p8

    move-object p8, p9

    move-object p9, p10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 11

    move-object/from16 p0, p9

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInternalEnumerateClient;

    new-instance v9, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v2, p1

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p10

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object v0
.end method

.method public final getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 14

    move-object/from16 p0, p9

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v5

    new-instance v6, Lcom/android/server/biometrics/log/BiometricLogger;

    iget v8, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v10, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v9, 0x4

    const/4 v11, 0x0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    const/4 v4, 0x0

    const/4 v13, 0x1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object v10, v6

    move/from16 v6, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)V

    return-object v0
.end method

.method public final handleInvalidBiometricState()V
    .locals 2

    const-string v0, "FingerprintInternalCleanupClient"

    const-string v1, "Invalid fingerprint user state: delete the state."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->deleteStateForUser(I)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFingerprintLoeNotification(Landroid/content/Context;)V

    return-void
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$7;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTestHalEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method
