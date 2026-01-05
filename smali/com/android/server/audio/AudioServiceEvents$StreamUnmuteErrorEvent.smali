.class public final Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    iput p2, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mStreamType:I

    if-gt v1, v0, :cond_0

    if-ltz v1, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "stream "

    invoke-static {v1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Invalid call to unmute "

    const-string v2, " despite muted streams 0x"

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;->mRingerZenMutedStreams:I

    invoke-static {v0, p0}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
