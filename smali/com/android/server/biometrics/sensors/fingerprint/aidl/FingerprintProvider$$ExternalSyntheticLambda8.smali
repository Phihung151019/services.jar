.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field public final synthetic f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

.field public final synthetic f$10:Landroid/os/Bundle;

.field public final synthetic f$2:Landroid/os/IBinder;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZIIZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iput-wide p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$3:J

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-wide p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$5:J

    iput-boolean p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$6:Z

    iput p10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$7:I

    iput p11, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$8:I

    iput-boolean p12, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$9:Z

    iput-object p13, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$10:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$2:Landroid/os/IBinder;

    iget-wide v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$3:J

    iget-object v8, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-wide v9, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$5:J

    iget-boolean v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$6:Z

    iget v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$7:I

    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$8:I

    iget-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$9:Z

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda8;->f$10:Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getUserId()I

    move-result v27

    invoke-virtual {v12}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v16

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v14, v14, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getLockoutTracker(Z)Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v22

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;

    move/from16 v19, v3

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v15, v15, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object v15, v15, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mLazySession:Ljava/util/function/Supplier;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    move-object/from16 v17, v3

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->createLogger$1(IILcom/android/server/biometrics/AuthenticationStatsCollector;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v0

    move-object v2, v15

    iget-object v15, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$BiometricTaskStackListener;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mFingerprintSensors:Lcom/android/server/biometrics/sensors/SensorList;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v18, v21

    const/16 v24, 0x2

    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v21

    move-object/from16 v25, v0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;)V

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    iget-wide v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->mPowerSinglePressedTimeStamp:J

    move/from16 v29, v24

    move-object/from16 v24, v0

    const/4 v0, 0x1

    move-object/from16 v30, v28

    move/from16 v28, v4

    move-object/from16 v4, v26

    move-wide/from16 v31, v2

    move-object v2, v14

    move-object/from16 v3, v17

    move-object/from16 v14, v20

    move-object/from16 v20, v25

    move-object/from16 v17, v30

    move-wide/from16 v25, v31

    invoke-direct/range {v2 .. v26}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/fingerprint/FingerprintAuthenticateOptions;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILcom/android/server/biometrics/sensors/LockoutTracker;Landroid/os/Bundle;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;J)V

    move-wide v4, v6

    move-object v6, v2

    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v6, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    invoke-virtual {v6, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    :cond_0
    iget-boolean v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-eqz v2, :cond_1

    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v2, v2, 0x1b

    iput v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    goto :goto_0

    :cond_1
    iget-boolean v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSettingApp:Z

    if-eqz v2, :cond_2

    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    :cond_2
    :goto_0
    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    iget-object v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string/jumbo v7, "sem_privileged_attr"

    const/4 v15, 0x0

    invoke-virtual {v3, v7, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v2

    iput v2, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v15

    :goto_1
    if-nez v3, :cond_4

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    :cond_4
    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    or-int/2addr v2, v0

    iput v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    :cond_5
    if-eqz v3, :cond_6

    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v15

    :goto_2
    iput-boolean v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldWaitFingerLeave:Z

    :cond_7
    invoke-virtual {v6, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCanIgnoreLockout:Z

    :cond_8
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-boolean v15, v6, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldVibrate:Z

    :cond_9
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    :cond_a
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->semGetDisplayId()I

    goto :goto_3

    :cond_b
    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v3, "EXTRA_KEY_DISPLAY_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FingerprintClientExt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintAuthenticationClient.Ext"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldCancelIfBackgroundAuthentication:Z

    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const-string v3, "EXTRA_KEY_AUTH_FLAG"

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_d

    :cond_c
    move v15, v0

    :cond_d
    invoke-virtual {v6, v15}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->createSysUiImpl(Z)Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v6}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    iget-object v3, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->setAttribute(ILandroid/os/Bundle;)V

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiType:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_f

    iget-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mHasHideAuthGuideFlag:Z

    if-nez v2, :cond_10

    iget-boolean v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mAllowHideAuthGuidePackage:Z

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v0

    iget-object v2, v6, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;

    invoke-direct {v3, v6, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Z)V

    iput-object v3, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$SysUiCallback;

    iget-object v0, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iput v0, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    :cond_10
    :goto_4
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;IIJ)V

    invoke-virtual {v1, v3, v6, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleForSensor$1(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method
