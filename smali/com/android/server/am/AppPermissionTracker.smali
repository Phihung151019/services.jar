.class public final Lcom/android/server/am/AppPermissionTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field public final mAppOpsCallbacks:Landroid/util/SparseArray;

.field public final mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

.field public volatile mLockedBootCompleted:Z

.field public final mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v7

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v8, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object v9, v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    iget-object v10, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    array-length v11, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_5

    aget v1, v7, v13

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    invoke-virtual {v8, v1, v4, v2, v3}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v19, v7

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v15, :cond_0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    array-length v5, v9

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v12, v9, v6

    move/from16 v16, v6

    new-instance v6, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move/from16 v17, v1

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-wide/from16 v18, v3

    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v6, v0, v1, v3, v4}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    iget-boolean v1, v6, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v6, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    if-eqz v1, :cond_3

    iget-object v12, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move v4, v5

    const-string v5, ""

    move-object/from16 v20, v6

    const/4 v6, 0x1

    move-object/from16 v21, v2

    const/16 v2, 0x10

    move-object/from16 v22, v20

    move-object/from16 v20, v3

    move/from16 v23, v16

    move/from16 v16, v4

    move-wide/from16 v3, v18

    move-object/from16 v19, v7

    move/from16 v18, v23

    move-object/from16 v7, v22

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    move-object/from16 v1, v20

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    move-object/from16 v21, v2

    move-wide/from16 v3, v18

    move-object/from16 v19, v7

    move/from16 v18, v16

    move/from16 v16, v5

    move-object v7, v6

    :goto_3
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v12

    goto :goto_5

    :goto_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object/from16 v21, v2

    move-wide/from16 v3, v18

    move-object/from16 v19, v7

    move/from16 v18, v16

    move/from16 v16, v5

    :goto_5
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    move/from16 v1, v17

    move-object/from16 v7, v19

    move-object/from16 v2, v21

    goto/16 :goto_2

    :cond_4
    move/from16 v17, v1

    move-object/from16 v19, v7

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    new-instance p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;

    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p0, p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    const-string/jumbo v0, "bg_permission_monitor_enabled"

    const/4 v1, 0x1

    invoke-direct {p2, p1, p0, v0, v1}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    sget-object p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    move-result-object p0

    iput-object p0, p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    iput-object p2, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "APP PERMISSIONS TRACKER:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object v3, v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    const-string v4, "  "

    invoke-static {v4, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "  "

    invoke-static {v5, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    array-length v6, v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_7

    aget-object v9, v3, v8

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    if-nez v10, :cond_1

    const/16 v10, 0x2b

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    :cond_1
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/16 v10, 0x3a

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(C)V

    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v12, 0x5b

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_6

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v7, v16

    :goto_2
    if-ltz v7, :cond_5

    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move-object/from16 v16, v4

    iget v4, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    move-object/from16 v19, v5

    iget-object v5, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v4, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v14, :cond_3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    iget v3, v3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v14, v17

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto :goto_2

    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto :goto_1

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(C)V

    monitor-exit v10

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v16

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    goto/16 :goto_0

    :goto_5
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    array-length v2, p2

    if-ge v10, v2, :cond_6

    aget-object v2, p2, v10

    iget-boolean v3, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v2, v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    if-eqz v2, :cond_1

    move v8, v4

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    if-eqz v8, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    move v4, v9

    :goto_3
    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, p2, v10

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_4

    :cond_4
    move v4, v9

    :goto_4
    if-eqz v4, :cond_5

    const-string v7, ""

    const/16 v4, 0x10

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    goto :goto_5

    :cond_5
    move-object v2, p0

    move v3, p1

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object p0, v2

    move p1, v3

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final onLockedBootCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public final onPermissionTrackerEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mPermissionManager:Landroid/permission/PermissionManager;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPermissionsChanged(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final stopWatchingMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
