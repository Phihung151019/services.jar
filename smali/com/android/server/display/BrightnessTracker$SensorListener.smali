.class public final Lcom/android/server/display/BrightnessTracker$SensorListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$SensorListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget p0, p0, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    iget-boolean v2, v2, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    if-ne p0, v2, :cond_1

    iget-object p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget-object v3, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v3

    iget v4, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    iget-object v5, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    iget-boolean v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v6}, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v6, v8

    long-to-double v5, v6

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    double-to-float v5, v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->log(ILjava/time/LocalDate;FF)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    sget-boolean v2, Lcom/android/server/display/AmbientBrightnessStatsTracker;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "AmbientBrightnessStatsTracker"

    const-string/jumbo v3, "User switched since last sensor event."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentUserId:I

    :goto_1
    iget-object p0, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;

    iput-boolean v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->startTimeMillis:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$Timer;->started:Z

    iput p1, v0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mCurrentAmbientBrightness:F

    goto :goto_2

    :cond_3
    sget-boolean p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "AmbientBrightnessStatsTracker"

    const-string/jumbo p1, "Timer not running while trying to add brightness stats."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
