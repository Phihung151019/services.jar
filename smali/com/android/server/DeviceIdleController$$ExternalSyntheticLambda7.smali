.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    iget v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    sget-boolean p0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->isStationaryLocked()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "DeviceIdleController"

    const-string/jumbo v1, "motion timeout went off and device isn\'t stationary"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    sget-boolean p0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    monitor-enter v0

    :try_start_2
    iget-object p0, v0, Lcom/android/server/DeviceIdleController;->mStationaryListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->startMonitoringMotionLocked()V

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->scheduleMotionTimeoutAlarmLocked()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/DeviceIdleController;

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DeviceIdleController"

    const-string/jumbo v1, "Light progression alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "s:alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/DeviceIdleController;->stepLightIdleStateLocked(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
