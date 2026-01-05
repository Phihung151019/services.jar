.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/appop/AppOpsService$2;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v7, v2, Lcom/android/server/appop/AppOpsService$2;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7, v3, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object v2

    move v6, v0

    :goto_0
    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    iget-object v8, v7, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    add-int/2addr v6, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    move v6, v0

    :goto_1
    if-eqz v2, :cond_b

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v6, v3}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    move v8, v0

    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {v6, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v5, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/2addr v8, v1

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    array-length v8, v6

    move v9, v0

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v6, v9

    iget-object v11, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v11, v3, v10}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getForegroundOps(ILjava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    move v11, v0

    :goto_4
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v5, v12, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/2addr v11, v1

    goto :goto_4

    :cond_3
    add-int/2addr v9, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_5
    if-ltz v3, :cond_b

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    :goto_6
    move/from16 v16, v1

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v9, "default:0"

    invoke-interface {v6, v8, v13, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v6

    invoke-static {v13}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v8

    const/4 v14, 0x4

    if-eq v6, v8, :cond_7

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget v8, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    const-string/jumbo v9, "default:0"

    invoke-interface {v6, v8, v13, v9}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getUidMode(IILjava/lang/String;)I

    move-result v6

    if-ne v6, v14, :cond_7

    iget-object v12, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;

    invoke-direct {v6, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;-><init>(I)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v11, "default:0"

    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_7
    iget-object v6, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/util/ArraySet;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_7
    if-ltz v6, :cond_5

    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v8, v8, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_a

    iget-object v8, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_8
    if-ltz v8, :cond_a

    iget-object v9, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/AppOpsService$Op;

    if-nez v9, :cond_9

    :cond_8
    move/from16 v16, v1

    move v0, v6

    move v1, v8

    goto :goto_9

    :cond_9
    iget-object v10, v7, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    iget-object v11, v9, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    iget v12, v9, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v9, v9, Lcom/android/server/appop/AppOpsService$Op;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-interface {v10, v12, v9, v11}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->getPackageMode(IILjava/lang/String;)I

    move-result v9

    if-ne v9, v14, :cond_8

    iget-object v9, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v10, v0}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appop/AppOpsService$ModeCallback;

    move-object v12, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v16, v1

    iget-object v1, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v12

    const-string/jumbo v12, "default:0"

    move-object v14, v10

    move-object v10, v0

    move v0, v6

    move-object v6, v14

    move-object v14, v11

    move-object v11, v1

    move v1, v8

    move-object v8, v14

    move-object/from16 v14, v17

    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_9
    add-int/lit8 v8, v1, -0x1

    move v6, v0

    move/from16 v1, v16

    const/4 v0, 0x0

    const/4 v14, 0x4

    goto :goto_8

    :cond_a
    move/from16 v16, v1

    move v0, v6

    add-int/lit8 v6, v0, -0x1

    move/from16 v1, v16

    const/4 v0, 0x0

    const/4 v14, 0x4

    goto/16 :goto_7

    :goto_a
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v16

    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_b
    move/from16 v16, v1

    if-eqz v2, :cond_f

    iget-object v0, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_f

    iget-object v3, v2, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_e

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appop/AppOpsService$Op;

    const/4 v9, 0x0

    :goto_d
    iget-object v10, v8, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    iget-object v10, v8, Lcom/android/server/appop/AppOpsService$Op;->mDeviceAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_c

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AttributedOp;

    invoke-virtual {v12, v4}, Lcom/android/server/appop/AttributedOp;->onUidStateChanged(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_f
    monitor-exit v7

    return-void

    :goto_f
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
