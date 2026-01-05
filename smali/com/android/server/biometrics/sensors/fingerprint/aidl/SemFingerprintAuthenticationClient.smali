.class public final Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsConstraintStatusListener;
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpTspBlockStatusHandler;
.implements Lcom/android/server/biometrics/sensors/fingerprint/Udfps;
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;
.implements Lcom/android/server/biometrics/sensors/fingerprint/PowerPressHandler;


# instance fields
.field public final mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

.field public final mAttribute:Landroid/os/Bundle;

.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mAuthenticationFailedReason:I

.field public final mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

.field public mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

.field public mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

.field public mCanIgnoreLockout:Z

.field public mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field public mCaptureStartTime:J

.field public mErrorEscrow:I

.field public final mGetTid:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;

.field public mIsAuthenticated:Z

.field public final mIsKeyguard:Z

.field public mIsScreenOnWhenStartCapture:Z

.field public mIsSetEarlyWakeUp:Z

.field public final mIsSettingApp:Z

.field public final mIsStrongBiometric:Z

.field public mLastErrorCode:I

.field public mPowerPressedTimeStamp:J

.field public mPrivilegedFlags:I

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mQualityErrorCount:I

.field public mRejectCount:I

.field public final mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

.field public final mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public mShouldSkipResponseDueToPowerPress:Z

.field public mShouldWaitFingerLeave:Z

.field public mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

.field public mTotalQualityErrorCount:I

