.class public final Lcom/android/server/job/JobSchedulerService$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/time/ZoneId;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/job/JobSchedulerService$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    iget p0, p0, Lcom/android/server/job/JobSchedulerService$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
