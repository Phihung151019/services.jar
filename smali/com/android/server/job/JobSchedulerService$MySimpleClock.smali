.class public abstract Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.super Ljava/time/Clock;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mZoneId:Ljava/time/ZoneId;


# direct methods
.method public constructor <init>(Ljava/time/ZoneId;)V
    .locals 0

    invoke-direct {p0}, Ljava/time/Clock;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public final getZone()Ljava/time/ZoneId;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->mZoneId:Ljava/time/ZoneId;

    return-object p0
.end method

.method public final instant()Ljava/time/Instant;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public abstract millis()J
.end method

.method public final withZone(Ljava/time/ZoneId;)Ljava/time/Clock;
    .locals 1

    new-instance v0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;-><init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V

    return-object v0
.end method
