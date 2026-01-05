.class public final Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBooleanMetaDataKeys:[Ljava/lang/String;

.field public final mBooleanMetaDataMap:Ljava/util/Map;

.field public final mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

.field public mLoaded:Z

.field public final mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

.field public final mStringMetaDataKeys:[Ljava/lang/String;

.field public final mStringMetaDataMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public static -$$Nest$mhasBooleanMetaData(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "getApplicationInfo failed: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-wide/16 v6, 0x80

    invoke-interface {v1, p1, v6, v7, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_1
    :try_start_2
    const-string/jumbo p2, "MetaDataCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_3
    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    monitor-enter v2

    :try_start_3
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v2

    :goto_4
    return v3

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public static -$$Nest$mscheduleLoad(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerServiceExt;->mBgHandler:Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    const-string/jumbo p1, "com.samsung.android.persistent.downloadable"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    const-string/jumbo p1, "com.samsung.android.dex.kill_process_timeout"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoaded:Z

    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$2;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/android/server/am/ActivityManagerServiceExt$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mLoadRunnable:Lcom/android/server/am/ActivityManagerServiceExt$2;

    new-instance p1, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mPackageReceiver:Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector$2;

    return-void
.end method


# virtual methods
.method public final loadMetaDataOnceLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 9

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mBooleanMetaDataMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-enter v7

    if-eqz v5, :cond_3

    :try_start_0
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_9

    aget-object v3, v0, v2

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_5
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_8

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v4, :cond_7

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$MetaDataCollector;->mStringMetaDataMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_7
    return-void
.end method
