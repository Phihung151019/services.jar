.class public final Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mEventType:I

.field public final mIntValue1:I

.field public final mIntValue2:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    iput p3, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue1:I

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mIntValue2:I

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$LoudnessEvent;->mEventType:I

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string v0, "FIXME invalid event type:"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Loudness client with pid %d died"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Stop loudness updates for piid %d for client pid %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "Start loudness updates for piid %d for client pid %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
