.class public final Lcom/android/server/connectivity/PacProxyService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/connectivity/PacProxyService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/PacProxyService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onServiceDisconnected$com$android$server$connectivity$PacProxyService$3(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Lcom/android/net/IProxyCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p2, Lcom/android/server/connectivity/PacProxyService$3$1;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/PacProxyService$3$1;-><init>(Lcom/android/server/connectivity/PacProxyService$2;)V

    invoke-interface {p1, p2}, Lcom/android/net/IProxyCallback;->getProxyPort(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string p1, "Adding service com.android.net.IProxyService "

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string/jumbo v1, "PacProxyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    const-string/jumbo v1, "PacProxyService"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo p1, "com.android.net.IProxyService"

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, p2, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    if-nez p1, :cond_1

    const-string/jumbo p0, "PacProxyService"

    const-string/jumbo p1, "No proxy service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string/jumbo v1, "PacProxyService"

    if-nez p1, :cond_2

    const-string/jumbo p0, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-interface {p1, p2}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p0

    :try_start_4
    const-string/jumbo p1, "Unable to set PAC file"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    iget-object p1, p1, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$2;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
