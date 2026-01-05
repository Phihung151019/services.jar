.class public final Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mDeviceVolumeBehavior:I

.field public final mHandlesVolumeAdjustment:Z

.field public final mParent:Lcom/android/server/audio/AudioService;

.field public final mVolumeInfos:Ljava/util/List;


# direct methods
.method public static -$$Nest$mgetMatchingVolumeInfoForStream(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;I)Landroid/media/VolumeInfo;
    .locals 6

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasStreamType()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getStreamType()I

    move-result v1

    if-ne v1, p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasVolumeGroup()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iput-object p3, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    iput p6, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDeviceVolumeBehavior:I

    :try_start_0
    invoke-interface {p4}, Landroid/media/IAudioDeviceVolumeDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nCannot listen to callback binder death for device "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->removeAudioSystemDeviceOutFromAbsVolumeDevices(I)Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mParent:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/audio/AudioService;->dispatchDeviceVolumeBehavior(ILandroid/media/AudioDeviceAttributes;)V

    :cond_0
    return-void
.end method
