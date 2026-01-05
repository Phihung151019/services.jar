.class public final Lcom/android/server/am/ForegroundServiceTypeLoggerModule;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUids:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    return-void
.end method

.method public static convertFgsTypeToApiTypes(I)Landroid/util/IntArray;
    .locals 5

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    and-int/lit8 v1, p0, 0x10

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x10

    if-ne v1, v4, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1
    and-int/lit8 v1, p0, 0x8

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_3
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_4
    and-int/2addr p0, v3

    if-ne p0, v3, :cond_5

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V
    .locals 49

    move-object/from16 v0, p1

    move/from16 v1, p4

    const/4 v2, 0x0

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v7, p5

    move-wide/from16 v37, v7

    goto :goto_0

    :cond_1
    move-wide/from16 v37, v5

    :goto_0
    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, p5, v3

    :cond_2
    move-wide/from16 v39, v5

    filled-new-array {v1}, [I

    move-result-object v31

    const/4 v1, 0x1

    new-array v1, v1, [J

    aput-wide p5, v1, v2

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v0, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->isFgsAllowedWiu_forCapabilities()Z

    move-result v13

    invoke-virtual {v0}, Lcom/android/server/am/ServiceRecord;->getFgsAllowStart()I

    move-result v14

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v3, v0, Lcom/android/server/am/ServiceRecord;->mRecentCallingUid:I

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->mInfoTempFgsAllowListReason:Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/android/server/am/ActivityManagerService$FgsTempAllowListItem;->mCallingUid:I

    move/from16 v18, v4

    goto :goto_1

    :cond_3
    move/from16 v18, v5

    :goto_1
    iget-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationWasDeferred:Z

    iget-boolean v6, v0, Lcom/android/server/am/ServiceRecord;->mFgsNotificationShown:Z

    iget v7, v0, Lcom/android/server/am/ServiceRecord;->mStartForegroundCount:I

    iget-boolean v8, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    iget v9, v0, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    iget-boolean v12, v0, Lcom/android/server/am/ServiceRecord;->mIsFgsDelegate:Z

    iget-object v2, v0, Lcom/android/server/am/ServiceRecord;->mFgsDelegation:Lcom/android/server/am/ForegroundServiceDelegation;

    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v5, v5, Landroid/app/ForegroundServiceDelegationOptions;->mClientUid:I

    :cond_4
    move/from16 v28, v5

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iget v2, v2, Landroid/app/ForegroundServiceDelegationOptions;->mDelegationService:I

    move/from16 v29, v2

    goto :goto_2

    :cond_5
    const/16 v29, 0x0

    :goto_2
    iget v2, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_noBinding:I

    iget v5, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_inBindService:I

    move-object/from16 v32, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowWiu_byBindings:I

    move/from16 v43, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_noBinding:I

    move/from16 v44, v1

    iget v1, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_inBindService:I

    iget v0, v0, Lcom/android/server/am/ServiceRecord;->mAllowStart_byBindings:I

    const/16 v35, -0x1

    const/16 v36, 0x0

    move/from16 v25, v9

    const/16 v9, 0x3c

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v33, -0x1

    const/16 v34, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move/from16 v30, p3

    move/from16 v46, v0

    move/from16 v45, v1

    move/from16 v41, v2

    move/from16 v16, v3

    move/from16 v19, v4

    move/from16 v42, v5

    move/from16 v20, v6

    move/from16 v22, v7

    move/from16 v24, v8

    move/from16 v27, v12

    move/from16 v12, p2

    invoke-static/range {v9 .. v48}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    return-void
.end method

.method public logFgsApiEventWithNoFgs(IIIJ)V
    .locals 42

    move/from16 v0, p3

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p4, v1

    :goto_0
    move-wide/from16 v32, v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    filled-new-array {v0}, [I

    move-result-object v24

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p4, v0, v1

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v2, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v9, p1

    move/from16 v23, p2

    move-object/from16 v25, v0

    invoke-static/range {v2 .. v41}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IZIIIIIZZIIIZIIZIII[I[JIIIIJJIIIIIIIZ)V

    return-void
.end method

.method public final logForegroundServiceApiEventBegin(II)V
    .locals 8

    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(J)V

    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    invoke-direct {v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    const/4 v3, 0x1

    if-nez p2, :cond_5

    iget-object p0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_2

    iget-object p0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    :cond_2
    iget-object p2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    iget-object p0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iget-object p0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_5
    iget-object p2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_6

    iget-object p2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p2, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p2

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p2

    if-ne p2, v3, :cond_7

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    const/4 v3, 0x4

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public final logForegroundServiceApiEventEnd(II)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v0, :cond_0

    const-string p0, "ForegroundServiceTypeLoggerModule"

    const-string p1, "API event end called before start!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x3

    move-object v4, p0

    move v7, p1

    move v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEventWithNoFgs(IIIJ)V

    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    return-void

    :cond_3
    move v7, p1

    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_4

    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    iget-object p0, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_6

    add-int/lit8 p0, p0, -0x1

    if-nez p0, :cond_5

    iget-object p1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    iget-object p1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v7, p0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_6
    new-instance p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;-><init>(J)V

    iget-object p1, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {p1, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final logForegroundServiceApiStateChanged(III)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    iget-object v0, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ServiceRecord;

    const/4 v2, 0x4

    move-object v0, p0

    move v4, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final logForegroundServiceStart(ILcom/android/server/am/ServiceRecord;)V
    .locals 12

    iget-object v0, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    const-wide/16 v2, 0x40

    const-string/jumbo v4, "foregroundService"

    invoke-static {v2, v3, v0, v4, v1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    invoke-direct {v0}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget v1, p2, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-static {v1}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Foreground service start for UID: "

    const-string v3, " does not have any types"

    const-string v4, "ForegroundServiceTypeLoggerModule"

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    new-instance v2, Landroid/util/LongArray;

    invoke-direct {v2}, Landroid/util/LongArray;-><init>()V

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {v1, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_3

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mFirstFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    iget-object v8, p2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v8, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    iget-object v8, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenedWithoutFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p1, v6}, Landroid/util/IntArray;->add(I)V

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    iget-wide v7, v7, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-virtual {v2, v7, v8}, Landroid/util/LongArray;->add(J)V

    iget-object v7, v0, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiOpenCalls:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_6

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v9

    invoke-virtual {v2, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v10

    const/4 v7, 0x4

    const/4 v8, 0x1

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final logForegroundServiceStop(ILcom/android/server/am/ServiceRecord;)V
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x40

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_0
    iget v2, v1, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    invoke-static {v2}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->convertFgsTypeToApiTypes(I)Landroid/util/IntArray;

    move-result-object v2

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->mUids:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v5

    const-string v6, "ForegroundServiceTypeLoggerModule"

    if-nez v5, :cond_1

    const-string v5, "FGS stop call for: "

    const-string v7, " has no types!"

    invoke-static {v0, v5, v7, v6}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v5, " in package "

    if-nez v4, :cond_2

    const-string v2, "FGS stop call being logged with no start call for UID for UID "

    invoke-static {v0, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_7

    invoke-virtual {v2, v11}, Landroid/util/IntArray;->get(I)I

    move-result v12

    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_3

    const-string v12, "Could not find appropriate running FGS for FGS stop for UID "

    invoke-static {v0, v12, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v12, v13, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v14, v1, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mRunningFgs:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mLastFgsTimeStamp:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v13

    if-gez v13, :cond_5

    const-string/jumbo v12, "Logger should be tracking FGS types correctly for UID "

    invoke-static {v0, v12, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-static {v12, v13, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v14, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;

    if-eqz v14, :cond_6

    iget-object v15, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mOpenWithFgsCount:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v13

    if-nez v13, :cond_6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v13, v14, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$FgsApiRecord;->mTimeStart:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v4, Lcom/android/server/am/ForegroundServiceTypeLoggerModule$UidState;->mApiClosedCalls:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_8

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x4

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ForegroundServiceTypeLoggerModule;->logFgsApiEvent(Lcom/android/server/am/ServiceRecord;IIIJ)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v1, p2

    goto :goto_2

    :cond_8
    return-void
.end method
