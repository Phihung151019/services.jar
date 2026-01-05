.class public final Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ENABLE_SUSPICIOUS_CHECK:Z

.field public static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

.field public static final LOCAL_SYNC_DELAY:J

.field public static final SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

.field public static sInstance:Lcom/android/server/content/SyncManager;

.field public static final sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

.field public static final sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;


# instance fields
.field public final mAccountManager:Landroid/accounts/AccountManager;

.field public final mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

.field public final mAccountsLock:Ljava/lang/Object;

.field public final mAccountsUpdatedReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mActiveSyncContexts:Ljava/util/ArrayList;

.field public final mAmi:Landroid/app/ActivityManagerInternal;

.field public final mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field public final mConnectivityIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mConstants:Lcom/android/server/content/SyncManagerConstants;

.field public final mContext:Landroid/content/Context;

.field public volatile mDataConnectionIsConnected:Z

.field public mJobScheduler:Landroid/app/job/JobScheduler;

.field public final mLogger:Lcom/android/server/content/SyncLogger;

.field public volatile mNextJobId:I

.field public final mNotificationMgr:Landroid/app/NotificationManager;

.field public final mOtherIntentsReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/server/content/SyncManager$PackageMonitorImpl;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public volatile mProvisioned:Z

.field public volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field public final mShutdownIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field public final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field public volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field public final mUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mUserIntentReceiver:Lcom/android/server/content/SyncManager$2;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mcontainsAccountAndUser(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget v2, v1, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_0

    iget-object v1, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static -$$Nest$mincreaseBackoffSetting(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    iget-object v4, v3, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v3, v3, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    monitor-exit v4

    mul-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    iget-object v4, v2, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v2, v2, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    long-to-double v4, v2

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v4, v6

    double-to-long v4, v4

    new-instance v6, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Random;-><init>(J)V

    sub-long/2addr v4, v2

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-gtz v7, :cond_2

    long-to-int v4, v4

    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    iget-object v5, v4, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget v4, v4, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    move-wide v11, v4

    goto :goto_2

    :cond_4
    move-wide v11, v2

    :goto_2
    add-long v9, v0, v11

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    invoke-virtual {p0, v8}, Lcom/android/server/content/SyncManager;->rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public static -$$Nest$misSyncStillActiveH(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static -$$Nest$mremoveStaleAccounts(Lcom/android/server/content/SyncManager;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->removeStaleAccounts([Landroid/accounts/Account;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static -$$Nest$msendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    invoke-direct {v1, p2, p1}, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;-><init>(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z

    const-string/jumbo v0, "sync.local_sync_delay"

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const-wide/16 v0, 0x15

    invoke-static {v0, v1}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v0

    sput-object v0, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/AccountAndUser;

    sput-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    sget-object v2, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    iput v7, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/content/SyncManager$2;

    const/4 v2, 0x2

    invoke-direct {v8, v0, v2}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    iput-object v8, v0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Lcom/android/server/content/SyncManager$2;

    new-instance v2, Lcom/android/server/content/SyncManager$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Lcom/android/server/content/SyncManager$2;

    new-instance v3, Lcom/android/server/content/SyncManager$2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    iput-object v3, v0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Lcom/android/server/content/SyncManager$2;

    new-instance v9, Lcom/android/server/content/SyncManager$2;

    const/4 v4, 0x3

    invoke-direct {v9, v0, v4}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    iput-object v9, v0, Lcom/android/server/content/SyncManager;->mOtherIntentsReceiver:Lcom/android/server/content/SyncManager$2;

    new-instance v4, Lcom/android/server/content/SyncManager$2;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v5}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;I)V

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Lcom/android/server/content/SyncManager$2;

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    const-class v5, Lcom/android/server/content/SyncManager;

    monitor-enter v5

    :try_start_0
    sget-object v6, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v6, :cond_0

    sput-object v0, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v10, "SyncManager instantiated multiple times"

    invoke-static {v6, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v10, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v10, v1, v6, v5}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    sput-object v10, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    :goto_1
    sget-object v5, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v5, :cond_10

    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iput-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v5, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v6, v10, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    if-nez v6, :cond_2

    iput-object v5, v10, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncManager$7;

    :cond_2
    new-instance v5, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    sget-object v6, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

    if-nez v6, :cond_3

    sput-object v5, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncManager$7;

    :cond_3
    new-instance v5, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v6, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    if-nez v6, :cond_4

    iput-object v5, v10, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncManager$7;

    :cond_4
    new-instance v5, Landroid/content/SyncAdaptersCache;

    invoke-direct {v5, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v11, "SyncManager"

    const/16 v12, 0xa

    invoke-direct {v6, v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v11, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v11, v0, v6}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v11, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    new-instance v6, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v6, v0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v5, v6, v11}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    new-instance v5, Lcom/android/server/content/SyncManagerConstants;

    invoke-direct {v5, v1}, Lcom/android/server/content/SyncManagerConstants;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    invoke-static {v1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object v2, v4

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/content/SyncManager$PackageMonitorImpl;

    invoke-direct {v2}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mPackageMonitor:Lcom/android/server/content/SyncManager$PackageMonitorImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.TIME_SET"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-nez p2, :cond_5

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_2

    :cond_5
    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    :goto_2
    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "account"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManager;

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iput-object v5, v0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    new-instance v5, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManagerInternal;->addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V

    const-string/jumbo v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/content/SyncManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v4, "SyncLoopWakeLock"

    const/4 v12, 0x1

    invoke-virtual {v2, v12, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v12

    goto :goto_3

    :cond_6
    move v2, v7

    :goto_3
    iput-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-nez v2, :cond_9

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Lcom/android/server/content/SyncManager$11;

    invoke-direct {v4, v0, v2}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;Landroid/content/ContentResolver;)V

    monitor-enter v11

    :try_start_1
    const-string/jumbo v5, "device_provisioned"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v5, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v13, "device_provisioned"

    invoke-static {v6, v13, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v12

    goto :goto_4

    :cond_7
    move v6, v7

    :goto_4
    or-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    iget-boolean v5, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v5, :cond_8

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_8
    :goto_5
    monitor-exit v11

    goto :goto_7

    :goto_6
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_9
    :goto_7
    if-nez p2, :cond_a

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_a
    iget-boolean v1, v10, Lcom/android/server/content/SyncStorageEngine;->mGrantSyncAdaptersAccountAccess:Z

    if-nez v1, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v9}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v7

    :goto_8
    if-ge v3, v2, :cond_f

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v6, v5}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v9, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v11, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v11, Landroid/content/SyncAdapterType;

    iget-object v11, v11, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    array-length v11, v10

    move v13, v7

    :goto_9
    if-ge v13, v11, :cond_c

    aget-object v14, v10, v13

    invoke-virtual {v0, v14, v9, v5}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v15

    if-nez v15, :cond_d

    iget-object v15, v0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    const-string/jumbo v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    move-object/from16 p1, v1

    iget v1, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v15, v14, v7, v1, v12}, Landroid/accounts/AccountManager;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    goto :goto_a

    :cond_d
    move-object/from16 p1, v1

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x0

    goto :goto_9

    :cond_e
    move-object/from16 p1, v1

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    :goto_b
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_c
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .locals 7

    const-string/jumbo v0, "Success ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    const-string v1, " avg="

    const-string v2, " for "

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-static {p0, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v5, v0

    div-long/2addr v3, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_0
    const-string v0, ") Failure ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-static {p0, v2, v3}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget p1, p1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_1
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static dumpTimeSec(Ljava/io/PrintWriter;J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    const-wide/16 v0, 0xa

    rem-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    const/16 p1, 0x73

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public static formatDurationHMS(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-long p1, p1

    :cond_0
    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    div-long/2addr p1, v2

    rem-long v6, p1, v2

    div-long/2addr p1, v2

    const-wide/16 v2, 0x18

    rem-long v8, p1, v2

    div-long/2addr p1, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x68

    invoke-static {p0, v8, v9, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x6d

    invoke-static {p0, v6, v7, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    const/16 p2, 0x73

    invoke-static {p0, v4, v5, p2, p1}, Lcom/android/server/content/SyncManager;->printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "0s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "N/A"

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.content.SyncAdapter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p1, "android.intent.extra.client_label"

    const v1, 0x1040f89

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo p1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string/jumbo p1, "android.intent.extra.client_intent"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/content/SyncManager;
    .locals 3

    const-class v0, Lcom/android/server/content/SyncManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SyncManager"

    const-string/jumbo v2, "sInstance == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/content/SyncManager;->sInstance:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getJobStats()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JobStats: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "(JobSchedulerInternal==null)"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/server/job/JobSchedulerInternal;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printTwoDigitNumber(Ljava/lang/StringBuilder;JCZ)Z
    .locals 2

    if-nez p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p4, :cond_1

    const-wide/16 v0, 0xa

    cmp-long p4, p1, v0

    if-gez p4, :cond_1

    const/16 p4, 0x30

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public static readyToSync(I)Z
    .locals 5

    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_1

    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mProvisioned:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v2

    if-eqz p0, :cond_1

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    return v1
.end method

.method public static syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 3

    if-ne p0, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-le v1, v2, :cond_3

    move-object p0, p1

    :cond_3
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p2, :cond_13

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v2, "expedited"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "schedule_as_expedited_job"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "ignore_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_9
    const-string/jumbo v2, "do_not_retry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    const-string/jumbo v2, "force"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    const-string/jumbo v2, "upload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    const-string/jumbo v2, "deletions_override"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_1

    :cond_d
    const-string/jumbo v2, "discard_deletions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_1

    :cond_e
    const-string/jumbo v2, "expected_upload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    const-string/jumbo v2, "expected_download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_1

    :cond_10
    const-string/jumbo v2, "sync_priority"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v2, "allow_metered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v2, "initialize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_1

    :cond_13
    :goto_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/high16 p3, 0x100000

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final cancelJob(Lcom/android/server/content/SyncOperation;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p0, "SyncManager"

    const-string/jumbo p1, "Null sync operation detected."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method public final cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/content/SyncOperation;

    iget-boolean v5, v4, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-static {v5, p2, v2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager;->setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V

    :cond_2
    return-void
.end method

.method public final computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, -0x1

    if-eqz p1, :cond_3

    :try_start_0
    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-nez v3, :cond_2

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    iget v2, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :cond_4
    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v5, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v2, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v1

    goto :goto_1

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/server/content/SyncManager;->shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account sync is disabled for account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :cond_6
    :goto_2
    move v2, v3

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_3
    goto :goto_2

    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v1, v0, v4, v5, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_b
    :goto_4
    if-nez v2, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p3, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object p3

    if-nez p3, :cond_d

    goto :goto_5

    :cond_d
    iget v0, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p5, :cond_e

    invoke-virtual {p0, p2, v1}, Lcom/android/server/content/SyncManager;->isPackageStopped(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    :goto_5
    return v3

    :cond_e
    iget-object p2, p0, Lcom/android/server/content/SyncManager;->mAmi:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2, v0, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    const-string/jumbo p0, "SyncManager"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Not scheduling job "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -- package not allowed to start"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_f
    if-eqz p4, :cond_10

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/content/SyncManager;->canAccessAccount(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_10

    const-string/jumbo p0, "SyncManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Access to "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " denied for package "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in UID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {p2, p1, p0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x3

    return p0

    :cond_10
    return v2

    :goto_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Z)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/content/SyncAdapterStateFetcher;

    invoke-direct {v3}, Lcom/android/server/content/SyncAdapterStateFetcher;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data connected: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "Battery saver: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "Background network restriction: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v5

    :goto_1
    const/4 v9, 0x2

    if-eq v5, v7, :cond_4

    if-eq v5, v9, :cond_3

    const/4 v10, 0x3

    if-eq v5, v10, :cond_2

    const-string/jumbo v10, "Unknown("

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v5, " enabled"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v5, " whitelisted"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v5, " disabled"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    const-string v5, "Auto sync: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "u"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v10}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v11, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v10, "Storage low: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    const-string v5, "Clock valid: "

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-boolean v5, v5, Lcom/android/server/content/SyncStorageEngine;->mIsClockValid:Z

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Z)V

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    const-string v10, "Accounts: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    if-eq v5, v10, :cond_8

    array-length v10, v5

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5

    :cond_8
    const-string/jumbo v10, "not known yet"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-string/jumbo v10, "Now: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v10, "Uptime: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4, v12, v13}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v10, "Time spent syncing: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    monitor-enter v10

    :try_start_0
    iget-boolean v14, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v14, :cond_9

    iget-wide v14, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    move-wide/from16 v17, v12

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :cond_9
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v7, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    move-wide/from16 v17, v12

    iget-wide v11, v10, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v14, v11

    add-long/2addr v14, v7

    monitor-exit v10

    :goto_6
    invoke-static {v4, v14, v15}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ", sync "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v7, v7, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-boolean v7, v7, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-eqz v7, :cond_a

    const-string v7, ""

    goto :goto_7

    :cond_a
    const-string/jumbo v7, "not "

    :goto_7
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "in progress"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Active Syncs: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    :goto_8
    if-ge v11, v10, :cond_b

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-wide v13, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v13, v17, v13

    const-string v15, "  "

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v4, v13, v14}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v13, " - "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v12, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v12, v7, v6, v3, v6}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "Pending Syncs: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    move v12, v11

    :cond_c
    :goto_9
    if-ge v12, v10, :cond_d

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/content/SyncOperation;

    iget-boolean v13, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v13, :cond_c

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(I)V

    sget-object v10, Lcom/android/server/content/SyncManager;->sOpRuntimeComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v6

    :cond_e
    :goto_a
    if-ge v10, v7, :cond_f

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/content/SyncOperation;

    iget-boolean v12, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v12, :cond_e

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6, v3, v6}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "Periodic Syncs: "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v11, v6

    move v12, v11

    :cond_10
    :goto_b
    if-ge v12, v10, :cond_11

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/content/SyncOperation;

    iget-boolean v13, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v13, :cond_10

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(I)V

    sget-object v10, Lcom/android/server/content/SyncManager;->sOpDumpComparator:Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda0;

    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v10, v6

    :goto_c
    if-ge v10, v7, :cond_13

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/content/SyncOperation;

    iget-boolean v12, v11, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v12, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v6, v3, v6}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    goto :goto_c

    :cond_13
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "Sync Status"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v7, v6}, Lcom/android/server/content/SyncStorageEngine;->resetTodayStats(Z)V

    array-length v7, v5

    move v8, v6

    :goto_d
    if-ge v8, v7, :cond_20

    aget-object v10, v5, v8

    iget-object v11, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    monitor-enter v11

    :try_start_2
    iget-object v12, v0, Lcom/android/server/content/SyncManager;->mUnlockedUsers:Landroid/util/SparseBooleanArray;

    iget v13, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v12, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v11, "Account %s u%d %s%s\n"

    iget-object v13, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v13, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget v14, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v12, :cond_14

    const-string v12, ""

    goto :goto_e

    :cond_14
    const-string v12, " (locked)"

    :goto_e
    filled-new-array {v13, v14, v15, v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v11, "======================================================================="

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/content/SyncManager$PrintTable;

    invoke-direct {v11}, Lcom/android/server/content/SyncManager$PrintTable;-><init>()V

    const-string v19, "Authority"

    const-string/jumbo v20, "Syncable"

    const-string v21, "Enabled"

    const-string/jumbo v22, "Stats"

    const-string/jumbo v23, "Loc"

    const-string/jumbo v24, "Poll"

    const-string/jumbo v25, "Per"

    const-string v26, "Feed"

    const-string/jumbo v27, "User"

    const-string/jumbo v28, "Othr"

    const-string/jumbo v29, "Tot"

    const-string v30, "Fail"

    const-string v31, "Can"

    const-string/jumbo v32, "Time"

    const-string v33, "Last Sync"

    const-string v34, "Backoff"

    filled-new-array/range {v19 .. v34}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v6, v6, v12}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v14, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v13, v14}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v13, Lcom/android/server/content/SyncManager$12;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v6

    :goto_f
    if-ge v14, v13, :cond_1a

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move/from16 v16, v9

    iget-object v9, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v9, Landroid/content/SyncAdapterType;

    iget-object v9, v9, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v6, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    move/from16 v9, v16

    :goto_10
    const/4 v6, 0x0

    goto :goto_f

    :cond_15
    iget-object v6, v11, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v20, v5

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move/from16 v21, v7

    iget-object v7, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v15, Landroid/content/SyncAdapterType;

    iget-object v15, v15, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move/from16 v22, v8

    iget v8, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v5, v7, v15, v8}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    iget-object v7, v9, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    const/4 v8, 0x1

    const/4 v15, -0x1

    :try_start_3
    invoke-virtual {v9, v5, v15, v8}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    iget v8, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v9, v8}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    new-instance v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v9, v5}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v5, Landroid/content/SyncStatusInfo;

    invoke-direct {v5, v8}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v15, 0x32

    if-le v9, v15, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v15

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_16
    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v15, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    filled-new-array {v8, v9, v15}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v11, v6, v9, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    new-instance v8, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;

    invoke-direct {v8, v4, v11}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;Lcom/android/server/content/SyncManager$PrintTable;)V

    const-string/jumbo v9, "Total"

    iget-object v15, v5, Landroid/content/SyncStatusInfo;->totalStats:Landroid/content/SyncStatusInfo$Stats;

    move-object/from16 v23, v4

    new-instance v4, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v24, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v15, v4, v10}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v4, "Today"

    iget-object v9, v5, Landroid/content/SyncStatusInfo;->todayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v10, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v15, v6, 0x1

    move-object/from16 v25, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v4, v9, v10, v12}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v4, "Yestr"

    iget-object v9, v5, Landroid/content/SyncStatusInfo;->yesterdayStats:Landroid/content/SyncStatusInfo$Stats;

    new-instance v10, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;

    invoke-direct {v10, v0}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/content/SyncManager;)V

    add-int/lit8 v12, v6, 0x2

    move/from16 v26, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v4, v9, v10, v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda8;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v4, v8, v17

    if-lez v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "D: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    sub-long v8, v8, v17

    const-wide/16 v27, 0x3e8

    div-long v8, v8, v27

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v8, 0xf

    invoke-virtual {v11, v6, v8, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v4, v9, v17

    if-lez v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "B: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    sub-long v9, v9, v17

    div-long v9, v9, v27

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v15, v8, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    div-long v9, v9, v27

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v12, v8, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_17
    iget-wide v7, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    const/16 v7, 0xe

    if-eqz v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v13, v5, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    aget-object v8, v8, v13

    const-string v13, " SUCCESS"

    invoke-static {v4, v8, v13}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v6, v7, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move-wide/from16 v27, v9

    iget-wide v9, v5, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    invoke-static {v9, v10}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v15, v7, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move v6, v12

    goto :goto_11

    :cond_18
    move-wide/from16 v27, v9

    :goto_11
    iget-wide v8, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v4, v8, v27

    if-eqz v4, :cond_19

    add-int/lit8 v4, v6, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v10, v5, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    aget-object v9, v9, v10

    const-string v10, " FAILURE"

    invoke-static {v8, v9, v10}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v6, v7, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v5, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    invoke-static {v8, v9}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v4, v7, v8}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    iget-object v4, v5, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v6, v7, v4}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_19
    move/from16 v9, v16

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v4, v23

    move-object/from16 v10, v24

    move-object/from16 v12, v25

    move/from16 v13, v26

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1a
    move-object/from16 v23, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v16, v9

    iget v4, v11, Lcom/android/server/content/SyncManager$PrintTable;->mCols:I

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_12
    if-ge v9, v4, :cond_1d

    iget-object v7, v11, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_1b
    :goto_13
    if-ge v12, v8, :cond_1c

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, [Ljava/lang/Object;

    aget-object v13, v13, v9

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v10, :cond_1b

    move v10, v13

    goto :goto_13

    :cond_1c
    add-int/2addr v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%%-%ds"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_1d
    add-int/lit8 v4, v4, -0x1

    const-string v7, "%s"

    aput-object v7, v5, v4

    iget-object v7, v11, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    move v6, v9

    :goto_14
    if-ge v6, v4, :cond_1e

    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1e
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object v4, v11, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    :goto_15
    if-ge v6, v4, :cond_1f

    iget-object v7, v11, Lcom/android/server/content/SyncManager$PrintTable;->mTable:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/android/server/content/SyncManager$PrintTable;->printRow(Ljava/io/PrintWriter;[Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1f
    add-int/lit8 v8, v22, 0x1

    move v6, v9

    move/from16 v9, v16

    move-object/from16 v5, v20

    move/from16 v7, v21

    move-object/from16 v4, v23

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_20
    move v9, v6

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "Per Adapter History"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v9

    :goto_16
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " u"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " ["

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "]"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "    Per source last syncs:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v9

    :goto_17
    sget-object v7, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    const/4 v8, 0x6

    if-ge v6, v8, :cond_21

    const-string v8, "      "

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%8s"

    aget-object v7, v7, v6

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  Success: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    iget-object v7, v7, Landroid/content/SyncStatusInfo;->perSourceLastSuccessTimes:[J

    aget-wide v7, v7, v6

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  Failure: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    iget-object v7, v7, Landroid/content/SyncStatusInfo;->perSourceLastFailureTimes:[J

    aget-wide v7, v7, v6

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_21
    const-string v6, "    Last syncs:"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v9

    :goto_18
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    invoke-virtual {v7}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v7

    if-ge v6, v7, :cond_22

    const-string v7, "      "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    invoke-virtual {v7, v6}, Landroid/content/SyncStatusInfo;->getEventTime(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(C)V

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/content/SyncStatusInfo;

    invoke-virtual {v7, v6}, Landroid/content/SyncStatusInfo;->getEvent(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_22
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncStatusInfo;

    invoke-virtual {v5}, Landroid/content/SyncStatusInfo;->getEventCount()I

    move-result v5

    if-nez v5, :cond_23

    const-string v5, "      N/A"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_16

    :cond_24
    iget-object v3, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    const-string v4, ""

    iget-object v5, v3, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "SyncManager Config:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mInitialSyncRetryTimeInSeconds="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/content/SyncManagerConstants;->mInitialSyncRetryTimeInSeconds:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mRetryTimeIncreaseFactor="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/content/SyncManagerConstants;->mRetryTimeIncreaseFactor:F

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mMaxSyncRetryTimeInSeconds="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/content/SyncManagerConstants;->mMaxSyncRetryTimeInSeconds:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mMaxRetriesWithAppStandbyExemption="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/content/SyncManagerConstants;->mMaxRetriesWithAppStandbyExemption:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  mKeyExemptionTempWhitelistDurationInSeconds="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync adapters for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_25
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_19

    :cond_26
    if-eqz p2, :cond_27

    const-string v1, "Detailed Sync History"

    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_27
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :goto_1b
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method public final dumpSyncHistory(Ljava/io/PrintWriter;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/16 v18, 0x1

    iget v3, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-virtual {v6, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v19, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v7

    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v19

    goto :goto_2

    :cond_1
    move/from16 v20, v7

    const-string/jumbo v6, "Unknown"

    const-string/jumbo v3, "Unknown"

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v14, :cond_2

    move v14, v7

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v15, :cond_3

    move v15, v7

    :cond_3
    move/from16 v19, v8

    iget-wide v7, v9, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    add-long/2addr v10, v7

    const-wide/16 v21, 0x1

    add-long v12, v12, v21

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    if-nez v9, :cond_4

    new-instance v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v21, v7

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    iput-object v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v7

    :goto_3
    iget-wide v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    add-long v6, v6, v21

    iput-wide v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget-object v6, v9, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    if-nez v7, :cond_5

    new-instance v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v3, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-wide v8, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    add-long v8, v8, v21

    iput-wide v8, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget v3, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v8, v19

    move/from16 v7, v20

    goto/16 :goto_1

    :cond_6
    const/16 v18, 0x1

    cmp-long v3, v10, v16

    const-wide/16 v6, 0x3e8

    if-lez v3, :cond_8

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    div-long v19, v10, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/android/server/content/SyncManager$12;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v2, v15, 0x3

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v8, v2, 0x1b

    new-array v8, v8, [C

    const/16 v9, 0x2d

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([CC)V

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    const-string v8, "  %%-%ds: %%-9s  %%-11s\n"

    add-int/lit8 v19, v2, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-wide/from16 v20, v6

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "    %%-%ds:   %%-9s  %%-11s\n"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_9

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v22, v3

    move-object/from16 v3, v19

    check-cast v3, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    move/from16 v19, v7

    iget-object v7, v3, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-wide/from16 v23, v10

    iget-wide v10, v3, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move/from16 v25, v8

    iget v8, v3, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v26, v8

    const-string v8, "%ds/%d%%"

    div-long v27, v10, v20

    move-wide/from16 v29, v10

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v27, 0x64

    mul-long v29, v29, v27

    div-long v29, v29, v23

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "%d/%d%%"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-wide/from16 v29, v12

    mul-int/lit8 v12, v26, 0x64

    int-to-long v12, v12

    div-long v12, v12, v29

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v10, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v7, Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/android/server/content/SyncManager$12;

    const/4 v8, 0x2

    invoke-direct {v3, v8}, Lcom/android/server/content/SyncManager$12;-><init>(I)V

    invoke-static {v7, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v3, :cond_7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lcom/android/server/content/SyncManager$AccountSyncStats;

    iget-wide v11, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget v13, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v26, v3

    const-string v3, "%ds/%d%%"

    div-long v31, v11, v20

    move-object/from16 v33, v6

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    mul-long v11, v11, v27

    div-long v11, v11, v23

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v6, v11}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "%d/%d%%"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    mul-int/lit8 v13, v13, 0x64

    int-to-long v12, v13

    div-long v12, v12, v29

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v10, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    filled-new-array {v10, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move/from16 v3, v26

    move-object/from16 v6, v33

    goto :goto_5

    :cond_7
    move-object/from16 v33, v6

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v7, v19

    move-object/from16 v3, v22

    move-wide/from16 v10, v23

    move/from16 v8, v25

    move-wide/from16 v12, v29

    goto/16 :goto_4

    :cond_8
    move-wide/from16 v20, v6

    :cond_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v2, "Recent Sync History"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  %-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s  %-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s %s\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_11

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " u"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_a
    const-string/jumbo v10, "Unknown"

    const-string/jumbo v9, "Unknown"

    :goto_7
    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    iget-wide v13, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    const-string v15, "/"

    invoke-static {v10, v15, v9}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    if-nez v19, :cond_b

    const-string v19, ""

    :goto_8
    move-wide/from16 v28, v13

    move-object/from16 v0, v19

    move/from16 v19, v7

    goto :goto_9

    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v22, v13

    div-long v22, v22, v20

    const-wide/16 v24, 0x3c

    cmp-long v19, v22, v24

    if-gez v19, :cond_c

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    goto :goto_8

    :cond_c
    const-wide/16 v26, 0xe10

    cmp-long v19, v22, v26

    if-gez v19, :cond_d

    move/from16 v19, v7

    const-string v7, "%02d:%02d"

    div-long v26, v22, v24

    move-wide/from16 v28, v13

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    rem-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_9

    :cond_d
    move/from16 v19, v7

    move-wide/from16 v28, v13

    rem-long v13, v22, v26

    const-string v7, "%02d:%02d:%02d"

    div-long v22, v22, v26

    move-wide/from16 v26, v13

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    div-long v22, v26, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    rem-long v22, v26, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v13, v14, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "  #%-3d: %s %8s  %5.1fs  %8s"

    add-int/lit8 v13, v19, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {v28 .. v29}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v15

    sget-object v19, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v22, v3

    iget v3, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v3, v19, v3

    long-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v14, v15, v3, v11, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    invoke-static {v6, v0}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v3, v18

    if-ne v0, v3, :cond_e

    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    cmp-long v7, v9, v16

    if-nez v7, :cond_e

    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    cmp-long v7, v9, v16

    if-eqz v7, :cond_f

    :cond_e
    const-string v7, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v9, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v0, v9, v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_f
    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string/jumbo v7, "success"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "    mesg=%s\n"

    iget-object v7, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_10
    move-object/from16 v0, p0

    move/from16 v18, v3

    move v7, v13

    move-object/from16 v3, v22

    goto/16 :goto_6

    :cond_11
    move/from16 v3, v18

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "Recent Sync History Extras"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "(SERVER is now split up to FEED and OTHER)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v4, :cond_15

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget-object v7, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    move-object/from16 v8, p0

    goto :goto_c

    :cond_13
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v10, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    invoke-virtual {v9, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    if-eqz v9, :cond_14

    iget-object v10, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " u"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_14
    const-string/jumbo v10, "Unknown"

    const-string/jumbo v9, "Unknown"

    :goto_b
    iget-wide v11, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    const-string v13, "  #%-3d: %s %8s "

    add-int/lit8 v14, v0, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v11, v12}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v6, v6, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    aget-object v6, v12, v6

    filled-new-array {v14, v11, v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v13, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    filled-new-array {v9, v10, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    move-object/from16 v8, p0

    goto :goto_d

    :cond_16
    move-object v8, v0

    const/4 v3, 0x1

    :goto_d
    iget-object v0, v8, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_1
    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v4, v0

    new-array v5, v4, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    aget-object v0, v5, v6

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "Sync Statistics"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Today:  "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v0, v5, v6

    invoke-static {v1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    aget-object v0, v5, v6

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    :goto_e
    const/4 v2, 0x6

    if-gt v3, v2, :cond_19

    if-ge v3, v4, :cond_19

    aget-object v6, v5, v3

    if-nez v6, :cond_17

    goto :goto_f

    :cond_17
    iget v7, v6, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v7, v0, v7

    if-le v7, v2, :cond_18

    goto :goto_f

    :cond_18
    const-string v2, "  Day-"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_19
    :goto_f
    move v6, v0

    :cond_1a
    :goto_10
    if-ge v3, v4, :cond_1f

    add-int/lit8 v6, v6, -0x7

    const/4 v7, 0x0

    :goto_11
    if-ge v3, v4, :cond_1e

    aget-object v8, v5, v3

    if-nez v8, :cond_1b

    move v3, v4

    goto :goto_12

    :cond_1b
    iget v9, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v9, v6, v9

    if-le v9, v2, :cond_1c

    goto :goto_12

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    if-nez v7, :cond_1d

    new-instance v7, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v7, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    :cond_1d
    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v9, v11

    iput-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v10, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v9, v10

    iput v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v11, v8, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v9, v11

    iput-wide v9, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_11

    :cond_1e
    :goto_12
    if-eqz v7, :cond_1a

    const-string v8, "  Week-"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v8, v0, v6

    div-int/lit8 v8, v8, 0x7

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_10

    :cond_1f
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_13
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getAccountManagerInternal()Landroid/accounts/AccountManagerInternal;
    .locals 0

    const-class p0, Landroid/accounts/AccountManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManagerInternal;

    return-object p0
.end method

.method public final getAllPendingSyncs()Ljava/util/List;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "SyncManager"

    const-string/jumbo v4, "Non-sync job inside of SyncManager\'s namespace"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/content/SyncOperation;

    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v6, Landroid/content/PeriodicSync;

    iget-object v7, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v8, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v9, Landroid/os/Bundle;

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    invoke-direct {v9, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-wide v4, v3, Lcom/android/server/content/SyncOperation;->periodMillis:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    iget-wide v12, v3, Lcom/android/server/content/SyncOperation;->flexMillis:J

    div-long/2addr v12, v10

    move-wide v10, v4

    invoke-direct/range {v6 .. v13}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSyncAdapterTypes(II)[Landroid/content/SyncAdapterType;
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p2}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/content/SyncAdapterType;

    invoke-virtual {v3}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1, p2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/content/SyncAdapterType;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/SyncAdapterType;

    return-object p0
.end method

.method public final isPackageStopped(ILjava/lang/String;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lcom/android/server/pm/Computer;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "Couldn\'t determine stopped state for unknown package: "

    const-string/jumbo p1, "SyncManager"

    invoke-static {p0, p2, p1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final migrateSyncJobNamespaceIfNeeded()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    const-wide/32 v2, 0x927c0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    move v7, v5

    :goto_0
    if-ltz v6, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v10, v9, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v11, v9, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v9}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v10, v11, v9}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/job/JobScheduler;->cancel(I)V

    move v7, v4

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-boolean v1, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    if-ne v1, v7, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v7, v0, Lcom/android/server/content/SyncStorageEngine;->mIsJobNamespaceMigrated:Z

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/job/JobSchedulerInternal;->getSystemScheduledOwnJobs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    move v6, v5

    :goto_2
    if-ltz v1, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v9, v8, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v10, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v8}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v9, v10, v8}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move v6, v4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    if-ne v0, v6, :cond_7

    :goto_3
    return-void

    :cond_7
    iput-boolean v6, p0, Lcom/android/server/content/SyncStorageEngine;->mIsJobAttributionFixed:Z

    iget-object p0, p0, Lcom/android/server/content/SyncStorageEngine;->mHandler:Lcom/android/server/content/SyncStorageEngine$MyHandler;

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V
    .locals 1

    new-instance v0, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;-><init>(Lcom/android/server/content/SyncOperation;J)V

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final rescheduleSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/content/SyncOperation;

    iget-boolean v4, v3, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    .locals 14

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    return-void
.end method

.method public final scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v6, p2

    move-object/from16 v14, p4

    if-nez p5, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object/from16 v15, p5

    :goto_0
    invoke-virtual {v15}, Landroid/os/Bundle;->size()I

    iget-object v2, v1, Lcom/android/server/content/SyncManager;->mAccountsLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    if-eqz v0, :cond_4

    if-eq v6, v9, :cond_1

    :try_start_0
    new-array v3, v8, [Landroid/accounts/AccountAndUser;

    new-instance v4, Landroid/accounts/AccountAndUser;

    invoke-direct {v4, v0, v6}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v4, v3, v7

    :goto_1
    move-object v10, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_1
    iget-object v3, v1, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    array-length v4, v3

    const/4 v5, 0x0

    move v10, v7

    :goto_2
    if-ge v10, v4, :cond_3

    aget-object v11, v3, v10

    iget-object v12, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v0, v12}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-class v12, Landroid/accounts/AccountAndUser;

    invoke-static {v12, v5, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/AccountAndUser;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move-object v10, v5

    goto :goto_3

    :cond_4
    iget-object v3, v1, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    goto :goto_1

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_14

    :cond_5
    const-string/jumbo v0, "upload"

    invoke-virtual {v15, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v0, "force"

    invoke-virtual {v15, v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v2, "ignore_backoff"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "ignore_settings"

    invoke-virtual {v15, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    const-string/jumbo v2, "ignore_settings"

    invoke-virtual {v15, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    const/4 v11, 0x3

    if-eqz v16, :cond_7

    move/from16 v24, v8

    goto :goto_5

    :cond_7
    if-eqz v0, :cond_8

    move/from16 v24, v11

    goto :goto_5

    :cond_8
    if-nez v14, :cond_9

    const/4 v0, 0x2

    :goto_4
    move/from16 v24, v0

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "feed"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_4

    :cond_a
    move/from16 v24, v7

    :goto_5
    array-length v12, v10

    move v13, v7

    :goto_6
    if-ge v13, v12, :cond_1d

    aget-object v0, v10, v13

    if-ltz v6, :cond_c

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    if-ltz v2, :cond_c

    if-eq v6, v2, :cond_c

    :cond_b
    move/from16 v2, p6

    move-object v0, v1

    move/from16 v37, v7

    move-object/from16 v38, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move-object v11, v15

    move-wide/from16 v14, p7

    goto/16 :goto_13

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v3, v4}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v4, Landroid/content/SyncAdapterType;

    iget-object v4, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    if-eqz v3, :cond_e

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    xor-int/lit8 v4, p9, 0x1

    const/4 v5, 0x1

    move-object v7, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;ZZ)I

    move-result v1

    if-nez v1, :cond_f

    :goto_9
    move-object v1, v0

    move-object v0, v7

    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v4, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v4

    iget v5, v7, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_9

    :cond_10
    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v1, v11, :cond_12

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v6, v2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(ILjava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_11

    goto :goto_9

    :cond_11
    iget-object v4, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    iget-object v5, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    new-instance v14, Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;

    move-wide/from16 v8, p7

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v38, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move-object/from16 p5, v15

    const/16 v37, 0x0

    move/from16 v4, p3

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object v15, v2

    move-object v5, v3

    move v3, v6

    move-object v2, v7

    move/from16 v7, p6

    move-object v6, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move v13, v3

    move v6, v7

    move-object v7, v2

    invoke-direct {v14, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v1, v42

    move-object/from16 v2, v43

    invoke-virtual {v1, v2, v15, v13, v14}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    :goto_b
    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object v1, v0

    move-object v0, v7

    move v6, v13

    :goto_c
    move/from16 v7, v37

    move-object/from16 v10, v38

    move/from16 v11, v39

    move/from16 v12, v40

    move/from16 v13, v41

    const/4 v8, 0x1

    const/4 v9, -0x1

    goto/16 :goto_8

    :cond_12
    move-object/from16 v38, v10

    move/from16 v39, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move-object/from16 p5, v15

    const/16 v37, 0x0

    move v13, v6

    move/from16 v6, p6

    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v27

    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v5

    if-nez p9, :cond_13

    if-gez v1, :cond_13

    if-eqz v5, :cond_13

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v7, Landroid/accounts/AccountAndUser;->userId:I

    const/16 v34, 0x1

    move/from16 v35, p11

    move/from16 v36, p12

    move-object/from16 v30, v1

    move-object/from16 v33, v3

    move-object/from16 v31, v5

    move/from16 v32, v8

    invoke-virtual/range {v30 .. v36}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V

    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    move v8, v1

    :goto_d
    const/4 v1, -0x2

    if-eq v6, v1, :cond_14

    if-eq v6, v8, :cond_14

    :goto_e
    goto :goto_b

    :cond_14
    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    invoke-virtual {v5}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz v16, :cond_15

    goto :goto_e

    :cond_15
    if-ltz v8, :cond_17

    if-nez v17, :cond_17

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v9, v7, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v5, v9}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v9, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v10, v7, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v5, v9, v3, v10}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_f

    :cond_16
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_b

    :cond_17
    :goto_f
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v7, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v10, v7, Landroid/accounts/AccountAndUser;->userId:I

    invoke-direct {v5, v9, v3, v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    iget-object v9, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v9, v5}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/4 v14, -0x1

    if-ne v8, v14, :cond_1a

    if-eqz p9, :cond_19

    new-instance v5, Landroid/os/Bundle;

    move-object/from16 v15, p5

    invoke-direct {v5, v15}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget v4, v7, Landroid/accounts/AccountAndUser;->userId:I

    new-instance v0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object v13, v1

    move-object v14, v2

    move-object v2, v7

    move-object/from16 v1, p0

    move-wide/from16 v7, p7

    move v15, v4

    move-object v4, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v12}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move v2, v6

    move-wide v5, v7

    new-instance v4, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {v4, v14, v1}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;-><init>(Landroid/content/pm/RegisteredServicesCache$ServiceInfo;Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;)V

    iget-object v1, v14, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v13, v1, v15}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    sget-object v7, Lcom/android/server/content/SyncManager;->SYNC_ADAPTER_CONNECTION_FLAGS:Landroid/content/Context$BindServiceFlags;

    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v13, v1, v4, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;

    invoke-direct {v7, v13, v4}, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10

    :cond_18
    invoke-virtual {v4}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onReady()V

    :goto_10
    move-object/from16 v11, p5

    move-object v1, v3

    move-wide v14, v5

    goto/16 :goto_12

    :cond_19
    move-object/from16 v25, v3

    move v2, v6

    move-object v3, v7

    move-wide/from16 v5, p7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "initialize"

    const/4 v14, 0x1

    invoke-virtual {v1, v7, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v18, Lcom/android/server/content/SyncOperation;

    iget-object v7, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v8, v3, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v23, p3

    move/from16 v28, p10

    move-object/from16 v26, v1

    move/from16 v21, v4

    move-object/from16 v19, v7

    move/from16 v20, v8

    invoke-direct/range {v18 .. v28}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    goto :goto_10

    :cond_1a
    move-object/from16 v25, v3

    move/from16 v21, v4

    move v2, v6

    move-object v3, v7

    const/4 v14, 0x1

    move-wide/from16 v5, p7

    if-eq v2, v1, :cond_1c

    if-ne v2, v8, :cond_1b

    goto :goto_11

    :cond_1b
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_10

    :cond_1c
    :goto_11
    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/content/SyncOperation;

    iget-object v4, v3, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v5, v3, Landroid/accounts/AccountAndUser;->userId:I

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move/from16 v8, p3

    move-object/from16 v11, p5

    move-wide/from16 v14, p7

    move/from16 v13, p10

    move/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v12, v27

    invoke-direct/range {v3 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-virtual {v0, v3, v14, v15}, Lcom/android/server/content/SyncManager;->postScheduleSyncMessage(Lcom/android/server/content/SyncOperation;J)V

    :goto_12
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move/from16 v6, p2

    move-object/from16 v14, p4

    move-object v15, v11

    goto/16 :goto_c

    :goto_13
    add-int/lit8 v13, v41, 0x1

    move/from16 v6, p2

    move-object/from16 v14, p4

    move-object v1, v0

    move-object v15, v11

    move/from16 v7, v37

    move-object/from16 v10, v38

    move/from16 v11, v39

    move/from16 v12, v40

    const/4 v8, 0x1

    const/4 v9, -0x1

    goto/16 :goto_6

    :cond_1d
    :goto_14
    return-void

    :goto_15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method public final scheduleSyncOperationH(Lcom/android/server/content/SyncOperation;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const-string/jumbo v0, "SyncManager"

    const-string v1, "Can\'t schedule null sync operation."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "ignore_backoff"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v5, 0x0

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v7, -0x1

    if-nez v2, :cond_2

    const-string/jumbo v2, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Couldn\'t find backoff values for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-nez v10, :cond_1

    const-string/jumbo v10, "[null]"

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toSafeString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/Pair;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_3

    iput-boolean v3, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v7, v11, v7

    if-nez v7, :cond_4

    move-wide v7, v5

    goto :goto_2

    :cond_4
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v7, v9

    :goto_2
    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v11, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v11}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J

    move-result-wide v11

    cmp-long v2, v11, v9

    if-lez v2, :cond_5

    sub-long/2addr v11, v9

    goto :goto_3

    :cond_5
    move-wide v11, v5

    :goto_3
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide/from16 v9, p2

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_4

    :cond_6
    move-wide/from16 v9, p2

    move-wide v7, v9

    :goto_4
    cmp-long v2, v7, v5

    if-gez v2, :cond_7

    move-wide v7, v5

    goto :goto_5

    :cond_7
    if-lez v2, :cond_8

    iput-boolean v3, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    :cond_8
    :goto_5
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v4

    :cond_9
    if-ge v10, v9, :cond_a

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v11, v11, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_15

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v11, v1

    move v10, v4

    move v12, v10

    :goto_6
    if-ge v12, v9, :cond_e

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/content/SyncOperation;

    iget-boolean v14, v13, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v14, :cond_b

    goto :goto_6

    :cond_b
    iget-object v14, v13, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v15, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-wide v14, v11, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    move-wide/from16 v16, v5

    iget-wide v5, v13, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    cmp-long v5, v14, v5

    if-lez v5, :cond_c

    move-object v11, v13

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    move-wide/from16 v16, v5

    :goto_7
    move-wide/from16 v5, v16

    goto :goto_6

    :cond_e
    move-wide/from16 v16, v5

    if-le v10, v3, :cond_10

    const-string/jumbo v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "duplicates found when scheduling a sync operation: owningUid="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; owningPackage="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; source="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; adapter="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v9, :cond_f

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    goto :goto_8

    :cond_f
    const-string/jumbo v9, "unknown"

    :goto_8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eq v1, v11, :cond_11

    cmp-long v5, v7, v16

    if-nez v5, :cond_11

    iget v5, v11, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    iget v6, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ge v5, v6, :cond_11

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v11, v1

    goto :goto_9

    :cond_11
    move v5, v4

    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v4

    :cond_12
    :goto_a
    if-ge v9, v6, :cond_14

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/content/SyncOperation;

    iget-boolean v12, v10, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v12, :cond_13

    goto :goto_a

    :cond_13
    iget-object v12, v10, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    if-eq v10, v11, :cond_12

    iget v12, v10, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v0, v10}, Lcom/android/server/content/SyncManager;->cancelJob(Lcom/android/server/content/SyncOperation;)V

    goto :goto_a

    :cond_14
    if-eq v11, v1, :cond_15

    goto/16 :goto_15

    :cond_15
    if-lez v5, :cond_17

    iput v5, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    goto :goto_b

    :cond_16
    move-wide/from16 v16, v5

    :cond_17
    :goto_b
    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1c

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    :goto_c
    iget v5, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v9, v4

    :goto_d
    if-ge v9, v6, :cond_19

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobInfo;

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getId()I

    move-result v10

    if-ne v10, v5, :cond_18

    goto :goto_f

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_19
    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v4

    :goto_e
    if-ge v9, v6, :cond_1b

    iget-object v10, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v10, v10, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v10, v10, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v10, v5, :cond_1a

    :goto_f
    iget v5, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    goto :goto_c

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1b
    iget v2, v0, Lcom/android/server/content/SyncManager;->mNextJobId:I

    iput v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->getJobBias()I

    move-result v2

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v6, "allow_metered"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_1d

    move v5, v6

    goto :goto_10

    :cond_1d
    move v5, v3

    :goto_10
    iget v9, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v9, :cond_1e

    const/16 v9, 0x8

    goto :goto_11

    :cond_1e
    move v9, v4

    :goto_11
    new-instance v10, Landroid/app/job/JobInfo$Builder;

    iget v11, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/server/content/SyncJobService;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v10, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/job/JobInfo$Builder;->setBias(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/app/job/JobInfo$Builder;->setFlags(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v5, :cond_1f

    iget-wide v7, v1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v9, v1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    goto :goto_12

    :cond_1f
    cmp-long v5, v7, v16

    if-lez v5, :cond_20

    invoke-virtual {v2, v7, v8}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    :cond_20
    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v7, v3}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    :goto_12
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "require_charging"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    :cond_21
    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "schedule_as_expedited_job"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_22

    iget-boolean v5, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    if-nez v5, :cond_22

    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    :cond_22
    iget v5, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-ne v5, v6, :cond_23

    const-class v5, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/DeviceIdleInternal;

    if-eqz v6, :cond_23

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/content/SyncManager;->mConstants:Lcom/android/server/content/SyncManagerConstants;

    iget-object v7, v5, Lcom/android/server/content/SyncManagerConstants;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v5, v5, Lcom/android/server/content/SyncManagerConstants;->mKeyExemptionTempWhitelistDurationInSeconds:I

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v9, v5

    iget v5, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-string/jumbo v15, "sync by top app"

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v7, 0x3e8

    const/16 v14, 0x132

    invoke-interface/range {v6 .. v15}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V

    goto :goto_13

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_23
    :goto_13
    const-class v5, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v5, :cond_25

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget v8, v1, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    if-eqz v8, :cond_24

    move v8, v3

    goto :goto_14

    :cond_24
    move v8, v4

    :goto_14
    check-cast v5, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    :cond_25
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    iget-object v6, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_26

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isExpedited()Z

    move-result v5

    if-eqz v5, :cond_26

    iput-boolean v3, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->toJobInfoExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->verifyJobScheduler()V

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/job/JobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v6

    :cond_26
    if-nez v6, :cond_27

    const-string/jumbo v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to schedule job for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_15
    return-void
.end method

.method public final setAuthorityPendingState(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->getAllPendingSyncs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/content/SyncOperation;

    iget-boolean v6, v5, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v6, :cond_0

    iget-object v5, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v4, p1, p0}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void

    :cond_1
    invoke-virtual {v4, p1, v2}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    return-void
.end method

.method public shouldDisableSyncForUser(Landroid/content/pm/UserInfo;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mAppCloningDeviceConfigHelper:Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;

    invoke-virtual {v1}, Lcom/android/internal/config/appcloning/AppCloningDeviceConfigHelper;->getEnableAppCloningBuildingBlocks()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, p2

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Trying to fetch user properties for non-existing/partial user "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :goto_0
    if-nez p0, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method public final updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .locals 7

    new-instance v0, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateRunningAccounts(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized verifyJobScheduler()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    const-string/jumbo v3, "SyncManager"

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->migrateSyncJobNamespaceIfNeeded()V

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-boolean v7, v6, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v6, v6, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/android/server/content/SyncStorageEngine;->markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "Non-sync job inside of SyncManager namespace"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Loaded persisted syncs: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " periodic syncs, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " oneshot syncs, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total system server jobs, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/content/SyncManager;->getJobStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mLogger:Lcom/android/server/content/SyncLogger;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v3, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sget-boolean v3, Lcom/android/server/content/SyncManager;->ENABLE_SUSPICIOUS_CHECK:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v4, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x6

    if-lt v3, v4, :cond_4

    :try_start_5
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device booted with no persisted periodic syncs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :cond_4
    :goto_1
    :try_start_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :goto_3
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method
