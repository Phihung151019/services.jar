.class public final Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mServiceImpl:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;->SERVICE_NAMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;

    invoke-direct {p1, p0, v0}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;

    new-instance v2, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;

    invoke-direct {v2, p1, v0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;-><init>(Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;)V

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/IRadioServiceAidlImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "BcRadioSrvAidl"

    const-string v2, "Initialize BroadcastRadioServiceAidl(%s)"

    invoke-static {v0, v2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    return-void
.end method


# virtual methods
.method public final enforcePolicyAccess()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.ACCESS_BROADCAST_RADIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "ACCESS_BROADCAST_RADIO permission not granted"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/BroadcastRadioService;->mServiceImpl:Landroid/hardware/radio/IRadioService;

    invoke-interface {v0}, Landroid/hardware/radio/IRadioService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
