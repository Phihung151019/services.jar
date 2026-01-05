.class public final Lcom/android/server/job/controllers/TimeController$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/TimeController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/job/controllers/TimeController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    iget v0, p0, Lcom/android/server/job/controllers/TimeController$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Time"

    const-string v1, "Delay-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/TimeController;->mLastFiredDelayExpiredElapsedMillis:J

    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/server/job/controllers/TimeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "JobScheduler.Time"

    const-string v1, "Deadline-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$2;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
