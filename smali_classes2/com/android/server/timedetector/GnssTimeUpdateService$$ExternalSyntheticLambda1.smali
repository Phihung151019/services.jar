.class public final synthetic Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/GnssTimeUpdateService;

    sget-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-string/jumbo v0, "handleAlarmFired()"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
