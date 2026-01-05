.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricServiceProvider;


# virtual methods
.method public abstract cancelAuthentication(Landroid/os/IBinder;JI)V
.end method

.method public abstract cancelEnrollment(Landroid/os/IBinder;JI)V
.end method

.method public abstract createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
.end method

.method public abstract getEnrolledFingerprints(II)Ljava/util/List;
.end method

.method public abstract onKeyguardScreenStatus(Z)V
.end method

.method public abstract onOneHandModeEnabled()V
.end method

.method public abstract onPointerDown(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
.end method

.method public abstract onPointerUp(JILandroid/hardware/biometrics/fingerprint/PointerContext;)V
.end method

.method public abstract onPowerPressed()V
.end method

.method public abstract onPowerSinglePressed()V
.end method

.method public abstract onUdfpsUiEvent(IJI)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract pauseEnroll(I)V
.end method

.method public abstract rename(IIILjava/lang/String;)V
.end method

.method public abstract resumeEnroll(I)V
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;ZIZLandroid/os/Bundle;)J
.end method

.method public abstract scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;JIZ)V
.end method

.method public abstract scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;ILandroid/hardware/fingerprint/FingerprintEnrollOptions;)J
.end method

.method public abstract scheduleFingerDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)J
.end method

.method public abstract scheduleGenerateChallenge(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
.end method

.method public abstract scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
.end method

.method public abstract scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
.end method

.method public abstract scheduleRemoveAll(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
.end method

.method public abstract scheduleResetLockout(II[B)V
.end method

.method public abstract scheduleRevokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
.end method

.method public abstract scheduleWatchdog(I)V
.end method

.method public abstract semAddAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
.end method

.method public abstract semAddChallengeListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;)V
.end method

.method public abstract semAddEnrollmentListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V
.end method

.method public abstract semAddEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
.end method

.method public abstract semAddHalLifecycleListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFingerprintServiceExtImpl;)V
.end method

.method public abstract semAddResetLockoutListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;)V
.end method

.method public abstract semGetCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.end method

.method public abstract semGetDaemonSdkVersion()Ljava/lang/String;
.end method

.method public abstract semGetOpticalBrightnessConfigs(I)[Ljava/lang/String;
.end method

.method public abstract semGetRemainingLockoutTime(I)I
.end method

.method public abstract semGetSecurityLevel$1()I
.end method

.method public abstract semGetSensorInfo(I)Ljava/lang/String;
.end method

.method public abstract semNotifyTspBlockStateToClient(Z)V
.end method

.method public abstract semOpenTzSession()V
.end method

.method public abstract semProcessFidoCommand(I[B[B)I
.end method

.method public abstract semRequest(II)I
.end method

.method public abstract semRequest(III[B[B)I
.end method

.method public abstract semScheduleSensorTest(ILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
.end method

.method public abstract semScheduleUpdateTrustApp(ILjava/lang/String;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
.end method

.method public abstract setIgnoreDisplayTouches(IZ)V
.end method

.method public abstract simulateVhalFingerDown(II)V
.end method

.method public abstract startPreparedClient(II)V
.end method
