.class Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

.field public paused:Z

.field public startTimeMillis:J

.field public started:Z

.field public totalDurationSec:F


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final totalDurationSec()F
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->started:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->paused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->clock:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;->elapsedTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->startTimeMillis:J

    :cond_0
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;->totalDurationSec:F

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
