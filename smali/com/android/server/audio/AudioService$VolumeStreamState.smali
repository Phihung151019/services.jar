.class public Lcom/android/server/audio/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

.field public final mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mIndexMinNoPerm:I

.field public mIndexStepFactor:F

.field public mIsMuted:Z

.field public mIsMutedInternally:Z

.field public mObservedDeviceSet:Ljava/util/Set;

.field public final mStreamDevicesChanged:Landroid/content/Intent;

.field public final mStreamDevicesChangedOptions:Landroid/os/Bundle;

.field public final mStreamType:I

.field public mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

.field public mVolumeIndexSettingName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    new-instance p2, Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-direct {p2, p0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/android/server/audio/CurrentDeviceManager;

    invoke-direct {p2}, Lcom/android/server/audio/CurrentDeviceManager;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    iput-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget-object p2, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    aget p2, p2, p1

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    sget-object p2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p2, p2, p1

    mul-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateIndexFactors()V

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    const-string/jumbo v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final applyAllVolumes()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    if-ge v2, v4, :cond_d

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-eq v10, v5, :cond_c

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    :goto_1
    move v11, v3

    goto/16 :goto_4

    :cond_0
    invoke-static {v10}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioService;->isA2dpAbsoluteVolumeDevice(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v10}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v10}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_4
    const/high16 v4, 0x8000000

    if-ne v10, v4, :cond_5

    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    :goto_2
    move v11, v5

    goto :goto_4

    :cond_5
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0xa

    goto :goto_1

    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v10}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v4, v3, 0xa

    goto :goto_2

    :goto_4
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v7, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/16 v8, 0x3ee

    move-object v12, p0

    invoke-static/range {v7 .. v13}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_5

    :cond_9
    move-object v12, p0

    :goto_5
    iget-object p0, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$misMultiSoundPlaying(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice(Z)I

    move-result p0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_b

    if-eq v10, v3, :cond_a

    const/high16 p0, 0x4000000

    if-ne v10, p0, :cond_b

    :cond_a
    if-nez v4, :cond_b

    iget-object p0, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->isMusicActive(Z)Z

    move-result p0

    if-eqz p0, :cond_b

    iget p0, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p0, v6, :cond_b

    const-string p0, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip setStreamVolumeIndex(streamType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") during multi sound playback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    invoke-virtual {v12, v4, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    :goto_6
    move v3, v11

    goto :goto_7

    :cond_c
    move-object v12, p0

    :goto_7
    add-int/lit8 v2, v2, 0x1

    move-object p0, v12

    goto/16 :goto_0

    :cond_d
    move-object v12, p0

    invoke-virtual {v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_8

    :cond_e
    iget p0, v12, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p0, v6, :cond_f

    invoke-virtual {v12, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p0

    div-int/lit8 v0, p0, 0xa

    goto :goto_8

    :cond_f
    invoke-virtual {v12, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    div-int/lit8 v0, p0, 0xa

    :goto_8
    invoke-virtual {v12, v0, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    monitor-exit v1

    return-void

    :goto_9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    sget v2, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isA2dpAbsoluteVolumeDevice(I)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_4
    const/high16 v1, 0x8000000

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    const/high16 v2, 0x20000000

    if-ne p1, v2, :cond_8

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v2, v2, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v1

    goto :goto_1

    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isAbsoluteVolumeDevice(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    :cond_8
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setStreamVolumeIndex(II)V

    new-instance v2, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$VolumeStreamState;II)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, p1, p0, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    return-void
.end method

.method public final checkFixedVolumeDevices()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioService;->isFullVolumeDevice(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v4, v2}, Lcom/android/server/audio/AudioService;->isFixedVolumeDevice(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v3, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final doMute()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIndex(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getIndexDividedBy10(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result p1

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    add-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0xa

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public final getSettingNameForDevice(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasIndexForDevice(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isFullyMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final mute(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;ZZ)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0, p0, p2}, Lcom/android/server/audio/AudioService;->broadcastMuteSetting(IZ)V

    :cond_0
    return p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final mute(Ljava/lang/String;ZZ)Z
    .locals 7

    const-string v0, "Attempt to unmute stream "

    const-string v1, "Do not unmuting stream "

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "setLeBroadcasting"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v6, v4, :cond_2

    const/4 v4, 0x5

    if-ne v6, v4, :cond_3

    :cond_2
    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " because of le broadcasting or ringer, zen mode"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v5

    :cond_3
    sget-object v1, Lcom/android/server/audio/AudioService;->sMuteLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-direct {v4, v6, p1, p2}, Lcom/android/server/audio/AudioServiceEvents$StreamMuteEvent;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-nez p2, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "AS.AudioService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " despite ringer-zen muted stream 0x"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/Exception;

    invoke-direct {p3}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    sget p2, Lcom/android/server/audio/AudioService;->sRingerAndZenModeMutedStreams:I

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioServiceEvents$StreamUnmuteErrorEvent;-><init>(II)V

    invoke-virtual {v1, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    monitor-exit v2

    return v5

    :cond_4
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->doMute()V

    :cond_5
    monitor-exit v2

    return v3

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final observeDevicesForStream_syncVSS(Z)Ljava/util/Set;
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0

    :cond_0
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v7

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService;->postObserveDevicesForAllStreams(I)V

    :cond_1
    sget-object p1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x9c41

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v1, v0, :cond_3

    iget-object v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    iget-boolean v1, v1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v1

    iget-object p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    iget v2, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    if-eq v2, v1, :cond_3

    iput v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    const-string/jumbo v1, "l_volume_prevent_overheat_key;gain"

    invoke-static {v1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    iput v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    iget-object v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    :cond_3
    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, 0xacd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, 0xacf

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mCurrentDeviceManager:Lcom/android/server/audio/CurrentDeviceManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/audio/CurrentDeviceManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p1, Lcom/android/server/audio/CurrentDeviceManager;->callbacks:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_5
    iget-object p1, p1, Lcom/android/server/audio/CurrentDeviceManager;->callbacks:Ljava/util/Set;

    new-instance v2, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/audio/CurrentDeviceManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChanged:Landroid/content/Intent;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamDevicesChangedOptions:Landroid/os/Bundle;

    iput-object p1, v5, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x20

    move v4, v3

    move v3, v7

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mObservedDeviceSet:Ljava/util/Set;

    return-object p0

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final readSettings()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v2, :cond_1

    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v6

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v7, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v7, v7, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, -0x2

    invoke-static {v7, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    :goto_3
    if-ne v5, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    mul-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-ge v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v6, v6, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v6, :cond_6

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le v5, v6, :cond_7

    :cond_6
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    :cond_7
    :goto_4
    invoke-virtual {v4, v3, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    goto :goto_0

    :cond_8
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v3, v2, v1, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v5, p2, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, v6, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v7

    if-eqz v4, :cond_0

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    goto :goto_0

    :cond_0
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :goto_0
    if-ge v1, v8, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v8, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_2

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    if-le v1, v8, :cond_3

    :cond_2
    iget v1, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    :cond_3
    :goto_1
    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    iget-object v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    move v8, v1

    :goto_2
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v9, v2, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    const/4 v9, 0x1

    if-eq v7, v8, :cond_5

    move v11, v9

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    iget-object v12, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v13, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v12, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v12

    if-ne v2, v12, :cond_6

    move v12, v9

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    sub-int/2addr v13, v9

    :goto_5
    const/4 v14, -0x1

    if-ltz v13, :cond_a

    iget-object v15, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v15, v13}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v15

    if-eqz v15, :cond_9

    iget v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v13, v9, :cond_9

    sget-object v9, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget v14, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v9, v14, :cond_9

    if-nez v11, :cond_7

    invoke-virtual {v15, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->hasIndexForDevice(I)Z

    move-result v9

    if-nez v9, :cond_9

    :cond_7
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v14, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v9, v1, v14, v13}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v9

    invoke-virtual {v15, v9, v2, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v14

    if-eqz v12, :cond_8

    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v10, v13}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v10

    invoke-virtual {v15, v9, v10, v3, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result v9

    or-int/2addr v14, v9

    :cond_8
    if-eqz v14, :cond_9

    invoke-static {v13}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    :cond_9
    add-int/lit8 v13, v13, -0x1

    const/4 v9, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x2

    if-eqz v11, :cond_c

    iget v4, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v4, v1, :cond_c

    if-ne v2, v1, :cond_c

    const/4 v4, 0x0

    :goto_6
    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_c

    iget-object v9, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    sget-object v10, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Lcom/android/server/audio/AudioService$VolumeStreamState$1;

    invoke-virtual {v10, v9, v8}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->put(II)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    new-instance v4, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;

    const/4 v9, 0x2

    invoke-direct {v4, v8, v2, v9, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda9;-><init>(IIILjava/lang/Object;)V

    invoke-static {v4}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    if-eqz v11, :cond_14

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateVolumeGroupIndex(IZ)V

    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v9, 0x3

    if-eq v2, v9, :cond_d

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0xa

    :cond_d
    sget-object v10, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v2, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v10, :cond_f

    if-nez v3, :cond_e

    const-string v2, "AS.AudioService"

    const-string/jumbo v10, "No caller for volume_changed event"

    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget v10, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v10, v10, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v12, v13, v10, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v10, 0x9c40

    invoke-static {v10, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_f
    iget v2, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v2, v9, :cond_14

    if-eqz v7, :cond_10

    if-eqz v8, :cond_11

    :cond_10
    if-nez v7, :cond_13

    if-eqz v8, :cond_13

    :cond_11
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    if-nez v8, :cond_12

    const/4 v9, 0x1

    goto :goto_7

    :cond_12
    move v9, v4

    :goto_7
    invoke-virtual {v0, v1, v9, v3}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    goto :goto_8

    :cond_13
    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/16 v1, 0x100

    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/audio/AudioService;->sendBroadcastToSoundEventReceiver(IILjava/lang/String;)V

    :cond_14
    :goto_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v11

    :catchall_1
    move-exception v0

    goto :goto_a

    :goto_9
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :goto_a
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final setStreamVolumeIndex(II)V
    .locals 7

    const/4 v0, 0x2

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->isStreamBluetoothSco(I)Z

    move-result v3

    const-string v4, "AS.AudioService"

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mRemoteMic:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SCO stream volume can be muted while remote mic is active"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    int-to-float v5, v3

    mul-int/lit8 p1, p1, 0xa

    sub-int/2addr p1, v3

    int-to-float p1, p1

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    div-float/2addr p1, v3

    add-float/2addr p1, v5

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr p1, v3

    float-to-int p1, p1

    div-int/lit8 p1, p1, 0xa

    :cond_2
    const-string/jumbo v3, "setStreamVolumeIndexAS(streamType="

    const-string v5, ", index="

    const-string v6, ", muted=false, device="

    invoke-static {v2, p1, v3, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-static {p2, v5, v4, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p2, v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMutedInternally:Z

    if-eqz v3, :cond_3

    if-eq p2, v0, :cond_5

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v4

    const-string/jumbo p0, "l_volume_fine_key;index="

    const-string v2, ";device="

    invoke-static {p1, p2, p0, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance p2, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;

    invoke-direct {p2, v0, p0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    iget-object p0, v1, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v4, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(IIZI)I

    return-void
.end method

.method public final updateIndexFactors()V
    .locals 10

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v2, v0, v1

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v3, v1

    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_6

    const/4 v7, 0x6

    aget v8, v3, v7

    aget v9, v3, v4

    if-le v8, v9, :cond_0

    mul-int/lit8 v8, v8, 0xa

    iput v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    if-nez v4, :cond_1

    iget-object v8, v8, Lcom/android/server/audio/AudioService;->mBtCommDeviceActive:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    if-ne v4, v7, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v4, v4, Lcom/android/server/audio/AudioService;->mBtCommDeviceActive:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ne v4, v6, :cond_3

    aget v2, v0, v7

    mul-int/lit8 v0, v2, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    aget v1, v3, v7

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v0, v3

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    goto :goto_3

    :cond_4
    aget v4, v0, v5

    mul-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    sub-int/2addr v7, v4

    int-to-float v4, v7

    iget v7, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0xa

    aget v0, v0, v7

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v4, v0

    iput v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    :goto_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v3, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMinNoPerm:I

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    move-result v0

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateIndexFactors() stream:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " index min/max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " indexStepFactor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexStepFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "AS.AudioService"

    invoke-virtual {v2, v5, v3}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    if-eqz v0, :cond_7

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v3, "Failed initStreamVolume with status="

    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioService"

    invoke-virtual {v2, v6, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string/jumbo v5, "updateIndexFactors()"

    const/4 v4, 0x0

    const/16 v6, 0x7d0

    const/16 v1, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    :cond_7
    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final updateVolumeGroupIndex(IZ)V
    .locals 6

    const-string/jumbo v0, "updateVolumeGroupIndex for stream "

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mVolumeStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    const-string v4, "AS.AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", muted="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", device="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", index="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", group "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Muted="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    iget-boolean v0, v0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIsMuted:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", Index="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", forceMuteState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    invoke-virtual {p2, v3, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->updateVolumeIndex(II)V

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeGroupState:Lcom/android/server/audio/AudioService$VolumeGroupState;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->mute(Z)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
