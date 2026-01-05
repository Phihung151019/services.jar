.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/proto/ProtoOutputStream;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-wide v4, 0x20b00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000001L

    invoke-virtual {v3, p0, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v6, 0x10500000002L

    iget v8, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10e00000003L

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-wide v7, 0x10800000004L

    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/high16 v6, 0x1000000

    invoke-virtual {v3, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    const-wide v7, 0x10800000005L

    invoke-virtual {p0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10300000006L

    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10800000007L

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const-wide v6, 0x10800000008L

    invoke-virtual {p0, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Landroid/util/ArraySet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v4, "#"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v4, " from "

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p0, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " (TOP)"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ", "

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "within EJ quota"

    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-boolean v5, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "out of EJ quota"

    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/high16 v5, 0x1000000

    invoke-virtual {v3, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "within regular quota"

    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string/jumbo v5, "not within quota"

    invoke-virtual {p0, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v3, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v3, "ms remaining in EJ quota"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v4, :cond_8

    const-string/jumbo v3, "should be stopped after min execution time"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string/jumbo v3, "ms remaining in quota"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
