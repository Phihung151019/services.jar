.class public final Lcom/android/server/companion/virtual/audio/VirtualAudioController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# instance fields
.field public final mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

.field public final mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

.field public final mCallbackLock:Ljava/lang/Object;

.field public mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

.field public final mContext:Landroid/content/Context;

.field public mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mPlayingAppUids:Landroid/util/ArraySet;

.field public mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

.field public final mRunningAppUids:Landroid/util/ArraySet;

.field public final mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/AttributionSource;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/audio/VirtualAudioController;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    new-instance v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    const-string/jumbo p0, "virtual_devices.value_virtual_audio_created_count"

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void
.end method

.method public static findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;
    .locals 4

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addPlayingAppsForTesting(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasPendingRunnable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final notifyAppsNeedingAudioRoutingChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0, v1}, Landroid/companion/virtual/audio/IAudioRoutingCallback;->onAppsNeedingAudioRoutingChanged([I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_3
    const-string/jumbo v0, "VirtualAudioController"

    const-string/jumbo v1, "RemoteException when calling updateReroutingApps"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-static {v2, v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->findPlayingAppUids(Landroid/util/ArraySet;Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo p0, "VirtualAudioController"

    const-string p1, "Audio is playing, do not change rerouted apps"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p1, "VirtualAudioController"

    const-string/jumbo v1, "The last playing app removed, delay change rerouted apps"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->notifyAppsNeedingAudioRoutingChanged()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v0, p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iput-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    iput-object p3, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRunningAppUids:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mPlayingAppUids:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    iput-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object p2, p1, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    iput-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object p0, p1, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p3}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final stopListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mUpdateAudioRoutingRunnable:Lcom/android/server/companion/virtual/audio/VirtualAudioController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioPlaybackDetector:Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;

    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v2, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioPlaybackCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioPlaybackDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mAudioRecordingDetector:Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;

    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_2

    iput-object v2, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioRecordingCallback:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v1, v0, Lcom/android/server/companion/virtual/audio/AudioRecordingDetector;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mGenericWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mRoutingCallback:Landroid/companion/virtual/audio/IAudioRoutingCallback;

    iput-object v2, p0, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->mConfigChangedCallback:Landroid/companion/virtual/audio/IAudioConfigChangedCallback;

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
