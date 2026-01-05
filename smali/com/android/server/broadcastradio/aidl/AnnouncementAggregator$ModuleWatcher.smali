.class public final Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCloseHandle:Lcom/android/server/broadcastradio/aidl/RadioModule$3;

.field public mCurrentList:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onListUpdated(Ljava/util/List;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "BcRadioAidlSrv.AnnAggr"

    const-string/jumbo v2, "onListUpdate for %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string/jumbo v1, "active cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->this$0:Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "BcRadioAidlSrv.AnnAggr"

    const-string/jumbo v0, "onListUpdated()"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v0, :cond_2

    const-string p0, "BcRadioAidlSrv.AnnAggr"

    const-string v0, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mModuleWatchers:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;

    iget-object v3, v3, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator$ModuleWatcher;->mCurrentList:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {p0, v0}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    const-string v0, "BcRadioAidlSrv.AnnAggr"

    const-string/jumbo v2, "mListener.onListUpdated() failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
