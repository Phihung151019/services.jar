.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    sget v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->$r8$clinit:I

    const-string v0, "CocktailBarManagerServiceContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->notePauseComponent(Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    goto/16 :goto_c

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_2
    const-string p0, "CocktailBarManagerServiceImpl"

    const-string/jumbo p1, "notePauseComponent : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->enforceCocktailBarService()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->isNotEdgeRunnableId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_c

    :cond_4
    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->getImplForUser(I)Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mHost:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailHostInfo;->callbackHost:Lcom/samsung/android/cocktailbar/ICocktailHost;

    invoke-interface {v1, p1}, Lcom/samsung/android/cocktailbar/ICocktailHost;->noteResumeComponent(Landroid/content/ComponentName;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    :try_start_5
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    monitor-exit v0

    goto/16 :goto_c

    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_7
    :goto_5
    const-string p0, "CocktailBarManagerServiceImpl"

    const-string/jumbo p1, "noteResumeComponent : no active host"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v0, "onUnlockUser : CocktailBarServices="

    const-string/jumbo v3, "onUnlockUserImpl CocktailBarServices - "

    iget-object v4, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_6
    iget-object v5, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    const-string v3, "CocktailBarManagerServiceContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_6
    if-ge v0, v5, :cond_9

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v3, :cond_8

    iget-object v6, v3, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->mCocktailArr:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->ensureStateLoadedLocked()Z

    monitor-exit v6

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0

    :cond_8
    :goto_7
    add-int/2addr v0, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    goto/16 :goto_b

    :cond_9
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    iput v1, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mComponentsToHideEdge:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mContext:Landroid/content/Context;

    iput-object p0, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mListener:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$OnCocktailBarWatcherListener;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mActivityManager:Landroid/app/ActivityManager;

    const-class v4, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    iput-object v5, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mMetaDataHideEdgeService:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getCategoryFilter()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->getCategoryIds(Ljava/util/ArrayList;)I

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_a

    iput v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    iget v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    :cond_b
    iget v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mLevel:I

    if-lez v2, :cond_c

    iget-object v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    if-nez v2, :cond_c

    new-instance v2, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    invoke-direct {v2, v0}, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;-><init>(Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;)V

    iput-object v2, v0, Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;->mUsageStatsWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher$1;

    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4, v2}, Landroid/app/usage/UsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    :cond_c
    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mWatcher:Lcom/android/server/cocktailbar/watcher/CocktailBarUsageStateWatcher;

    :cond_d
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->bootCompleted()V

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_11

    const-string/jumbo v0, "ro.build.PDA"

    const-string/jumbo v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "CocktailBarManagerServiceContainer"

    if-eqz v2, :cond_e

    const-string/jumbo v0, "isPdaVersionChanged current_version is unknown"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_e
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "previous_version_pda"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v0, "isPdaVersionChanged previous_version is null"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_8
    const-wide/16 v4, 0x7530

    goto :goto_a

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "isPdaVersionChanged different version : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_9
    const-wide/32 v4, 0x1d4c0

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startEdgeApp with delays : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;-><init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :goto_b
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object p1

    const-string/jumbo v0, "startCocktailBarServiceWithCurrentUser"

    invoke-virtual {p1, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.app.launcher"

    const-string/jumbo v1, "com.samsung.app.honeyspace.edge.CocktailBarService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_b
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mIntent:Landroid/content/Intent;

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_c

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->getInstance()Lcom/android/server/cocktailbar/utils/CocktailBarHistory;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarHistory;->recordServiceProcess(Ljava/lang/String;)V

    goto :goto_c

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailPolicyManager:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;->findCocktailPolicy()Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->changeResumePackage(Ljava/lang/String;)V

    :cond_11
    :goto_c
    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$CocktailBarHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_12

    move v1, v2

    :cond_12
    invoke-static {p0, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->-$$Nest$mhandleChangeVisibleEdgeService(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
