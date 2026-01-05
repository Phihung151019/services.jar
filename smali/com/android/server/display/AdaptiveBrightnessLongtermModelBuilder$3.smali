.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/PowerManagerInternal$UserActivityStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    return-void
.end method


# virtual methods
.method public final onChanged(I)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-nez v1, :cond_0

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-nez v1, :cond_3

    iget v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    iget-object v2, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    iput-boolean v0, p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    return-void
.end method
