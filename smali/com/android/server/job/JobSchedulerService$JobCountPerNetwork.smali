.class public final Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public deferedJobCount:I

.field public hasNetworkJob:Z

.field public final network:Landroid/net/Network;

.field public totalJobCount:I

.field public unbatchJobCount:I


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->network:Landroid/net/Network;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->hasNetworkJob:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->network:Landroid/net/Network;

    if-nez v1, :cond_0

    const-string/jumbo v1, "cpu"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, ",T:%d,U:%d,D:%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
