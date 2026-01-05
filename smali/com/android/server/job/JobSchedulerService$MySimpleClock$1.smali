.class public final Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$MySimpleClock;Ljava/time/ZoneId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    invoke-direct {p0, p2}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MySimpleClock$1;->this$0:Lcom/android/server/job/JobSchedulerService$MySimpleClock;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;->millis()J

    move-result-wide v0

    return-wide v0
.end method
