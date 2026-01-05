.class public final synthetic Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iput-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v1, 0x20b00000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10b00000001L

    invoke-virtual {p1, p0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const-wide v4, 0x10500000002L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const-wide v5, 0x10900000003L

    invoke-virtual {p0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v5

    const-wide v6, 0x10800000004L

    invoke-virtual {p0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v5, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v8, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v8

    monitor-exit v6

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v6, v7

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    const-wide v8, 0x10800000005L

    invoke-virtual {p0, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v8, 0x10800000006L

    invoke-virtual {v0, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    const-wide v3, 0x10800000007L

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object p0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const-string v2, "#"

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v2, " from "

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->isUidActive(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " active"

    goto :goto_3

    :cond_3
    const-string v2, " idle"

    :goto_3
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptAllAppIds:[I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v3, :cond_4

    iget-object v2, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, v0, Lcom/android/server/AppStateTrackerImpl;->mTempExemptAppIds:[I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3

    monitor-exit v2

    if-eqz v3, :cond_5

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :cond_4
    :goto_4
    const-string v2, ", exempted"

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const-string v2, ": "

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " [RUN_ANY_IN_BACKGROUND "

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppStateTrackerImpl;->isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "allowed]"

    goto :goto_5

    :cond_6
    const-string/jumbo v0, "disallowed]"

    :goto_5
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const-string p1, " RUNNABLE"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string p1, " WAITING"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    return-void

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
