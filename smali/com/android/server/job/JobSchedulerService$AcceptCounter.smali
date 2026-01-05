.class public final Lcom/android/server/job/JobSchedulerService$AcceptCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public batchNetwork:J

.field public batchOthers:J

.field public batchPrefetch:J

.field public batchStandbyBucket:J

.field public unbatchAttempts:J

.field public unbatchExpedited:J

.field public unbatchNetwork:J

.field public unbatchOthers:J

.field public unbatchOverrideNone:J

.field public unbatchPrefetch:J


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "u:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d,%d,%d,%d,%d,%d"

    const-string v3, ",b:"

    invoke-static {v2, v1, v0, v3}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d,%d,%d,%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
