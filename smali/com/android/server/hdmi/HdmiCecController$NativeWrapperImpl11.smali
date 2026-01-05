.class public final Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;


# instance fields
.field public mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

.field public mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

.field public final mLock:Ljava/lang/Object;

.field public mPhysicalAddress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    const v0, 0xffff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    return-void
.end method


# virtual methods
.method public final connectToHal()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/tv/cec/V1_1/IHdmiCec;->getService()Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    check-cast v1, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    const-wide/16 v3, 0x161

    invoke-virtual {v1, p0, v3, v4}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Couldn\'t link to death : "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1

    return v2

    :catch_1
    move-exception p0

    const-string v1, "Couldn\'t connect to cec@1.1"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final enableCec(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    return-void
.end method

.method public final enableSystemCecControl(Z)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    return-void
.end method

.method public final enableWakeupByOtp(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->nativeSetOption(IZ)V

    return-void
.end method

.method public final nativeAddLogicalAddress(I)I
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "android.hardware.tv.cec@1.1::IHdmiCec"

    invoke-static {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/HwParcel;

    move-result-object p1

    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v0, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v0}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v0}, Landroid/os/HwParcel;->readInt32()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/HwParcel;->release()V

    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->clearLogicalAddress()V
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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->enableAudioReturnChannel(IZ)V
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
    .locals 1

    const/4 p0, 0x0

    new-array p1, p0, [Ljava/lang/Object;

    const-string v0, "Failed to get HPD signal type: not supported by HAL."

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final nativeGetPhysicalAddress()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast v0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {v0, p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I
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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getPortInfo()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;

    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    iget v7, v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->portId:I

    iget v8, v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->type:I

    iget-short v9, v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->physicalAddress:S

    invoke-static {v9}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    iget-boolean v7, v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->cecSupported:Z

    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v6

    iget-boolean v5, v5, Landroid/hardware/tv/cec/V1_0/HdmiPortInfo;->arcSupported:Z

    invoke-virtual {v6, v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getVendorId()I

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
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->getCecVersion()I

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
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final nativeIsConnected(I)Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->isConnected(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to get connection info : "

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final nativeSendCecCommand(II[B)I
    .locals 4

    new-instance v0, Landroid/hardware/tv/cec/V1_1/CecMessage;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    iput v1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    iput p1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->initiator:I

    iput p2, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->destination:I

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p3

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    array-length p1, p3

    move p2, v1

    :goto_0
    if-ge p2, p1, :cond_0

    aget-byte v2, p3, p2

    iget-object v3, v0, Landroid/hardware/tv/cec/V1_1/CecMessage;->body:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->sendMessage_1_1(Landroid/hardware/tv/cec/V1_1/CecMessage;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to send CEC message : "

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x3

    return p0
.end method

.method public final nativeSetHpdSignalType(II)V
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Failed to set HPD signal type: not supported by HAL."

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nativeSetLanguage(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setLanguage(Ljava/lang/String;)V
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

.method public final nativeSetOption(IZ)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setOption(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Failed to set option : "

    invoke-static {p0, p2, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onValues(IS)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const p1, 0xffff

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mPhysicalAddress:I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final serviceDied(J)V
    .locals 2

    const-wide/16 v0, 0x161

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service died cookie : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "; reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->connectToHal()Z

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    :cond_0
    return-void
.end method

.method public final setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;->mHdmiCec:Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;I)V

    check-cast p0, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    invoke-virtual {p0, v0}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->setCallback_1_1(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Couldn\'t initialise tv.cec callback : "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
