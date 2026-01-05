.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v3, p0

    iget v3, v3, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda17;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/server/appop/AppOpsService;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/String;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v5, p4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v5, p5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter v4

    :try_start_0
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-eqz v7, :cond_0

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move-object v8, v0

    :goto_0
    iget-object v7, v4, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-eqz v7, :cond_2

    if-nez v8, :cond_1

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    :cond_1
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_2
    move-object v13, v8

    if-eqz v13, :cond_3

    iget-object v7, v4, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz v7, :cond_3

    iget-object v8, v4, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v7}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v7

    const-wide/32 v8, 0x402000

    invoke-virtual {v7, v6, v8, v9, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/appop/AppOpsService;->getOpsLocked(ILjava/lang/String;Ljava/lang/String;ZLandroid/app/AppOpsManager$RestrictionBypass;Z)Lcom/android/server/appop/AppOpsService$Ops;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v7, v11, v5, v10}, Lcom/android/server/appop/AppOpsService;->getOpLocked(Lcom/android/server/appop/AppOpsService$Ops;IIZ)Lcom/android/server/appop/AppOpsService$Op;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget v7, v0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    invoke-static {v7}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v7

    if-ne v12, v7, :cond_5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/appop/AppOpsService;->pruneOpLocked(Lcom/android/server/appop/AppOpsService$Op;ILjava/lang/String;)V

    :cond_5
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->scheduleFastWriteLocked()V

    const/4 v0, 0x2

    if-eq v12, v0, :cond_7

    if-ne v12, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v4, v11, v5, v1}, Lcom/android/server/appop/AppOpsService;->updateStartedOpModeForUidForDefaultDeviceLocked(IIZ)V

    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_8

    const/4 v0, -0x1

    if-eq v5, v0, :cond_8

    iget-object v0, v4, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    move v1, v5

    move-object v5, v4

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v10, "default:0"

    move-object v7, v3

    move-object v9, v6

    move-object v6, v13

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    return-void

    :goto_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    move-object/from16 v6, p1

    check-cast v6, Lcom/android/server/appop/AppOpsService;

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

    move-object/from16 v11, p5

    check-cast v11, Ljava/lang/String;

    sget-boolean v7, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    monitor-enter v6

    :try_start_2
    iget-object v8, v6, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v9

    move v10, v1

    :goto_3
    if-ge v10, v9, :cond_b

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/appop/AppOpsService$ModeCallback;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_9

    iget v13, v12, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v13, v2

    if-nez v13, :cond_9

    goto :goto_5

    :cond_9
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v13, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-nez v0, :cond_a

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_a
    :goto_4
    invoke-virtual {v0, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/2addr v10, v2

    goto :goto_3

    :cond_b
    array-length v8, v7

    move v9, v1

    :goto_6
    if-ge v9, v8, :cond_11

    aget-object v10, v7, v9

    iget-object v12, v6, Lcom/android/server/appop/AppOpsService;->mPackageModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    if-eqz v12, :cond_10

    if-nez v0, :cond_c

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :cond_c
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    move v14, v1

    :goto_7
    if-ge v14, v13, :cond_10

    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appop/AppOpsService$ModeCallback;

    if-eqz v5, :cond_d

    move/from16 v16, v2

    iget v2, v15, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_e

    goto :goto_8

    :cond_d
    move/from16 v16, v2

    :cond_e
    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_f

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto :goto_7

    :cond_10
    move/from16 v16, v2

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    goto :goto_6

    :cond_11
    move/from16 v16, v2

    if-eqz v0, :cond_12

    iget-object v2, v6, Lcom/android/server/appop/AppOpsService;->mIgnoredCallback:Lcom/android/internal/app/IAppOpsCallback;

    if-eqz v2, :cond_12

    iget-object v5, v6, Lcom/android/server/appop/AppOpsService;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-interface {v2}, Lcom/android/internal/app/IAppOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    move v2, v1

    :goto_9
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_16

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/appop/AppOpsService$ModeCallback;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/util/ArraySet;

    if-nez v12, :cond_14

    iget-object v12, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    :cond_14
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v13

    move v14, v1

    :goto_a
    if-ge v14, v13, :cond_15

    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_16
    :goto_c
    return-void

    :goto_d
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
