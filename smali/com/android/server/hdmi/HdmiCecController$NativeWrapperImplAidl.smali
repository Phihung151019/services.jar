.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

.field public mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    iget-object v0, v0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    check-cast v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    iget-object v0, v0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const-string v0, "HDMI Connection or CEC service died, reconnecting"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    :cond_0
    return-void
.end method

.method public final connectToHal()Z
    .locals 6

    const-string v0, "Couldn\'t link to death : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/default"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sget v4, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub;->$r8$clinit:I

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v5, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    if-eqz v5, :cond_1

    check-cast v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    const/4 v1, 0x0

    if-nez v2, :cond_2

    const-string p0, "Could not initialize HDMI CEC AIDL HAL"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    :try_start_0
    check-cast v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    iget-object v2, v2, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v5}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    sget v3, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub;->$r8$clinit:I

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_4

    instance-of v4, v3, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    goto :goto_2

    :cond_4
    new-instance v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_2
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    if-nez v4, :cond_5

    const-string p0, "Could not initialize HDMI Connection AIDL HAL"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    :try_start_1
    check-cast v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    iget-object v2, v4, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public final enableCec(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableCec(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableCec : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableSystemCecControl(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableSystemCecControl : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final enableWakeupByOtp(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableWakeupByOtp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed call to enableWakeupByOtp : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nativeAddLogicalAddress(I)I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    int-to-byte p1, p1

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->addLogicalAddress(B)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to add a logical address : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    return p0
.end method

.method public final nativeClearLogicalAddress()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->clearLogicalAddress()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to clear logical address : "

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nativeEnableAudioReturnChannel(IZ)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->enableAudioReturnChannel(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to enable/disable ARC : "

    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nativeGetHpdSignalType(I)I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->getHpdSignal(I)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Could not get HPD signal type for portId "

    const-string v1, ". Exception: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final nativeGetPhysicalAddress()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getPhysicalAddress()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get physical address : "

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const p0, 0xffff

    return p0
.end method

.method public final nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->getPortInfo()[Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;

    move-result-object p0

    array-length v1, p0

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, p0, v3

    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    iget v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->portId:I

    iget-byte v8, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->type:B

    iget v9, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->physicalAddress:I

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->cecSupported:Z

    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    iget-boolean v7, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->arcSupported:Z

    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    iget-boolean v5, v5, Landroid/hardware/tv/hdmi/connection/HdmiPortInfo;->eArcSupported:Z

    invoke-virtual {v6, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v1

    :goto_1
    const-string v1, "Failed to get port information : "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nativeGetVendorId()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getVendorId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get vendor id : "

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final nativeGetVersion()I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->getCecVersion()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to get cec version : "

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final nativeInit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final nativeIsConnected(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->isConnected(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Failed to get connection info : "

    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final nativeSendCecCommand(II[B)I
    .locals 1

    new-instance v0, Landroid/hardware/tv/hdmi/cec/CecMessage;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->initiator:B

    and-int/lit8 p1, p2, 0xf

    int-to-byte p1, p1

    iput-byte p1, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->destination:B

    iput-object p3, v0, Landroid/hardware/tv/hdmi/cec/CecMessage;->body:[B

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, v0}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->sendMessage(Landroid/hardware/tv/hdmi/cec/CecMessage;)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to send CEC message : "

    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    return p0
.end method

.method public final nativeSetHpdSignalType(II)V
    .locals 3

    const-string v0, " to "

    const-string v1, "Could not set HPD signal type for portId "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    int-to-byte v2, p1

    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-virtual {p0, v2, p2}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->setHpdSignal(BI)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v2, ". Exception: "

    invoke-static {p2, p1, v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, ". Error: "

    invoke-static {p2, p1, v1, v0, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final nativeSetLanguage(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->setLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Failed to set language : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiCec:Landroid/hardware/tv/hdmi/cec/IHdmiCec;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;

    invoke-direct {v2, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    check-cast v1, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;

    invoke-virtual {v1, v2}, Landroid/hardware/tv/hdmi/cec/IHdmiCec$Stub$Proxy;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Couldn\'t initialise tv.cec callback : "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;->mHdmiConnection:Landroid/hardware/tv/hdmi/connection/IHdmiConnection;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    check-cast p0, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;

    invoke-virtual {p0, v1}, Landroid/hardware/tv/hdmi/connection/IHdmiConnection$Stub$Proxy;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiConnectionCallbackAidl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Couldn\'t initialise tv.hdmi callback : "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
