.class public final Lcom/android/server/chimera/psitracker/PSITracker$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/psitracker/PSITracker;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/psitracker/PSITracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    const-string v1, "240 Alarm fired"

    invoke-virtual {v0, v1}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object v0, v0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker$1;->this$0:Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object p0, p0, Lcom/android/server/chimera/psitracker/PSITracker;->mHandler:Lcom/android/server/chimera/psitracker/PSITracker$PSITrackerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
