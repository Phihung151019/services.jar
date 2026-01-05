.class public final Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;
.super Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/face/FaceUtils;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

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
    .locals 0

    new-instance p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInternalEnumerateClient;

    invoke-direct/range {p0 .. p10}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    return-object p0
.end method

.method public final getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 14

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;

    const/4 v4, 0x0

    filled-new-array/range {p4 .. p4}, [I

    move-result-object v5

    const/4 v13, 0x1

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;[IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)V

    return-object v0
.end method

.method public final interruptsPrecedingClients()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$4;->this$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mTestHalEnabled:Z

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

    check-cast p1, Landroid/hardware/face/Face;

    invoke-interface {v0, v1, p0, p1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method
