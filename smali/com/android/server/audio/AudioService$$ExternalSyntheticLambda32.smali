.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/audio/AudioService;

    iput p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda32;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda32;->f$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda32;->f$1:I

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x80

    const-string v3, "AS.AudioService"

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-nez v1, :cond_1

    const-string/jumbo v2, "Updating avrcp not supported in onUpdateContextualVolumes"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p0, :cond_2

    iget-object p2, v0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, ""

    invoke-static {v0, p2, v1, p0}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    move-result p2

    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, p2, p1, v1, p0}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZI)V

    invoke-virtual {v2}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->eventToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
