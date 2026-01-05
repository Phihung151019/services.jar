.class public final Lcom/android/server/am/UidObserverController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

.field public final mAvailUidChanges:Ljava/util/ArrayList;

.field public final mDispatchRunnable:Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

.field public final mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingUidChanges:Ljava/util/ArrayList;

.field public mUidChangeDispatchCount:I

.field public final mUidObservers:Landroid/os/RemoteCallbackList;

.field public final mValidateUids:Lcom/android/server/am/ActiveUids;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    new-instance v0, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UidObserverController;)V

    iput-object v0, p0, Lcom/android/server/am/UidObserverController;->mDispatchRunnable:Lcom/android/server/am/UidObserverController$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p1, Lcom/android/server/am/ActiveUids;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object p1, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    return-void
.end method

.method public static mergeWithPendingChange(II)I
    .locals 2

    and-int/lit8 v0, p0, 0x6

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x6

    or-int/2addr p0, v0

    :cond_0
    and-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x18

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0xd

    :cond_2
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_3

    or-int/lit8 p0, p0, 0x20

    :cond_3
    const/high16 v0, -0x80000000

    and-int v1, p1, v0

    if-eqz v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_5

    or-int/lit8 p0, p0, 0x40

    :cond_5
    return p0
.end method


# virtual methods
.method public dispatchUidsChanged()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    array-length v3, v3

    if-ge v3, v2, :cond_0

    new-array v3, v2, [Lcom/android/server/am/UidObserverController$ChangeRecord;

    iput-object v3, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_18

    :cond_0
    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$ChangeRecord;

    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    iget-object v7, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v8, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/UidObserverController$ChangeRecord;

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    :goto_2
    aput-object v7, v6, v4

    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/am/UidObserverController$ChangeRecord;->copyTo(Lcom/android/server/am/UidObserverController$ChangeRecord;)V

    iput-boolean v3, v5, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/android/server/am/UidObserverController;->mPendingUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget v4, v0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_3
    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x1

    if-lez v1, :cond_1e

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/IUidObserver;

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-nez v6, :cond_3

    goto/16 :goto_12

    :cond_3
    move v12, v3

    :goto_4
    if-ge v12, v2, :cond_1d

    :try_start_1
    iget-object v7, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v13, v7, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iget v7, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    iget v8, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-object v9, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v9, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v8

    if-ltz v8, :cond_5

    :goto_5
    iget v8, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    iget v9, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v8, v9, :cond_6

    iget-boolean v8, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_6

    :cond_5
    :goto_6
    move/from16 v16, v5

    goto/16 :goto_11

    :cond_6
    iget v8, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_7

    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    const/16 v9, 0x40

    if-ne v7, v9, :cond_8

    and-int/lit8 v9, v8, 0x40

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    and-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_9

    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_a

    :try_start_2
    iget v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v10, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v9, v10}, Landroid/app/IUidObserver;->onUidIdle(IZ)V

    goto :goto_7

    :cond_9
    and-int/lit8 v9, v7, 0x4

    if-eqz v9, :cond_a

    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_a

    iget v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v9}, Landroid/app/IUidObserver;->onUidActive(I)V

    :cond_a
    :goto_7
    and-int/lit8 v9, v8, 0x10

    if-eqz v9, :cond_c

    and-int/lit8 v9, v7, 0x8

    if-eqz v9, :cond_b

    iget v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v9, v5}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    goto :goto_8

    :cond_b
    and-int/lit8 v9, v7, 0x10

    if-eqz v9, :cond_c

    iget v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-interface {v6, v9, v3}, Landroid/app/IUidObserver;->onUidCachedChanged(IZ)V

    :cond_c
    :goto_8
    and-int/lit8 v9, v7, 0x1

    const/16 v10, 0x14

    if-eqz v9, :cond_f

    and-int/lit8 v7, v8, 0x2

    if-eqz v7, :cond_d

    iget v7, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget-boolean v8, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->ephemeral:Z

    invoke-interface {v6, v7, v8}, Landroid/app/IUidObserver;->onUidGone(IZ)V

    :cond_d
    iget-object v7, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v7, :cond_e

    iget v8, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_e
    move/from16 v16, v5

    move v3, v10

    goto/16 :goto_10

    :cond_f
    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_14

    iget v9, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    if-ltz v9, :cond_13

    :try_start_3
    iget-object v11, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    iget v3, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    move/from16 v16, v5

    const/4 v5, -0x1

    invoke-virtual {v11, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, v5, :cond_12

    if-gt v3, v9, :cond_10

    move/from16 v3, v16

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    iget v5, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-gt v5, v9, :cond_11

    move/from16 v5, v16

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    if-eq v3, v5, :cond_15

    :goto_b
    goto :goto_c

    :cond_12
    iget v3, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    if-eq v3, v10, :cond_15

    goto :goto_b

    :cond_13
    move/from16 v16, v5

    :goto_c
    move/from16 v3, v16

    goto :goto_d

    :cond_14
    move/from16 v16, v5

    :cond_15
    const/4 v3, 0x0

    :goto_d
    and-int/lit8 v5, v8, 0x20

    if-eqz v5, :cond_17

    and-int/lit8 v5, v7, 0x20

    if-eqz v5, :cond_16

    move/from16 v5, v16

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    :goto_e
    or-int/2addr v3, v5

    :cond_17
    if-eqz v3, :cond_19

    iget-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v3, :cond_18

    iget v5, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    invoke-virtual {v3, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    :cond_18
    move v3, v7

    iget v7, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    move v5, v8

    iget v8, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    move v11, v10

    iget-wide v9, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procStateSeq:J

    move/from16 v17, v11

    iget v11, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    move/from16 v18, v17

    move/from16 v17, v3

    move/from16 v3, v18

    invoke-interface/range {v6 .. v11}, Landroid/app/IUidObserver;->onUidStateChanged(IIJI)V

    goto :goto_f

    :cond_19
    move/from16 v17, v7

    move v5, v8

    move v3, v10

    :goto_f
    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1a

    and-int/lit8 v5, v17, 0x40

    if-eqz v5, :cond_1a

    iget v5, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    iget v7, v13, Lcom/android/server/am/UidObserverController$ChangeRecord;->procAdj:I

    invoke-interface {v6, v5, v7}, Landroid/app/IUidObserver;->onUidProcAdjChanged(II)V

    :cond_1a
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v14

    long-to-int v5, v7

    iget v7, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    if-ge v7, v5, :cond_1b

    iput v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    :cond_1b
    if-lt v5, v3, :cond_1c

    iget v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1c
    :goto_11
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_0
    :cond_1d
    :goto_12
    move v1, v4

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_1e
    move/from16 v16, v5

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v3, v0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_23

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v2, :cond_23

    iget-object v4, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v4, v4, v1

    iget v5, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveUids;->remove(I)V

    move/from16 v7, v16

    goto :goto_15

    :catchall_1
    move-exception v0

    goto :goto_17

    :cond_1f
    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-nez v5, :cond_20

    new-instance v5, Lcom/android/server/am/UidRecord;

    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-direct {v5, v6}, Lcom/android/server/am/UidRecord;-><init>(I)V

    iget-object v6, v0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    iget v7, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->uid:I

    invoke-virtual {v6, v7, v5}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_20
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->change:I

    and-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_21

    move/from16 v7, v16

    iput-boolean v7, v5, Lcom/android/server/am/UidRecord;->mIdle:Z

    goto :goto_14

    :cond_21
    move/from16 v7, v16

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_22

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/UidRecord;->mIdle:Z

    :cond_22
    :goto_14
    iget v6, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->procState:I

    iput v6, v5, Lcom/android/server/am/UidRecord;->mSetProcState:I

    iput v6, v5, Lcom/android/server/am/UidRecord;->mCurProcState:I

    iget v4, v4, Lcom/android/server/am/UidObserverController$ChangeRecord;->capability:I

    iput v4, v5, Lcom/android/server/am/UidRecord;->mSetCapability:I

    iput v4, v5, Lcom/android/server/am/UidRecord;->mCurCapability:I

    :goto_15
    add-int/lit8 v1, v1, 0x1

    move/from16 v16, v7

    goto :goto_13

    :cond_23
    const/4 v6, 0x0

    :goto_16
    if-ge v6, v2, :cond_24

    iget-object v1, v0, Lcom/android/server/am/UidObserverController;->mActiveUidChanges:[Lcom/android/server/am/UidObserverController$ChangeRecord;

    aget-object v1, v1, v6

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/am/UidObserverController$ChangeRecord;->isPending:Z

    iget-object v5, v0, Lcom/android/server/am/UidObserverController;->mAvailUidChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_24
    monitor-exit v3

    return-void

    :goto_17
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :goto_18
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    iget-object v6, v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    const-string v4, "  mUidObservers:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_1
    iget-object v6, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/app/IUidObserver;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  mUidChangeDispatchCount="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UidObserverController;->mUidChangeDispatchCount:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  Slow UID dispatches:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge v2, v1, :cond_4

    iget-object p2, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUidObserver;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mSlowDispatchCount:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " / Max "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p2, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mMaxDispatchTime:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    if-eqz p2, :cond_0

    iget-object v4, v3, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v3, p1}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpValidateUidsProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;I)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UidObserverController;->mValidateUids:Lcom/android/server/am/ActiveUids;

    const-wide v4, 0x20b00000005L

    move-object v6, p1

    move-object v7, p2

    move v3, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActiveUids;->dumpProto(IJLandroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final register(Landroid/app/IUidObserver;IILjava/lang/String;I[I)Landroid/os/IBinder;
    .locals 9

    new-instance v7, Landroid/os/Binder;

    const-string/jumbo v0, "UidObserver-"

    const-string v1, "-"

    invoke-static {v0, p4, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/UidObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, p5, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    move v3, p2

    move v4, p3

    move-object v2, p4

    move v1, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/UidObserverController$UidObserverRegistration;-><init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v8

    return-object v7

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
