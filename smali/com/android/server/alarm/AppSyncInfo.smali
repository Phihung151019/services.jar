.class public final Lcom/android/server/alarm/AppSyncInfo;
.super Lcom/android/server/alarm/AppSyncWrapper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field public static EXP_MIN_INEXACT_WINDOW:J = 0x493e0L

.field public static SUSPICIOUS_TIME_THRESHOLD:J = 0x2710L


# instance fields
.field public final boot_filter:Landroid/content/IntentFilter;

.field public final mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

.field public final mAccountsPackages:Ljava/util/ArrayList;

.field public final mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

.field public final mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

.field public final mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

.field public final mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

.field public mCharging:Z

.field public final mContext:Landroid/content/Context;

.field public final mCscPackages:Ljava/util/ArrayList;

.field public mFilter:Landroid/content/IntentFilter;

.field public final mLockAllowlistFromSCPM:Ljava/lang/Object;

.field public final mLockBlocklistFromSCPM:Ljava/lang/Object;

.field public final mLockExt:Ljava/lang/Object;

.field public final mLockSuspiciousTagSet:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

.field public final mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

.field public final mPermanentAllowlistPackages:Ljava/util/ArrayList;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public mScreenOn:Z

.field public mSuspiciousTagSet:Ljava/util/Set;

.field public final mSuspiciousTagSetFromApi:Ljava/util/Set;

.field public final mSuspiciousTagSetFromSCPM:Ljava/util/Set;

.field public final mTargetPackages:Ljava/util/ArrayList;

