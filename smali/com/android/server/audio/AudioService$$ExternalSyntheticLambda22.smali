.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda22;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/media/audiopolicy/AudioMixingRule;

    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    invoke-virtual {p1, p0}, Landroid/media/audiopolicy/AudioMix;->setAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/server/audio/AudioService;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "setFoldState"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v2, v0}, Landroid/media/ISpatializer;->setFoldState(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Error calling setFoldState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "on"

    goto :goto_2

    :cond_1
    const-string/jumbo p1, "off"

    :goto_2
    const-string/jumbo v0, "device_folded="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x31

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_1
    check-cast p0, Lcom/android/server/audio/AudioService;

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    double-to-float v0, v2

    monitor-enter v1

    :try_start_4
    const-string/jumbo v2, "setDisplayOrientation"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->checkSpatializer(Ljava/lang/String;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_5

    :cond_2
    :try_start_5
    iget-object v2, v1, Lcom/android/server/audio/SpatializerHelper;->mSpat:Landroid/media/ISpatializer;

    invoke-interface {v2, v0}, Landroid/media/ISpatializer;->setDisplayOrientation(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_6
    const-string v2, "AS.SpatializerHelper"

    const-string v3, "Error calling setDisplayOrientation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    monitor-exit v1

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rotation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v3, 0x30

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :goto_6
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :pswitch_2
    check-cast p0, Lcom/android/server/audio/AudioService;

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    const-string/jumbo v0, "muteAwaitConnection timeout, clearing expected device "

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMuteAwaitConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, v2}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_3
    const-string v2, "AS.AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMutedUsagesAwaitingConnection:[I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mMutingExpectedDevice:Landroid/media/AudioDeviceAttributes;

    iput-object v2, p0, Lcom/android/server/audio/AudioService;->mMutedUsagesAwaitingConnection:[I

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;

    invoke-direct {v1, p1, v0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda26;-><init>(Landroid/media/AudioDeviceAttributes;[I)V

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->dispatchMuteAwaitConnection(Ljava/util/function/BiConsumer;)V

    :goto_7
    return-void

    :goto_8
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :pswitch_3
    check-cast p0, Lcom/android/server/audio/AudioService;

    check-cast p1, Landroid/media/PlayerBase;

    sget p1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
