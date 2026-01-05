.class public final Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mModules:Landroid/util/SparseArray;

.field public mNextModuleId:I

.field public final mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

.field public final mServiceNameToModuleIdMap:Ljava/util/Map;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BcRadioAidlSrv"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceNameToModuleIdMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mModules:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;-><init>(Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mNextModuleId:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserControllerImpl;

    sget-boolean p2, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->DEBUG:Z

    const-string v1, "BcRadioAidlSrv"

    if-eqz p2, :cond_0

    sget-object p2, Landroid/hardware/broadcastradio/IBroadcastRadio;->DESCRIPTOR:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "Initializing BroadcastRadioServiceImpl %s"

    invoke-static {v1, v2, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    move-object p2, p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl;->mServiceListener:Lcom/android/server/broadcastradio/aidl/BroadcastRadioServiceImpl$1;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v3, "failed to register for service notifications for service %s"

    invoke-static {v1, v2, v3, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
