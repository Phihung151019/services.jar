.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;


# instance fields
.field public final mCalibrationColor:Ljava/lang/String;

.field public mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsCalibrationMode:Z

.field public final mIsKeyguard:Z

.field public final mPackageName:Ljava/lang/String;

.field public mSessionId:I

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    sget-object v5, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;-><init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    const-string/jumbo p3, "com.android.systemui"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "SemFpOpticalClient: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SemFpOpticalClient: binderDied, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    const-string v2, "FingerprintService"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onError(II)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda5;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "KEY_PACKAGE_NAME"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_KEYGUARD"

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsKeyguard:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nits"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mCalibrationColor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f5

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    return-void
.end method

.method public final stop()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SemFpOpticalClient: stop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "FingerprintService"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mIsCalibrationMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1f5

    goto :goto_1

    :cond_0
    const/16 v1, 0x1f4

    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommand(Landroid/os/Bundle;III)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->mSessionId:I

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    return-void
.end method
