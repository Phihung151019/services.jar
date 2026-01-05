.class public final Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mRingerZenMutedStreams:I

.field public final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    iput-object p2, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RingerZenMutedStreams 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mRingerZenMutedStreams:I

    const-string v2, " from "

    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioServiceEvents$RingerZenMutedStreamsEvent;->mSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
