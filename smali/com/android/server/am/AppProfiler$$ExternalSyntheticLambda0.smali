.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler;

    iput-object p2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iput-wide p4, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler;

    iget-object v1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda0;->f$3:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p1, v1, :cond_9

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez p0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    if-eqz v2, :cond_7

    new-instance v5, Lcom/android/server/am/ProcessMemInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v7, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget v11, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget-object v9, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v10, v1

    goto :goto_4

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v12, v10, Landroid/content/ComponentName;

    const-string/jumbo v13, "{null}"

    if-eqz v12, :cond_3

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v10, "<="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v12, v10, Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_5

    const-string/jumbo v10, "Proc{"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "}"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_4
    invoke-direct/range {v5 .. v11}, Lcom/android/server/am/ProcessMemInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v2, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    add-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gtz v2, :cond_9

    iget-object v2, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v5, 0x190

    if-gt p0, v5, :cond_8

    const-wide/16 v5, 0x0

    iput-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    goto :goto_5

    :cond_8
    iget-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    iput-wide v5, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    :goto_5
    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    iput-wide v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    iget-object p0, v0, Lcom/android/server/am/AppProfiler;->mProcessesToGc:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppProfiler;->addProcessToGcListLPf(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_6
    return-void
.end method
