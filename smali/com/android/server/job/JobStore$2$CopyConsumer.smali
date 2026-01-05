.class public final Lcom/android/server/job/JobStore$2$CopyConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mCopyAllJobs:Z

.field public final mJobStoreCopy:Landroid/util/SparseArray;

.field public final synthetic this$1:Lcom/android/server/job/JobStore$2;


# direct methods
.method public static -$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .locals 6

    const-string v0, "JobStore"

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-boolean v2, v1, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-boolean v2, v1, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    const-string p0, "Couldn\'t get job file list"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    array-length v0, v1

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v2, v1, v3

    invoke-static {v2}, Lcom/android/server/job/JobStore;->extractUidFromJobFileName(Ljava/io/File;)I

    move-result v2

    const/4 v4, -0x2

    if-eq v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    const-string/jumbo v1, "Not allowed to read job file directory"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v2, v2, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-boolean v2, v2, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    iget-object v3, v3, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    iget-object v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v4, Lcom/android/server/job/controllers/JobStatus;

    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    iget-wide v10, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    iget-wide v12, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move-wide/from16 v23, v6

    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    move-wide/from16 v19, v10

    iget-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    move-wide/from16 v21, v12

    iget v12, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v13, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    iget v14, v1, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    move-object/from16 p0, v4

    move-object v15, v5

    iget-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    move-wide/from16 v16, v4

    iget-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    move-wide/from16 v25, v4

    move-object v5, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v25

    move-object/from16 v4, p0

    move/from16 v25, v0

    move/from16 v26, v2

    invoke-direct/range {v4 .. v26}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIIJJJJJII)V

    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iput-object v0, v4, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "here"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "JobScheduler.JobStatus"

    const-string v5, "Cloning job with persisted run times"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    :cond_4
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_5
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method
