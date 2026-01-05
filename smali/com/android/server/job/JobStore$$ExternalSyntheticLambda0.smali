.class public final synthetic Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$0:J

    iput-object p3, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$0:J

    iget-object v3, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/job/JobStore$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    iget-object v4, v5, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v4, :cond_0

    invoke-static {v4, v1, v2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v1

    new-instance v4, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v1, v5, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    const/4 v12, 0x0

    iget-wide v13, v5, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    iget-wide v10, v5, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    move-wide/from16 v17, v1

    move-wide v15, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v18}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