.field public final preloadedPackages:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mupdateSuspiciousPolicy(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "data4"

    const-string/jumbo v6, "data5"

    const-string/jumbo v1, "item"

    const-string/jumbo v2, "data1"

    const-string/jumbo v3, "data2"

    const-string/jumbo v4, "data3"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content://com.samsung.android.sm.policy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "policy_item"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "AppsyncPolicy"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v6, v1, v2

    const/4 v3, 0x1

    aget-object v7, v1, v3

    const/4 v3, 0x2

    aget-object v8, v1, v3

    const/4 v3, 0x3

    aget-object v9, v1, v3

    const/4 v3, 0x4

    aget-object v10, v1, v3

    const/4 v3, 0x5

    aget-object v11, v1, v3

    const-string/jumbo v12, "category"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v7, "com.samsung.android.sm.policy"

    invoke-virtual {v3, v7, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    const-wide/16 v12, 0x2710

    if-eqz v3, :cond_1a

    const-string v3, "CAT_SUSP_MILLIS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "category = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-wide/16 v14, -0x1

    if-nez v3, :cond_0

    :goto_0
    move-wide/from16 v16, v14

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "item"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-wide/from16 v16, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :goto_1
    const-string v3, "CAT_WIN_MILLIS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "category = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "item"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :goto_2
    const-string v3, "CAT_SUSP_PKGS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "category = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v7, 0x6

    const/16 v18, 0x0

    if-nez v3, :cond_6

    move-object/from16 v2, v18

    goto :goto_6

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_7

    aget-object v2, v1, v9

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    :try_start_2
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-object/from16 v2, v18

    :goto_4
    if-eqz v2, :cond_a

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    const/4 v7, -0x1

    invoke-static {v7, v2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x6

    goto :goto_3

    :cond_b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v2, v8

    :goto_6
    const-string v3, "CAT_ALLOW_PKGS"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "category = ?"

    const/4 v9, 0x0

    const/4 v3, 0x6

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_c

    move-object/from16 v10, v18

    const-wide/32 v19, 0x493e0

    goto :goto_a

    :cond_c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v3, :cond_d

    const-wide/32 v19, 0x493e0

    aget-object v10, v1, v9

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_e

    goto :goto_9

    :cond_e
    :try_start_3
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-object/from16 v10, v18

    :goto_8
    if-eqz v10, :cond_10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_11
    const-wide/32 v19, 0x493e0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v8

    :goto_a
    const-string v7, "CAT_BLOCK_PKGS"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v7, "category = ?"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_12

    move-object/from16 v5, v18

    goto :goto_e

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_13

    aget-object v7, v1, v6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_14

    goto :goto_d

    :cond_14
    :try_start_4
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-object/from16 v7, v18

    :goto_c
    if-eqz v7, :cond_16

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_17
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_e
    const-wide/16 v3, 0x0

    cmp-long v1, v16, v3

    if-gez v1, :cond_18

    goto :goto_f

    :cond_18
    move-wide/from16 v12, v16

    :goto_f
    sput-wide v12, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long v1, v14, v3

    if-gez v1, :cond_19

    move-wide/from16 v16, v19

    :cond_19
    sput-wide v16, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v3, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    iget-object v3, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-static {v10, v1}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lcom/android/server/alarm/AppSyncInfo;->addCollection(Ljava/util/Collection;Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :cond_1a
    const-wide/32 v19, 0x493e0

    sput-wide v12, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    sput-wide v19, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    iget-object v1, v0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, v0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncInfo;->updateSuspiciousTags()V

    return-void

    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockExt:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountsPackages:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    new-instance v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-direct {v5}, Lcom/android/server/alarm/AppSyncInfo$PackageList;-><init>()V

    iput-object v5, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockAllowlistFromSCPM:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockBlocklistFromSCPM:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    new-instance v7, Lcom/android/server/alarm/AppSyncInfo$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;I)V

    iget-object v9, p0, Lcom/android/server/alarm/AppSyncInfo;->mFilter:Landroid/content/IntentFilter;

    const/4 v10, 0x4

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    invoke-direct {v8, p0}, Lcom/android/server/alarm/AppSyncInfo$AccountListener;-><init>(Lcom/android/server/alarm/AppSyncInfo;)V

    iput-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mAccountListener:Lcom/android/server/alarm/AppSyncInfo$AccountListener;

    new-instance v8, Lcom/android/server/alarm/AppSyncInfo$1;

    invoke-direct {v8, p0, p1}, Lcom/android/server/alarm/AppSyncInfo$1;-><init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, v2, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, v3, Lcom/android/server/alarm/AppSyncInfo$PackageList;->mRegExpList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo p1, "com.sec.spp.push"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.sec.chaton"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.facebook.katana"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.twitter.android"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.facebook.orca"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.kakao.talk"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.google.android.apps.plus"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.mobilesrepublic.appygeek"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "mnn.Android"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "com.google.android.apps.maps"

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSyncBlockList()V

    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->loadAppSync3PlusBlockList()V

    const-string/jumbo p1, "com.tencent.mobileqq"

    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo p1, "com.sohu.inputmethod.sogou"

    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo p1, "com.eg.android.AlipayGphone"

    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo p1, "com.alibaba.android.rimet"

    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    const-string/jumbo p1, "com.baidu.map.location"

    invoke-virtual {v5, p1}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v7

    :cond_0
    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v3, v2}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromConfig3P:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v7

    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v4, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->add(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.location"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v7

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mPermanentAllowlistPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v7

    :goto_3
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v7, p1, :cond_6

    const-string p1, "AppSyncInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<TargetPackages> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mBootIntentReceiver:Lcom/android/server/alarm/AppSyncInfo$1;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->boot_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v1, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.services"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.katana"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.orca"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.pages.app"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.appmanager"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.facebook.system"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.whatsapp"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.instagram.android"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.skype.raider"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo v1, "com.microsoft.skydrive"

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    const-string/jumbo p1, "com.samsung.android.opencalendar"

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static addCollection(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static getPackageTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "<AppSyncInfo>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCharging: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mCharging:Z

    const-string/jumbo v3, "mScreenOn: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mScreenOn:Z

    const-string/jumbo v3, "SUSP_THRE: "

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    const-string v4, "INEXACT_WIN: "

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  <AppSync3 Allowlist>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "   (AppSync) "

    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "   (AppSync) ---------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 TargetList>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3 Blocklist>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  <AppSync3p Blocklist>"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {p0}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getWindowLength()J
    .locals 2

    sget-wide v0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    return-wide v0
.end method

.method public final isAdjustableAlarm(IIJJJLjava/lang/String;)Z
    .locals 12

    move-wide/from16 v0, p7

    move-object/from16 v2, p9

    sget-wide v3, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-lez v3, :cond_10

    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    iget-object v7, p0, Lcom/android/server/alarm/AppSyncInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto/16 :goto_8

    :cond_1
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v3, v7

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v8, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistAppSync3P:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v8, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_8

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    goto/16 :goto_8

    :cond_5
    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const-class v8, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-virtual {v8, v3, v2, v9, v10}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v8, 0xa

    if-gt v3, v8, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackages:Lcom/android/server/alarm/AppSyncInfo$PackageList;

    invoke-virtual {v8, v3}, Lcom/android/server/alarm/AppSyncInfo$PackageList;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mAllowlistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mBlocklistPackagesFromSCPM:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->preloadedPackages:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo;->mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_8
    :goto_2
    if-gt p1, v7, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    goto :goto_3

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    :goto_3
    sub-long v8, p3, v8

    sget-wide v10, Lcom/android/server/alarm/AppSyncInfo;->SUSPICIOUS_TIME_THRESHOLD:J

    cmp-long p1, v8, v10

    if-ltz p1, :cond_a

    move p0, v7

    goto :goto_7

    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    if-eqz p0, :cond_d

    invoke-static {p1, v2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lcom/android/server/alarm/AppSyncInfo;->getPackageTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-enter p2

    :try_start_2
    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move p0, v4

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_c
    :goto_4
    move p0, v7

    :goto_5
    monitor-exit p2

    goto :goto_7

    :goto_6
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    move p0, v4

    :goto_7
    if-eqz p0, :cond_10

    cmp-long p0, p5, v5

    if-ltz p0, :cond_e

    sget-wide p1, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    cmp-long p1, p5, p1

    if-ltz p1, :cond_f

    :cond_e
    if-gez p0, :cond_10

    cmp-long p0, v0, v5

    if-lez p0, :cond_10

    long-to-double p0, v0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    mul-double/2addr p0, v0

    sget-wide v0, Lcom/android/server/alarm/AppSyncInfo;->EXP_MIN_INEXACT_WINDOW:J

    long-to-double v0, v0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_10

    :cond_f
    return v7

    :catch_1
    :cond_10
    :goto_8
    return v4
.end method

.method public final updateSuspiciousTags()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromSCPM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromSCPM:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSetFromApi:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSetFromApi:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo;->mLockSuspiciousTagSet:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo;->mSuspiciousTagSet:Ljava/util/Set;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
