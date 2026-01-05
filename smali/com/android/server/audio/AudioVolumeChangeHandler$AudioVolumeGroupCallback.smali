.class public final Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;
.super Landroid/media/INativeAudioVolumeGroupCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioVolumeChangeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;->this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;

    invoke-direct {p0}, Landroid/media/INativeAudioVolumeGroupCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioVolumeGroupChanged(Landroid/media/audio/common/AudioVolumeGroupChangeEvent;)V
    .locals 6

    const-string v0, "AudioVolumeChangeHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAudioVolumeGroupChanged volumeEvent="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;->this$0:Lcom/android/server/audio/AudioVolumeChangeHandler;

    iget v0, p1, Landroid/media/audio/common/AudioVolumeGroupChangeEvent;->groupId:I

    iget p1, p1, Landroid/media/audio/common/AudioVolumeGroupChangeEvent;->flags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    invoke-interface {v4, v0, p1}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;->onAudioVolumeGroupChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "AudioVolumeChangeHandler"

    const-string v5, "Failed to broadcast Volume Changed event"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
