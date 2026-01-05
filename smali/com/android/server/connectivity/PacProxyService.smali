.class public final Lcom/android/server/connectivity/PacProxyService;
.super Landroid/net/IPacProxyManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mBroadcastStateLock:Ljava/lang/Object;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public mConnection:Lcom/android/server/connectivity/PacProxyService$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentDelay:I

.field public mCurrentPac:Ljava/lang/String;

.field public volatile mHasDownloaded:Z

.field public volatile mHasSentBroadcast:Z

.field public mLastPort:I

.field public final mNetThreadHandler:Landroid/os/Handler;

.field public final mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

.field public final mPacRefreshIntent:Landroid/app/PendingIntent;

.field public volatile mPacUrl:Landroid/net/Uri;

.field public mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

.field public final mProxyLock:Ljava/lang/Object;

.field public mProxyService:Lcom/android/net/IProxyService;


# direct methods
.method public static -$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/IPacProxyInstalledListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v4, v5, v1}, Landroid/net/IPacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$smget(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    :goto_0
    const-wide/32 v2, 0x1312d00

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "PAC too big"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PAC too big: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unsupported URL connection type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect proxy type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/net/IPacProxyManager$Stub;-><init>()V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/connectivity/PacProxyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$1;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "android.pacproxyservice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacProxyService$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacProxyService;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addListener(Landroid/net/IPacProxyInstalledListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final bind()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string/jumbo p0, "PacProxyService"

    const-string/jumbo v0, "No context for binding"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.pacprocessor"

    const-string/jumbo v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacDownloader:Lcom/android/server/connectivity/PacProxyService$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/connectivity/PacProxyService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.proxyhandler"

    const-string/jumbo v1, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/connectivity/PacProxyService$2;

    const/4 v0, 0x1

    invoke-direct {v5, p0, v0}, Lcom/android/server/connectivity/PacProxyService$2;-><init>(Lcom/android/server/connectivity/PacProxyService;I)V

    iput-object v5, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/connectivity/PacProxyService;->mNetThreadHandler:Landroid/os/Handler;

    const v6, 0x40000005    # 2.0000012f

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    return-void
.end method

.method public final getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public final removeListener(Landroid/net/IPacProxyInstalledListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mBroadcastStateLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentDelay:I

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasSentBroadcast:Z

    iput-boolean p1, p0, Lcom/android/server/connectivity/PacProxyService;->mHasDownloaded:Z

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->bind()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mPacUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mCurrentPac:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mConnection:Lcom/android/server/connectivity/PacProxyService$2;

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyConnection:Lcom/android/server/connectivity/PacProxyService$2;

    :cond_3
    iput-object v1, p0, Lcom/android/server/connectivity/PacProxyService;->mProxyService:Lcom/android/net/IProxyService;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/PacProxyService;->mLastPort:I

    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final setDownloadIn(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "conn.pac_change_delay"

    const-string v2, "8 32 120 14400 43200"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pac_change_delay"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/PacProxyService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p1

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService;->mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
