.class public Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_MID:Z


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public final mCapability:Landroid/util/SparseIntArray;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public final mPendingCapability:Landroid/util/SparseIntArray;

.field public final mPendingCommitTime:Landroid/util/SparseLongArray;

.field public final mPendingUidStates:Landroid/util/SparseIntArray;

.field public final mUidStateChangedCallbacks:Landroid/util/ArrayMap;

.field public final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x4948"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG:Z

    const-string v2, "0x494d"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG_MID:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    new-instance p5, Landroid/util/SparseBooleanArray;

    invoke-direct {p5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    new-instance p5, Landroid/util/SparseBooleanArray;

    invoke-direct {p5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    new-instance p5, Landroid/util/SparseLongArray;

    invoke-direct {p5}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    new-instance p5, Landroid/util/ArrayMap;

    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    new-instance p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-direct {p1, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;)V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    return-void
.end method


# virtual methods
.method public final commitUidPendingState(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const v3, 0x7fffffff

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    const/16 v10, 0x2bc

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1f4

    if-gt v11, v13, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v5

    :goto_0
    if-gt v10, v13, :cond_1

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v5

    :goto_1
    if-ne v14, v13, :cond_3

    if-ne v4, v8, :cond_3

    if-eq v6, v9, :cond_2

    goto :goto_2

    :cond_2
    move v13, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v13, v12

    :goto_3
    if-ne v11, v10, :cond_4

    if-ne v4, v8, :cond_4

    if-eq v6, v9, :cond_7

    :cond_4
    if-eqz v13, :cond_6

    if-eq v6, v9, :cond_5

    goto :goto_4

    :cond_5
    move v12, v5

    :goto_4
    iget-object v15, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v14, v4}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v14 .. v21}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v4

    iget-object v6, v15, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    invoke-interface {v6, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    move v4, v5

    :goto_5
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/AppOpsService$2;

    iget-object v11, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v11, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v12, v6, v14, v15, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    if-ne v7, v3, :cond_8

    if-eq v2, v7, :cond_8

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    const/4 v5, 0x0

    :goto_6
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v5, v2, :cond_9

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$2;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public final dumpEvents(Ljava/io/PrintWriter;)V
    .locals 26

    move-object/from16 v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    if-lt v3, v7, :cond_1

    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    if-lt v4, v8, :cond_1

    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    if-ge v5, v8, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    add-int/2addr v8, v3

    rem-int/lit16 v8, v8, 0xc8

    iget v9, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    add-int/2addr v9, v4

    rem-int/lit16 v9, v9, 0xc8

    iget v10, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    add-int/2addr v10, v5

    rem-int/lit16 v10, v10, 0xc8

    iget-object v11, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    if-ge v3, v7, :cond_2

    aget-wide v14, v11, v8

    goto :goto_2

    :cond_2
    const-wide v14, 0x7fffffffffffffffL

    :goto_2
    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    const/16 v16, 0x0

    iget-object v1, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    if-ge v4, v7, :cond_3

    aget-wide v17, v1, v9

    goto :goto_3

    :cond_3
    const-wide v17, 0x7fffffffffffffffL

    :goto_3
    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    iget-object v12, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    if-ge v5, v7, :cond_4

    aget-wide v19, v12, v10

    goto :goto_4

    :cond_4
    const-wide v19, 0x7fffffffffffffffL

    :goto_4
    cmp-long v7, v14, v17

    const/16 v21, 0x1

    const/16 v22, 0x2

    const-string v13, " "

    move-object/from16 v23, v1

    const-string v1, " capability="

    const-string v2, "%-30s"

    move/from16 v24, v3

    const-string v3, "%-8d"

    move/from16 v25, v4

    const-string v4, " uid="

    if-gtz v7, :cond_5

    cmp-long v7, v14, v19

    if-gtz v7, :cond_5

    aget-wide v9, v11, v8

    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    aget-object v6, v6, v8

    aget v7, v6, v16

    aget v8, v6, v21

    aget v6, v6, v22

    invoke-static {v0, v9, v10}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    const-string v9, " UPDATE_UID_PROC_STATE"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " procState="

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v24, 0x1

    :goto_5
    move/from16 v4, v25

    goto/16 :goto_0

    :cond_5
    cmp-long v7, v17, v19

    const-string v8, " uidState="

    const/4 v11, 0x3

    if-gtz v7, :cond_9

    aget-wide v14, v23, v9

    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    aget-object v6, v6, v9

    aget v7, v6, v16

    aget v9, v6, v21

    aget v10, v6, v22

    aget v6, v6, v11

    and-int/lit8 v11, v6, 0x1

    if-eqz v11, :cond_6

    move/from16 v11, v21

    goto :goto_6

    :cond_6
    move/from16 v11, v16

    :goto_6
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v21, v16

    :goto_7
    invoke-static {v0, v14, v15}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    const-string v6, " COMMIT_UID_STATE     "

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " appWidgetVisible="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz v21, :cond_8

    const-string v1, " (changed)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v25, 0x1

    move/from16 v3, v24

    goto/16 :goto_0

    :cond_9
    aget-wide v14, v12, v10

    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    aget-object v6, v6, v10

    aget v7, v6, v16

    aget v9, v6, v21

    aget v10, v6, v22

    aget v11, v6, v11

    const/4 v12, 0x4

    aget v6, v6, v12

    invoke-static {v0, v14, v15}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    const-string v12, " EVAL_FOREGROUND_MODE "

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%-20s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v24

    goto/16 :goto_5
.end method

.method public final evalMode(III)I
    .locals 12

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    return p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    iget-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x2bc

    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p3

    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_4

    const/16 v4, 0x1a

    if-eq p2, v4, :cond_3

    const/16 v4, 0x1b

    if-eq p2, v4, :cond_5

    const/16 v4, 0x29

    if-eq p2, v4, :cond_4

    const/16 v4, 0x2a

    if-eq p2, v4, :cond_4

    const/16 v4, 0x79

    if-eq p2, v4, :cond_5

    const/16 v0, 0x9a

    if-eq p2, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x40

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v3

    :cond_5
    :goto_0
    const-string v4, " opCapability= "

    const-string v5, " uidCapability= "

    const-string v6, " uidState= "

    const-string v7, " code= "

    const-string v8, "AppOps"

    sget-boolean v9, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG:Z

    sget-boolean v10, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG_MID:Z

    if-eqz v0, :cond_8

    and-int v11, v1, v0

    if-nez v11, :cond_a

    if-nez v10, :cond_6

    if-eqz v9, :cond_7

    :cond_6
    const-string/jumbo v2, "evalModeInternal uidCapability: uid= "

    invoke-static {p1, p2, v2, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, v1, v5, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v2, v0, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_7
    :goto_1
    move v2, v3

    goto :goto_2

    :cond_8
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v11

    if-le p3, v11, :cond_a

    if-nez v10, :cond_9

    if-eqz v9, :cond_7

    :cond_9
    const-string/jumbo v2, "evalModeInternal uidState: uid= "

    invoke-static {p1, p2, v2, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, v1, v5, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " first unrestricted state= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p0

    iget-object p1, v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2
.end method

.method public final updateUidPendingStateIfNeeded(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateUidProcState(III)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x190

    const/16 v5, 0x1f4

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const/4 v9, -0x1

    const/16 v10, 0x2bc

    if-ne v2, v9, :cond_0

    goto :goto_1

    :cond_0
    if-gt v2, v7, :cond_1

    const/16 v10, 0x64

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    if-gt v2, v9, :cond_2

    const/16 v10, 0xc8

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    if-gt v2, v9, :cond_3

    :goto_0
    move v10, v5

    goto :goto_1

    :cond_3
    const/4 v9, 0x4

    if-gt v2, v9, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    const/4 v9, 0x5

    if-gt v2, v9, :cond_5

    goto :goto_0

    :cond_5
    const/16 v9, 0xb

    if-gt v2, v9, :cond_6

    const/16 v10, 0x258

    goto :goto_1

    :cond_6
    const/16 v9, 0x14

    if-ge v2, v9, :cond_7

    goto :goto_1

    :cond_7
    move v10, v8

    :goto_1
    iget-object v9, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v11, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    iget-object v13, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v1, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    const-wide/16 v6, 0x0

    invoke-virtual {v15, v1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v16

    cmp-long v6, v16, v6

    if-nez v6, :cond_8

    if-ne v10, v9, :cond_9

    if-ne v3, v11, :cond_9

    :cond_8
    if-eqz v6, :cond_11

    if-ne v10, v13, :cond_9

    if-eq v3, v14, :cond_11

    :cond_9
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v2

    iget-object v7, v7, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    invoke-interface {v7, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    not-int v2, v3

    and-int/2addr v2, v11

    if-eqz v2, :cond_a

    const/4 v7, 0x1

    goto :goto_2

    :cond_a
    move v7, v12

    :goto_2
    if-ne v10, v8, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_b
    if-ge v10, v9, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_c
    if-ne v10, v9, :cond_d

    if-nez v7, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_d
    if-gt v10, v5, :cond_e

    if-nez v7, :cond_e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    return-void

    :cond_e
    if-nez v6, :cond_11

    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    const/16 v3, 0xc8

    if-gt v9, v3, :cond_f

    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    goto :goto_3

    :cond_f
    if-gt v9, v4, :cond_10

    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    goto :goto_3

    :cond_10
    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    :goto_3
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method
