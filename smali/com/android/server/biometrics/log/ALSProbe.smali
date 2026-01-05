.class public final Lcom/android/server/biometrics/log/ALSProbe;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDestroyRequested:Z

.field public mDestroyed:Z

.field public mDisableRequested:Z

.field public mEnabled:Z

.field public volatile mLastAmbientLux:F

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

.field public final mMaxSubscriptionTime:J

.field public mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mTimer:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    new-instance v1, Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/ALSProbe$1;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    iput-object p2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    iput-wide p3, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "ALSProbe"

    const-string/jumbo p2, "No sensor - probe disabled"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized disable()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->disableLightSensorLoggingLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final disableLightSensorLoggingLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-nez p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Disable ALS: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ALSProbe"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final declared-synchronized enable()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enableLightSensorLoggingLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final enableLightSensorLoggingLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mEnabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    iget-object v2, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enable ALS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALSProbe"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mTimer:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mMaxSubscriptionTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    new-instance v3, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/ALSProbe;)V

    invoke-virtual {v0, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_1
    return-void
.end method

.method public final declared-synchronized onNext(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mNextConsumer:Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;

    if-eqz v0, :cond_2

    const-string v1, "ALSProbe"

    const-string v2, "Finishing next consumer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDestroyRequested:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/biometrics/log/ALSProbe;->mDisableRequested:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/log/ALSProbe$NextConsumer;->consume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
