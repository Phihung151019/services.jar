.class public final Lcom/android/server/powerstats/TimerTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .locals 12

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    const/4 v5, 0x1

    const-string/jumbo v2, "PowerStatsLowFreqLog"

    const-wide/32 v3, 0x36ee80

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    new-instance v6, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    const/4 v11, 0x2

    const-string/jumbo v8, "PowerStatsHighFreqLog"

    const-wide/32 v9, 0x1d4c0

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    invoke-virtual {v0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    invoke-virtual {v6}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    return-void
.end method
