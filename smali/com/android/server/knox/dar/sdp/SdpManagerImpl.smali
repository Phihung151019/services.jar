.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static checkSystemPermission()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SdpManagerImpl"

    const-string/jumbo v1, "Require system permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred in pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupportedDevice()V
    .locals 2

    const-string/jumbo v0, "SdpManagerImpl"

    const-string/jumbo v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native nativeOnBoot(II)I
.end method

.method public static native nativeOnChangePassword(I[B[B)I
.end method

.method public static native nativeOnDeviceLocked(II)I
.end method

.method public static native nativeOnDeviceUnlocked(I[B)I
.end method

.method public static native nativeOnMigration(IIII[B)I
.end method

.method public static native nativeOnUserAdded(II[B)I
.end method

.method public static native nativeOnUserRemoved(II)I
.end method


# virtual methods
.method public getResetToken(I)[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getResetTokenSafe(I)[B
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTokenHandle(I)J
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->checkSystemPermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public initializeMasterKeyIfRequired([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public isSdpPackage(ILjava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public lockSdpIfRequired(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public onCredentialChanged(II)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public onDeviceLocked(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public onDeviceUnlocked(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public saveMasterKeyIfUnsecured([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public saveResetTokenSafe([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public unlockSdpIfUnsecuredOrBiometricAuthenticated(II)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public unlockSdpOnCredentialVerified([BI)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method

.method public welcomeNewUser(I)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->isSupportedDevice()V

    return-void
.end method
