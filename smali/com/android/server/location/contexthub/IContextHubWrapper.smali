.class public abstract Lcom/android/server/location/contexthub/IContextHubWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/contexthub/IContextHub;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "IContextHubWrapper"

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contexthub/IContextHub$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Context Hub AIDL service was declared but was not found"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "Context Hub AIDL service is not declared"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract disableNanoapp(IIJ)I
.end method

.method public abstract enableNanoapp(IIJ)I
.end method

.method public abstract getContextHubs()Landroid/util/Pair;
.end method

.method public getEndpoints()Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getHubs()Ljava/util/List;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public abstract getPreloadedNanoappIds(I)[J
.end method

.method public abstract loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
.end method

.method public abstract onAirplaneModeSettingChanged(Z)V
.end method

.method public abstract onBtMainSettingChanged(Z)V
.end method

.method public abstract onBtScanningSettingChanged(Z)V
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 0

    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .locals 0

    return-void
.end method

.method public abstract onLocationSettingChanged(Z)V
.end method

.method public abstract onMicrophoneSettingChanged(Z)V
.end method

.method public abstract onWifiMainSettingChanged(Z)V
.end method

.method public abstract onWifiScanningSettingChanged(Z)V
.end method

.method public abstract onWifiSettingChanged(Z)V
.end method

.method public abstract queryNanoapps(I)I
.end method

.method public abstract registerCallback(ILcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;)V
.end method

.method public registerEndpointHub(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract registerExistingCallback(I)V
.end method

.method public abstract sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
.end method

.method public abstract sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
.end method

.method public abstract setTestMode(Z)Z
.end method

.method public abstract supportsAirplaneModeSettingNotifications()Z
.end method

.method public abstract supportsBtSettingNotifications()Z
.end method

.method public abstract supportsLocationSettingNotifications()Z
.end method

.method public abstract supportsMicrophoneSettingNotifications()Z
.end method

.method public abstract supportsWifiSettingNotifications()Z
.end method

.method public abstract unloadNanoapp(IIJ)I
.end method
