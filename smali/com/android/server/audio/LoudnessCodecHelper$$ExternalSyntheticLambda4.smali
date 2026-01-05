.class public final synthetic Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/LoudnessCodecHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/LoudnessCodecHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/audio/LoudnessCodecHelper;

    check-cast p1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientPid()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessTrackId;-><init>(II)V

    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/LoudnessCodecInfo;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/LoudnessCodecInfo;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getInternalType()I

    move-result v6

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v4}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isDefinitelyEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/LoudnessCodecHelper;->dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
