.class public final Lcom/android/server/display/exynos/ExynosDisplayATC$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;


# direct methods
.method public constructor <init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Ignore event "

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object v2, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    iget-wide v7, v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_0

    const-string v0, "ExynosDisplayATC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string/jumbo v3, "\\s*,\\s*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-lt v3, v1, :cond_1

    iget-object v3, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v5, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iput v3, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    iget-object v0, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    :cond_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v4

    float-to-int p1, p1

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    const-string/jumbo v2, "\\s*,\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    aget-object v0, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "qdelay: "

    const-string v2, "ExynosDisplayATC"

    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    iget v2, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    if-ge v2, v0, :cond_4

    goto :goto_2

    :cond_4
    if-lt v3, v0, :cond_5

    iput v4, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    :cond_5
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;->this$0:Lcom/android/server/display/exynos/ExynosDisplayATC;

    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    :cond_6
    :goto_2
    return-void

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
