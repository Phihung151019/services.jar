.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/audio/AudioService;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    const/4 v0, 0x1

    const/16 v1, 0x80

    const-string v2, "AS.AudioService"

    const-string v3, ""

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    const/4 p1, -0x1

    invoke-static {v1, v3, p0, p1}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    move-result p2

    if-eqz p2, :cond_0

    sget-object v3, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    invoke-direct {v4, p2, v1, p0, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZI)V

    invoke-virtual {v4}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->eventToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result p1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3, v0, p1}, Landroid/media/AudioSystem;->setDeviceAbsoluteVolumeEnabled(ILjava/lang/String;ZI)I

    move-result p0

    if-eqz p0, :cond_3

    sget-object p2, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIZI)V

    invoke-virtual {v3}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;->eventToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0, v2}, Lcom/android/server/utils/EventLogger;->enqueueAndSlog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
