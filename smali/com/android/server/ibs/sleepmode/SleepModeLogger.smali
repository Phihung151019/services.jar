.class public final Lcom/android/server/ibs/sleepmode/SleepModeLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIsUsed:Z

.field public mSleepModeLog:Landroid/util/LocalLog;


# virtual methods
.method public final add(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
