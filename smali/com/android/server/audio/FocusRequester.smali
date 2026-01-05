.class public final Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAttributes:Landroid/media/AudioAttributes;

.field public final mCallingUid:I

.field public final mClientId:Ljava/lang/String;

.field public mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field public mDevice:I

.field public final mEventLogger:Lcom/android/server/utils/EventLogger;

.field public final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field public mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field public final mFocusGainRequest:I

.field public mFocusLossFadeLimbo:Z

.field public mFocusLossReceived:I

.field public mFocusLossWasNotified:Z

.field public final mGrantFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mSdkTarget:I

.field public final mSourceRef:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;ILcom/android/server/utils/EventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    iput-object p1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    iput-object p8, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iput p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iput p3, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    iput-object p10, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iput p11, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    iput-object p12, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/utils/EventLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    iput-boolean v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getFlags()I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getSdkTarget()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    iput-object p2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iput-object p3, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    iput-object p5, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iput-object p6, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public static focusChangeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "[invalid focus change"

    const-string/jumbo v1, "]"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object p0

    :pswitch_1
    const-string p0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object p0

    :pswitch_2
    const-string p0, "GAIN_TRANSIENT"

    return-object p0

    :pswitch_3
    const-string p0, "GAIN"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "none"

    return-object p0

    :pswitch_5
    const-string p0, "LOSS"

    return-object p0

    :pswitch_6
    const-string p0, "LOSS_TRANSIENT"

    return-object p0

    :pswitch_7
    const-string p0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dispatchFocusChange(ILjava/lang/String;)I
    .locals 9

    const-string/jumbo v0, "dispatch: "

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x0

    const-string v4, "FocusRequester"

    if-nez v2, :cond_0

    const-string/jumbo p0, "dispatchFocusChange: no focus dispatcher"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    if-ne p1, v6, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v5, p1, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "focus gain was requested with "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dispatching "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v5, -0x3

    if-eq p1, v5, :cond_4

    const/4 v5, -0x2

    if-eq p1, v5, :cond_4

    const/4 v5, -0x1

    if-ne p1, v5, :cond_5

    :cond_4
    iput p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    :cond_5
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v2, p1, v5}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    new-instance v2, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p2

    new-instance v0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dispatch failed: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v0, v6, v4}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v3
.end method