.field public mVendorErrorEscrow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/fingerprint/FingerprintAuthenticateOptions;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;ILcom/android/server/biometrics/sensors/LockoutTracker;Landroid/os/Bundle;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;J)V
    .locals 18

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move/from16 v16, p17

    move/from16 v17, p19

    move-object/from16 v15, p20

    invoke-direct/range {v0 .. v17}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZI)V

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    new-instance v1, Lcom/android/server/biometrics/sensors/SensorOverlays;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;-><init>()V

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    iput-boolean v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsStrongBiometric:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    new-instance v2, Lcom/android/server/biometrics/log/CallbackWithProbe;

    iget-object v1, v1, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/android/server/biometrics/log/CallbackWithProbe;-><init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-object/from16 v1, p13

    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v1, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAttribute:Landroid/os/Bundle;

    const/4 v1, 0x1

    if-nez p9, :cond_0

    invoke-super {v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez p9, :cond_1

    invoke-virtual/range {p10 .. p10}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android.permission.USE_BIOMETRIC_INTERNAL"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    :cond_1
    iput-boolean v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSettingApp:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mGetTid:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    return-void
.end method


# virtual methods
.method public canEnableEarlyWakeUp()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isFlipFolded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_EARLY_WAKE_UP:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "double_tab_to_wake_up"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method public final canIgnoreLockout()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCanIgnoreLockout:Z

    return p0
.end method

.method public createBiometricNotification()Lcom/android/server/biometrics/SemBiometricNotification;
    .locals 3

    new-instance v0, Lcom/android/server/biometrics/SemBiometricNotification;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/biometrics/SemBiometricNotification;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public createSysUiImpl(Z)Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;
    .locals 11

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioSysUiManagerManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v8

    iget-boolean v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    const/4 v7, 0x1

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZZ)V

    return-object v1

    :cond_0
    move v10, p1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioSysUiManagerManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZ)V

    return-object v2

    :cond_1
    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioSysUiManagerManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v8, 0x1

    const/16 v6, 0x80

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZ)V

    return-object v0

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldWaitFingerLeave:Z

    if-eqz p1, :cond_3

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioSysUiManagerManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v9

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZZ)V

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final destroy()V
    .locals 11

    const-string v0, "FingerprintAuthenticationClient.Ext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "destroy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->destroy()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->stop()V

    iget v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    const-wide/16 v3, 0xfa0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->disable(I)V

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v2

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    iput v0, v2, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricNotification;->cancelNotification()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v5, v0

    const-string/jumbo v8, "U"

    iget v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    iget v10, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    invoke-virtual {v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v3, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableEarlyWakeUp()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->setEarlyWakeUp(Z)V

    :cond_0
    return-void
.end method

.method public getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    return-object p0
.end method

.method public getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    return-object p0
.end method

.method public getBioSysUiManagerManager()Lcom/android/server/biometrics/SemBiometricSysUiManager;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    return-object p0
.end method

.method public getBiometricPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .locals 1

    const-string/jumbo p0, "biometric"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getBiometricPrompt: failed to get prompt info"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintAuthenticationClient.Ext"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBiometricsHandler()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p0

    return-object p0
.end method

.method public getElapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .locals 0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    return-object p0
.end method

.method public final handleLifecycleAfterAuth(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldWaitFingerLeave:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final hasPrivilegedFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPrivilegedFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInteractive()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method public final isKeyguard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    return p0
.end method

.method public isTalkBackEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final onAcquired(II)V
    .locals 29

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v8, p2

    const/16 v11, 0x8

    const-string v0, "FingerprintAuthenticationClient.Ext"

    const-string/jumbo v3, "onAcquired: "

    const-string v4, ", "

    invoke-static {v2, v8, v3, v4, v0}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const/16 v3, 0x2712

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    if-ne v2, v13, :cond_1

    if-ne v8, v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getElapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    sub-long v6, v4, v6

    const-string/jumbo v0, "isSkippingIntervalAsPowerKeyPress: "

    const-string v9, ", "

    invoke-static {v0, v4, v5, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "FingerprintAuthenticationClient.Ext"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    check-cast v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x320

    cmp-long v0, v6, v4

    if-gtz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    if-eqz v0, :cond_2

    goto/16 :goto_14

    :cond_2
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    const/16 v15, 0x2717

    const/16 v4, 0x2714

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->handleOnAcquired(II)V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isUltrasonicType()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne v2, v13, :cond_5

    if-eq v8, v3, :cond_3

    if-eq v8, v4, :cond_3

    if-ne v8, v15, :cond_5

    :cond_3
    if-ne v8, v3, :cond_4

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_5

    invoke-interface {v0, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v5, "FingerprintAuthenticationClient.Ext"

    const-string v6, "Failed to invoke sendAcquired"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    const/4 v0, 0x3

    if-ne v2, v13, :cond_19

    const v5, 0xc34f

    const v6, 0x9c40

    const/16 v7, 0x2711

    const/16 v9, 0x3ee

    const/16 v10, 0x271b

    if-eq v8, v10, :cond_9

    if-eq v8, v9, :cond_9

    if-lt v8, v6, :cond_6

    if-gt v8, v5, :cond_6

    goto :goto_4

    :cond_6
    if-eq v8, v7, :cond_8

    if-eq v8, v3, :cond_8

    const/16 v5, 0x2713

    if-eq v8, v5, :cond_8

    const/16 v5, 0x2715

    if-eq v8, v5, :cond_8

    const/16 v5, 0x2716

    if-eq v8, v5, :cond_8

    if-eq v8, v4, :cond_8

    if-eq v8, v15, :cond_8

    const/16 v5, 0x271c

    if-ne v8, v5, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v16, v14

    goto :goto_5

    :cond_8
    :goto_3
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v5

    move/from16 v16, v5

    goto :goto_5

    :cond_9
    :goto_4
    move/from16 v16, v12

    :goto_5
    if-eq v8, v9, :cond_15

    if-eq v8, v10, :cond_14

    if-eq v8, v7, :cond_13

    if-eq v8, v3, :cond_b

    :cond_a
    :goto_6
    move v12, v6

    move/from16 v17, v14

    :goto_7
    const v15, 0xc34f

    goto/16 :goto_a

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    if-nez v3, :cond_c

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->canEnableEarlyWakeUp()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->enableEarlyWakeUp()V

    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    :cond_c
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez v3, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v14}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_8
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v5

    iget v7, v5, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    const/16 v20, 0x2

    const-string v21, "FINGERPRINT_SERVICE"

    const/16 v19, 0xdad

    const/16 v22, 0x7d0

    move-object/from16 v18, v3

    move-object/from16 v17, v5

    move/from16 v23, v7

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V

    :cond_e
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->vibrateSuccess()V

    :cond_f
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v3

    monitor-enter v3

    const/16 v5, 0x9

    :try_start_1
    invoke-virtual {v3, v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v3

    iget-wide v9, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v5, v9

    iget-boolean v7, v3, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v7, :cond_10

    goto :goto_9

    :cond_10
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v7, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;

    invoke-direct {v9, v3, v5}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;I)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_12
    :goto_9
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->isInteractive()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    goto/16 :goto_6

    :cond_13
    iput-boolean v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    goto/16 :goto_6

    :cond_14
    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->canEnableEarlyWakeUp()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->enableEarlyWakeUp()V

    iput-boolean v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsSetEarlyWakeUp:Z

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v3, v13, v8, v14, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IIILjava/lang/String;)V

    move v3, v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v6, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move v10, v6

    iget-wide v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    sub-long v17, v17, v5

    move v5, v10

    iget-boolean v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    iget-boolean v6, v4, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v6, :cond_16

    move/from16 v17, v14

    const v12, 0x9c40

    goto/16 :goto_7

    :cond_16
    invoke-virtual {v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v6

    move/from16 v19, v3

    new-instance v3, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    move v12, v14

    move-object v14, v6

    move-wide/from16 v6, v17

    move/from16 v17, v12

    const v12, 0x9c40

    const v15, 0xc34f

    invoke-direct/range {v3 .. v10}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V

    invoke-virtual {v14, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_a
    if-lt v8, v12, :cond_1a

    if-gt v8, v15, :cond_1a

    iput v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationFailedReason:I

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v3

    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    iget-object v5, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v5, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_17

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_17
    iget-object v5, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v5, v5, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mNoMatchReason:Landroid/util/SparseArray;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_b
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v3

    const-string v4, "FPNR"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    new-array v3, v11, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v11, :cond_1a

    aget v5, v3, v4

    if-ne v8, v5, :cond_18

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    const-string v5, "FPAF"

    invoke-virtual {v3, v0, v5, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_19
    move/from16 v17, v14

    move/from16 v16, v17

    :cond_1a
    :goto_d
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    const/16 v3, 0x3e9

    if-eq v8, v3, :cond_1b

    const/16 v3, 0x3eb

    if-eq v8, v3, :cond_1b

    const/16 v3, 0x3ea

    if-ne v8, v3, :cond_21

    :cond_1b
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    invoke-virtual {v1, v11}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->vibrateError()V

    :cond_1c
    iget v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    iget v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->updateTspControlMode()V

    :cond_1d
    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v3

    iget v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v5

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->createUserEntryIfNecessary(I)V

    if-eqz v5, :cond_1e

    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQualityCrypto:I

    goto :goto_e

    :cond_1e
    iget-object v3, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker;->mAllUsersInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;

    iget v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/biometrics/sensors/PerformanceTracker$Info;->mQuality:I

    :goto_e
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v3, v2, v8, v0, v4}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLogHelp(IIILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    sub-long v24, v5, v9

    if-ne v2, v13, :cond_1f

    move/from16 v26, v8

    goto :goto_f

    :cond_1f
    move/from16 v26, v2

    :goto_f
    iget-boolean v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    iget-boolean v6, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v6, :cond_20

    goto :goto_10

    :cond_20
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v21, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    move-object/from16 v22, v0

    move-object/from16 v27, v3

    move/from16 v23, v4

    move/from16 v28, v5

    invoke-direct/range {v21 .. v28}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_10
    if-eqz v16, :cond_26

    const/16 v0, 0x3ed

    if-ne v8, v0, :cond_22

    const/4 v2, 0x0

    const/4 v8, 0x0

    :cond_22
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v3, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v5

    invoke-direct {v3, v4, v5, v2}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    invoke-virtual {v3}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    const/4 v0, 0x7

    if-eq v2, v0, :cond_24

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    if-ne v2, v13, :cond_23

    add-int/lit16 v3, v8, 0x3e8

    goto :goto_11

    :cond_23
    move v3, v2

    :goto_11
    iget-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v6, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v7

    invoke-direct {v6, v4, v7, v0, v3}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v6}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    :cond_24
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_25

    :try_start_3
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-interface {v0, v3, v2}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->onAcquired(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_25
    :goto_12
    move/from16 v3, v17

    goto :goto_13

    :catch_1
    move-exception v0

    const-string/jumbo v3, "SensorOverlays"

    const-string/jumbo v4, "Remote exception using overlay controller"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :goto_13
    invoke-virtual {v1, v2, v8, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    iget v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    :cond_26
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldWaitFingerLeave:Z

    if-eqz v0, :cond_28

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    if-eqz v0, :cond_28

    const/16 v3, 0x2714

    if-eq v8, v3, :cond_27

    const/16 v2, 0x2717

    if-ne v8, v2, :cond_28

    :cond_27
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldWaitFingerLeave:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->handleLifecycleAfterAuth(Z)V

    :cond_28
    :goto_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xa048
        0xa0a8
        0xabe2
        0xabe3
        0xabe4
        0xabe5
        0xb79a
        0xb79b
    .end array-data
.end method

.method public final onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v6, p2

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    const-string v2, "BMFP"

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    const-string v0, "FingerprintAuthenticationClient.Ext"

    const-string/jumbo v3, "SKIP DUE TO POWER PRESS"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fp_auth_result: skip, power key"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mShouldSkipResponseDueToPowerPress:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mPowerPressedTimeStamp:J

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fp_auth_result: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleAuthenticated: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FingerprintService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    if-eqz v0, :cond_2

    iget v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiSessionId:I

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda12;

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZLjava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCaptureStartTime:J

    sub-long v12, v2, v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->updateTspControlMode()V

    :cond_3
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v10

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v11, v3

    iget v14, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    iget v15, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    invoke-virtual {v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;

    move-object/from16 v16, v0

    move/from16 v18, v3

    invoke-direct/range {v9 .. v18}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;IZ)V

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v19

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-wide v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v3, v3

    iget v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationFailedReason:I

    iget v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    iget-boolean v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v18, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;

    move-object/from16 v25, v0

    move/from16 v20, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v26, v6

    move-wide/from16 v21, v12

    invoke-direct/range {v18 .. v26}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :goto_1
    iget-boolean v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsAuthenticated:Z

    iget v6, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    iget v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    iget-boolean v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsScreenOnWhenStartCapture:Z

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    move-result-object v9

    move v3, v0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;

    move v10, v3

    move-wide v3, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;ZJIIZ)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mQualityErrorCount:I

    invoke-super/range {p0 .. p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    const-string v2, "FingerprintAuthenticationClient"

    if-nez v0, :cond_5

    const-string/jumbo v0, "Lockout is implemented by the HAL"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v0, v2, v10}, Lcom/android/server/biometrics/sensors/LockoutTracker;->resetFailedAttemptsForUser(IZ)V

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v0, v3}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    if-eqz v0, :cond_8

    const-string v3, "Fingerprint locked out, lockoutMode("

    const-string v4, ")"

    invoke-static {v0, v3, v4, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v10, :cond_7

    const/4 v0, 0x7

    goto :goto_2

    :cond_7
    const/16 v0, 0x9

    :goto_2
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v3, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v4, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6, v0, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v3}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    invoke-virtual {v1, v0, v8, v8}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onErrorInternal(IIZ)V

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v2, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v4

    iget-boolean v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsStrongBiometric:Z

    iget v6, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;IZI)V

    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationSucceededInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationSucceeded(Landroid/hardware/biometrics/events/AuthenticationSucceededInfo;)V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    return-void

    :cond_9
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v4

    iget v1, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-direct {v2, v3, v4, v1}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationFailed(Landroid/hardware/biometrics/events/AuthenticationFailedInfo;)V

    return-void
.end method

.method public final onError(II)V
    .locals 6

    const-string v0, ", "

    const-string/jumbo v1, "fp_error: "

    const-string v2, "BMFP"

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/16 v4, 0xa

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ", auth_error"

    invoke-static {p1, p2, v1, v0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v4, ", auth_cancel"

    invoke-static {p1, p2, v1, v0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-ne p1, v3, :cond_2

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mErrorEscrow:I

    if-eqz v0, :cond_2

    iget p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mVendorErrorEscrow:I

    move p1, v0

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    goto :goto_2

    :cond_3
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mLastErrorCode:I

    :goto_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBadCalibrationNotification(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v2, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->handleOnError(II)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->resumeFaceAuth()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getAnalyticsManager()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const-string v3, "FPER"

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq p1, v2, :cond_8

    const/4 v2, 0x7

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_6

    const/16 v2, 0x9

    if-eq p1, v2, :cond_7

    move-object p0, v5

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    goto :goto_3

    :cond_7
    new-instance v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v3, "FPIB"

    iput-object v3, v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    iput v4, v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    move-object p0, v2

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    :goto_3
    if-eqz p0, :cond_9

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_9
    if-ne p1, v0, :cond_a

    const/16 p0, 0x3ef

    if-ne p2, p0, :cond_a

    new-instance p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "FPPD"

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mType:I

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_a
    return-void
.end method

.method public final onLockoutPermanent()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-wide v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->lockedOutFor(IIIJ)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Lcom/android/server/biometrics/log/OperationContextExt;III)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6, v3}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string/jumbo v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    return-void
.end method

.method public final onLockoutTimed(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-wide v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->lockOutTimed(IIIJJ)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object p2

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Lcom/android/server/biometrics/log/OperationContextExt;III)V

    iget p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object p1

    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance p2, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v0, v3, v4, v1}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {p2}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationError(Landroid/hardware/biometrics/events/AuthenticationErrorInfo;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget p2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string p2, "FingerprintAuthenticationClient"

    const-string/jumbo v0, "Remote exception"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mShouldSendErrorToClient:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    return-void
.end method

.method public final onOneHandModeEnabled()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x1389

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    return-void
.end method

.method public final onPointerDown(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDownWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    iget v1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    iget v2, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->x:F

    float-to-int v2, v2

    iget v3, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->y:F

    float-to-int v3, v3

    iget v4, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->minor:F

    iget v5, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->major:F

    invoke-interface/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerDown(IIIFF)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerDown(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "FingerprintAuthenticationClient"

    const-string/jumbo v0, "Remote exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final onPointerUp(Landroid/hardware/biometrics/fingerprint/PointerContext;)V
    .locals 2

    const/4 v0, 0x3

    :try_start_0
    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUpWithContext(Landroid/hardware/biometrics/fingerprint/PointerContext;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    iget p1, p1, Landroid/hardware/biometrics/fingerprint/PointerContext;->pointerId:I

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/fingerprint/ISession;->onPointerUp(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object p1, p1, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFingerprintServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onUdfpsPointerUp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "FingerprintAuthenticationClient"

    const-string/jumbo v0, "Remote exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public final onTspBlocked()V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x3ec

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public final onTspUnBlocked()V
    .locals 2

    const/4 v0, 0x6

    const/16 v1, 0x3ed

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onAcquired(II)V

    return-void
.end method

.method public final onUdfpsUiEvent(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->mSession:Landroid/hardware/biometrics/fingerprint/ISession;

    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/ISession;->onUiReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "FingerprintAuthenticationClient"

    const-string/jumbo v0, "Remote exception"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final resumeFaceAuth()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBiometricsHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final semHasPromptPrivilegedAttr()Z
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mPromptPrivilegedFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final semIsAllowedBackgroundAuthentication()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->hasPrivilegedFlag(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    :goto_0
    iget p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-nez p1, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->start()V

    :cond_3
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p1

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mHashID:I

    invoke-virtual {p1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->createBiometricNotification()Lcom/android/server/biometrics/SemBiometricNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "authenticator"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotificationAction:Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient$2;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Handler;I)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mBackgroundNotification:Lcom/android/server/biometrics/SemBiometricNotification;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBiometricNotification;->postNotification(Landroid/content/Intent;)V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBioLoggingManager()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    long-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "AP"

    goto :goto_2

    :cond_9
    const-string v1, "A"

    :goto_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p1

    iget p1, p1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mGetTid:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider$$ExternalSyntheticLambda32;->apply(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFingerprintHalTid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsBoosting"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p0, p1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mFingerprintHalTid:I

    :cond_a
    :goto_3
    return-void
.end method

.method public final startHalOperation()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/biometrics/sensors/SensorOverlays;->show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStartedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStartedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStarted(Landroid/hardware/biometrics/events/AuthenticationStartedInfo;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V

    new-instance v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintAuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FingerprintAuthenticationClient"

    const-string/jumbo v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final stopHalOperation()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAuthenticationStopped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    const-string v2, "FingerprintAuthenticationClient.Ext"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSysUiImpl:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getBoostingManager()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mSensorOverlays:Lcom/android/server/biometrics/sensors/SensorOverlays;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/SensorOverlays;->hide(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v1, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v1}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    const-string v1, "FingerprintAuthenticationClient"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->onError(II)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_1
    const-string v0, "Cancellation signal was null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public final updateTspControlMode()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mIsKeyguard:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mRejectCount:I

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mTotalQualityErrorCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    const/16 v2, 0x19

    if-gt v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->getUdfpsTspManager()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object p0

    monitor-enter p0

    const/16 v3, 0xa

    const/4 v4, 0x5

    if-lt v0, v1, :cond_1

    if-ge v0, v4, :cond_1

    :try_start_0
    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    goto :goto_0

    :cond_1
    if-lt v0, v4, :cond_2

    if-ge v0, v3, :cond_2

    iput v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xf

    if-lt v0, v3, :cond_3

    if-ge v0, v1, :cond_3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    goto :goto_0

    :cond_3
    if-lt v0, v1, :cond_4

    if-ge v0, v2, :cond_4

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    if-lt v0, v2, :cond_5

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInterruptDelay:I

    :cond_5
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_1
    return-void
.end method

.method public final vibrateError()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public final vibrateSuccess()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/biometrics/Utils;->semVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public final wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 3

    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/SemFingerprintAuthenticationClient;->mALSProbeCallback:Lcom/android/server/biometrics/log/CallbackWithProbe;

    new-instance v2, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;-><init>(Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    filled-new-array {v1, v2, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
