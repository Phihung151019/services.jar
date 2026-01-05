.class public final Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEventType:I

.field public final mFloatValue:F

.field public final mLongValue:J


# direct methods
.method public constructor <init>(IJF)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    iput p4, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    iput-wide p2, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mFloatValue:F

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mEventType:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;->mLongValue:J

    if-eq v1, v2, :cond_4

    const/4 p0, 0x2

    if-eq v1, p0, :cond_3

    const/4 p0, 0x3

    if-eq v1, p0, :cond_2

    const/4 p0, 0x4

    if-eq v1, p0, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_0

    const-string p0, "FIXME invalid event type:"

    invoke-static {v1, p0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "Updating CSD absolute volume attenuation on device 0x%s with %.2f dB "

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "CSD lowering volume to RS1"

    return-object p0

    :cond_2
    const-string p0, "CSD accumulating: RS2 entered"

    return-object p0

    :cond_3
    const-string p0, "CSD reached 500%"

    return-object p0

    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "dose update CSD=%.1f%% total duration=%d"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "momentary exposure MEL=%.2f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
