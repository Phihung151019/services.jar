.class public final Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {v1, p1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_3

    :try_start_3
    invoke-interface {p0, v2}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback;->onPlaybackConfigChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_4
    const-string/jumbo v0, "VirtualAudioController"

    const-string/jumbo v1, "RemoteException when calling onPlaybackConfigChanged"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    monitor-exit p1

    goto :goto_5

    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_4
    :goto_5
    return-void
.end method
