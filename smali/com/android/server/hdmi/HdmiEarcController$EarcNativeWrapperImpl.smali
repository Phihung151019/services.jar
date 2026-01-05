.class public final Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

.field public mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    iget-object v0, v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V

    :cond_0
    return-void
.end method

.method public final connectToHal()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/tv/hdmi/earc/IEArc;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v2, Landroid/hardware/tv/hdmi/earc/IEArc$Stub;->$r8$clinit:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/hardware/tv/hdmi/earc/IEArc;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    check-cast v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    iget-object v0, v0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Couldn\'t link callback object: "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final nativeGetLastReportedAudioCapabilities(I)[B
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->getLastReportedAudioCapabilities(I)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not read last reported audio capabilities. Exception: "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nativeGetState(I)B
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->getState(I)B

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not get eARC state. Exception: "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public final nativeInit()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->connectToHal()Z

    move-result p0

    return p0
.end method

.method public final nativeIsEarcEnabled()Z
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->isEArcEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Could not read if eARC is enabled. Exception: "

    invoke-static {p0, v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final nativeSetCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarcCallback:Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->setCallback(Lcom/android/server/hdmi/HdmiEarcController$EarcAidlCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Could not set callback. Exception: "

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final nativeSetEarcEnabled(Z)V
    .locals 2

    const-string v0, "Could not set eARC enabled to "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapperImpl;->mEarc:Landroid/hardware/tv/hdmi/earc/IEArc;

    check-cast p0, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/hardware/tv/hdmi/earc/IEArc$Stub$Proxy;->setEArcEnabled(Z)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ":. Exception: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ". Error: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
