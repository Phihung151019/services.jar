.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field public final synthetic f$1:Landroid/hardware/face/FaceAuthenticateOptions;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/os/IBinder;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$6:J

.field public final synthetic f$7:Z

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Landroid/hardware/face/FaceAuthenticateOptions;ZLandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    iput-wide p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-wide p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$6:J

    iput-boolean p10, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$7:Z

    iput p11, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$8:I

    iput p12, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$9:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/face/FaceAuthenticateOptions;

    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$2:Z

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$3:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$4:J

    iget-object v8, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$5:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-wide v9, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$6:J

    iget-boolean v11, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$7:Z

    iget v13, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$8:I

    iget v0, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$$ExternalSyntheticLambda5;->f$9:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    move-result v3

    invoke-virtual {v12}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    move-result v4

    sget-object v14, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mBundle:Landroid/os/Bundle;

    const/4 v15, 0x0

    move/from16 v16, v2

    if-nez v14, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "sem_privileged_attr"

    invoke-virtual {v14, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    and-int/lit8 v2, v2, 0x4

    const/4 v14, 0x1

    if-eqz v2, :cond_1

    move v15, v14

    :cond_1
    or-int v20, v16, v15

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v17

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->scheduleFaceUpdateActiveUserClient(I)V

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v2, v2, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v2, v14}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v19

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    move v14, v3

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mFaceSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v15, v15, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    iget-object v15, v15, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    move-object/from16 p0, v2

    const/4 v2, 0x2

    move/from16 v16, v4

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->createLogger(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-static/range {v16 .. v16}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v22

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move-object/from16 v23, v0

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/hardware/SensorPrivacyManager;

    move v0, v14

    const/4 v14, 0x0

    move-object/from16 v24, v18

    move-object/from16 v18, v4

    move-object v4, v15

    move-object/from16 v15, v24

    move/from16 v24, v16

    move-object/from16 v16, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v23}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutTracker;ZLandroid/hardware/SensorPrivacyManager;ILcom/android/server/biometrics/sensors/AuthenticationStateListeners;)V

    move-wide v4, v6

    move v14, v0

    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;

    move-object v6, v2

    move v2, v14

    move/from16 v3, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider$3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;IIJLcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;)V

    move-object v2, v6

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleForSensor(ILcom/android/server/biometrics/sensors/HalClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method