.method public final dispatchFocusChangeWithFadeLocked(ILjava/util/List;)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_a

    iget-object v6, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v6, v6, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    iget-object v6, v6, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    iget-object v7, v6, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v6, :cond_a

    :goto_0
    move-object/from16 v6, p2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_a

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/FocusRequester;

    iget-object v7, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v8, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v9, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    monitor-exit v8

    :goto_1
    move/from16 v16, v2

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    iget-object v9, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v6, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_2

    goto :goto_3

    :cond_2
    iget v9, v0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    const/4 v12, 0x2

    and-int/2addr v9, v12

    if-eqz v9, :cond_3

    :goto_3
    monitor-exit v8

    goto :goto_1

    :cond_3
    iget-object v9, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPlaybackConfiguration;

    move/from16 v16, v2

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v2

    if-ne v2, v12, :cond_5

    iget-object v2, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    iget-object v14, v2, Lcom/android/server/audio/FadeOutManager;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v2, Lcom/android/server/audio/FadeOutManager;->mFadeConfigurations:Lcom/android/server/audio/FadeConfigurations;

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v11

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v12

    invoke-virtual {v2, v10, v11, v12}, Lcom/android/server/audio/FadeConfigurations;->isFadeable(Landroid/media/AudioAttributes;II)Z

    move-result v2

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_4

    :try_start_3
    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    invoke-virtual {v15}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    monitor-exit v8

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_5
    :goto_5
    move/from16 v2, v16

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_4

    :cond_6
    move/from16 v16, v2

    if-eqz v14, :cond_7

    iget-object v2, v7, Lcom/android/server/audio/PlaybackActivityMonitor;->mFadeOutManager:Lcom/android/server/audio/FadeOutManager;

    iget v6, v0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v2, v6, v13}, Lcom/android/server/audio/FadeOutManager;->fadeOutUid(ILjava/util/List;)V

    :cond_7
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v10, v14

    :goto_6
    if-eqz v10, :cond_8

    iput-boolean v5, v0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    iget-object v1, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    invoke-virtual {v1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v16

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    :goto_7
    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :cond_9
    :goto_8
    iput-boolean v3, v0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {v4, v0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    :cond_a
    const-string/jumbo v2, "focus with fade"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  source:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const-string v3, "DELAY_OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    and-int/lit8 v3, v2, 0x4

    const-string/jumbo v4, "|"

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "LOCK"

    invoke-static {v1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string/jumbo v2, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-static {v1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    invoke-static {v1}, Lcom/android/server/audio/FocusRequester;->focusChangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- notified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- limbo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mDevice:I

    const-string v2, " -- sdk:"

    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final handleFocusGain()V
    .locals 7

    const-string v0, "FocusRequester"

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iput-boolean v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossFadeLimbo:Z

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v4, :cond_0

    iget-boolean v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    new-instance v4, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string/jumbo v5, "handleGain"

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    const-string/jumbo v5, "handleGain no listener"

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lcom/android/server/audio/MediaFocusControl;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v4, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleGain exc: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v3, v1}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v4, v3, v0}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public final handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    iget v3, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v0, v3, :cond_15

    iput v0, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    iget-object v4, v1, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iget-boolean v5, v4, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    iget v6, v1, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    const/4 v7, -0x3

    if-nez v5, :cond_0

    if-ne v0, v7, :cond_0

    and-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_0
    const-string v5, "FocusRequester"

    const/4 v8, 0x1

    if-ne v0, v7, :cond_3

    if-eqz v2, :cond_3

    iget-object v9, v4, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    if-eqz v9, :cond_1

    iget-boolean v10, v9, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    if-eqz v10, :cond_1

    const-string/jumbo v0, "not duckPlayers - IgnoreDucking By ALL Apps"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_1
    if-eqz v9, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " Ignore Ducking By Navigation = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v9, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    const-string v12, "AS.AudioService"

    invoke-static {v12, v10, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v9, v9, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v9

    const/16 v10, 0xc

    if-eq v9, v10, :cond_2

    iget-object v9, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v9

    if-ne v9, v8, :cond_3

    iget-object v9, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v9

    if-ne v9, v8, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_3
    if-eqz v2, :cond_12

    iget v9, v2, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v10, v1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne v9, v10, :cond_4

    goto/16 :goto_4

    :cond_4
    const/4 v9, 0x2

    if-ne v0, v7, :cond_11

    if-nez p3, :cond_5

    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez p3, :cond_6

    const/16 v0, 0x19

    iget v6, v1, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    if-gt v6, v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget-object v6, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayerLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_7

    monitor-exit v6

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_7
    iget-object v7, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mPlayers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v13

    invoke-virtual {v2, v13}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_8

    if-nez p3, :cond_9

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v13

    if-ne v13, v9, :cond_9

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    monitor-exit v6

    :goto_1
    move v9, v12

    goto/16 :goto_5

    :cond_9
    sget-object v13, Lcom/android/server/audio/PlaybackActivityMonitor;->UNDUCKABLE_PLAYER_TYPES:[I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    invoke-virtual {v11}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyPlayerType(I)Ljava/lang/String;

    monitor-exit v6

    goto :goto_1

    :cond_a
    iget-object v13, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v14, v13, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByAllApps:Z

    if-eqz v14, :cond_b

    const-string v0, "AS.PlaybackActivityMon"

    const-string/jumbo v2, "not duckPlayers - IgnoreDuckingBy ALL Apps "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_1

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, " Ignore Ducking By Navigation = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v15, v13, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "AS.AudioService"

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v13, v13, Lcom/android/server/audio/AudioService;->mIgnoreDuckingByNavigation:Z

    if-eqz v13, :cond_d

    iget-object v13, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v13}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_c

    iget-object v13, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v13}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v13

    if-ne v13, v9, :cond_d

    iget-object v13, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v13}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v13

    if-ne v13, v9, :cond_d

    :cond_c
    const-string v0, "AS.PlaybackActivityMon"

    const-string/jumbo v2, "not duckPlayers - IgnoreDucking By Navigation "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto :goto_1

    :cond_d
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    iget-object v0, v0, Lcom/android/server/audio/PlaybackActivityMonitor;->mDuckingManager:Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    iget v7, v1, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget v11, v2, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    const/4 v13, 0x3

    if-eq v11, v13, :cond_f

    goto :goto_2

    :cond_f
    iget-object v2, v2, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/16 v11, 0x10

    if-ne v2, v11, :cond_10

    move v12, v9

    :cond_10
    :goto_2
    invoke-virtual {v0, v7, v10, v12}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->duckUid(ILjava/util/ArrayList;Z)V

    monitor-exit v6

    goto :goto_5

    :goto_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_11
    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    iget-object v0, v4, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    new-instance v2, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-direct {v2, v10}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v6, v1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v6}, Lcom/android/server/audio/MediaFocusControl;->getFadeInDelayForOffendersMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    :goto_4
    move v9, v3

    :goto_5
    if-eqz v9, :cond_13

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    return-void

    :cond_13
    iget-object v0, v1, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, v1, Lcom/android/server/audio/FocusRequester;->mEventLogger:Lcom/android/server/utils/EventLogger;

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    invoke-virtual {v4, v3, v8}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    iput-boolean v8, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossWasNotified:Z

    :try_start_1
    iget v3, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget-object v4, v1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v3, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const-string/jumbo v4, "handleLoss"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v4, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "handleLoss failed exc: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v4, v0}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v3, v8, v5}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_6

    :cond_14
    new-instance v0, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;

    iget v3, v1, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    const-string/jumbo v4, "handleLoss failed no listener"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/FocusRequester$FocusRequestEvent;-><init>(Lcom/android/server/audio/FocusRequester;ILjava/lang/String;)V

    invoke-virtual {v0, v8, v5}, Lcom/android/server/utils/EventLogger$Event;->printSlog(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_15
    :goto_6
    return-void
.end method

.method public final handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x3

    if-eq p1, v4, :cond_0

    const/4 v7, 0x2

    if-eq p1, v7, :cond_1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v7, v6, :cond_3

    if-eq v7, v3, :cond_3

    if-eq v7, v5, :cond_3

    if-eqz v7, :cond_3

    :cond_1
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v7, v6, :cond_4

    if-eq v7, v3, :cond_4

    if-eq v7, v5, :cond_3

    if-eqz v7, :cond_4

    :cond_2
    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    if-eq v7, v6, :cond_5

    if-eq v7, v3, :cond_4

    if-eq v7, v5, :cond_3

    if-eqz v7, :cond_5

    :goto_0
    const-string/jumbo v6, "focusLossForGainRequest() for invalid focus request "

    const-string v7, "FocusRequester"

    invoke-static {p1, v6, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v6, v0

    goto :goto_1

    :cond_3
    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v3

    :cond_5
    :goto_1
    if-ne v6, v5, :cond_6

    iget-object p1, p0, Lcom/android/server/audio/FocusRequester;->mFocusController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v7, p1, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v8, "delay_loss_audio_focus"

    iget-object v9, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz p2, :cond_6

    const-string/jumbo v7, "com.android.bluetooth"

    iget-object v8, p2, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "com.samsung.android.mcfds"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "postDelayedForLossAudioFocus: clientId = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    const-string/jumbo v8, "MediaFocusControl"

    invoke-static {v6, v7, v8}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    invoke-virtual {v6, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Lcom/android/server/audio/MediaFocusControl$4;

    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v6, 0x3a98

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_6
    move v3, v6

    :goto_2
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    if-ne v3, v5, :cond_7

    return v4

    :cond_7
    return v0
.end method

.method public final hasSameBinder(Landroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSameClient(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSameUid(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final release()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/FocusRequester;->mSourceRef:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    iput-object v0, p0, Lcom/android/server/audio/FocusRequester;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    return-void
.end method

.method public final toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .locals 9

    new-instance v0, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget v6, p0, Lcom/android/server/audio/FocusRequester;->mFocusLossReceived:I

    iget v7, p0, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    iget v8, p0, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    iget v2, p0, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    iget-object v3, p0, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    invoke-direct/range {v0 .. v8}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    return-object v0
.end method
