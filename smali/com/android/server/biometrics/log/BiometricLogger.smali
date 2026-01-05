.class public Lcom/android/server/biometrics/log/BiometricLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public mFirstAcquireTimeMs:J

.field public mShouldLogMetrics:Z

.field public final mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mStatsAction:I

.field public final mStatsClient:I

.field public final mStatsModality:I


# direct methods
.method public constructor <init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    iput p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iput p2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iput p3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    new-instance p1, Lcom/android/server/biometrics/log/ALSProbe;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x1

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    invoke-direct {p1, p6, p2, p3, p4}, Lcom/android/server/biometrics/log/ALSProbe;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;J)V

    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .locals 7

    sget-object v4, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/hardware/SensorManager;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(IIILcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;Lcom/android/server/biometrics/AuthenticationStatsCollector;Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;
    .locals 6

    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method


# virtual methods
.method public final logOnEnrolled(JIIIZ)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enroll latency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mALSProbe:Lcom/android/server/biometrics/log/ALSProbe;

    iget v8, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v4

    const/4 v7, -0x1

    const/16 v1, 0xb8

    move v3, p3

    move v9, p4

    move/from16 v10, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJZIFII)V

    return-void
.end method

.method public final logOnError(Lcom/android/server/biometrics/log/OperationContextExt;III)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error latency: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricLogger"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    iget v4, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v5, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    const/4 v6, 0x0

    move-object v2, p1

    move v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-static/range {v2 .. v11}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    return-void
.end method

.method public final shouldSkipLogging()Z
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsAction:I

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "BiometricLogger"

    if-nez v1, :cond_2

    const-string/jumbo v1, "Unknown field detected: MODALITY_UNKNOWN, will not report metric"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v0, "Unknown field detected: ACTION_UNKNOWN, will not report metric"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsClient:I

    if-nez p0, :cond_4

    const-string/jumbo p0, "Unknown field detected: CLIENT_UNKNOWN"

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2
.end method
