.class public final Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final job:Lcom/android/server/job/controllers/JobStatus;

.field public final timestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetjob(Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->job:Lcom/android/server/job/controllers/JobStatus;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettimestamp(Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->timestamp:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->job:Lcom/android/server/job/controllers/JobStatus;

    iput-wide p2, p0, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->timestamp:J

    return-void
.end method
