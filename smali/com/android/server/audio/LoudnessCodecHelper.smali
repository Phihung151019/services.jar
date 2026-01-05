.class public final Lcom/android/server/audio/LoudnessCodecHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final SPL_RANGE_LARGE:I = 0x3

.field static final SPL_RANGE_MEDIUM:I = 0x2

.field static final SPL_RANGE_SMALL:I = 0x1

.field static final SPL_RANGE_UNKNOWN:I

.field public static final sLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedProperties:Ljava/util/HashMap;

.field public final mDispatcherLock:Ljava/lang/Object;

.field public final mLock:Ljava/lang/Object;

.field public final mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

.field public final mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

.field public final mPiidToPidCache:Landroid/util/SparseIntArray;

.field public final mStartedConfigInfo:Ljava/util/HashMap;

.field public final mStartedConfigPiids:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x1e

    const-string/jumbo v2, "Loudness updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-direct {v0, p0}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;-><init>(Lcom/android/server/audio/LoudnessCodecHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToDeviceIdCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    return-void
.end method


# virtual methods
.method public final dispatchNewLoudnessParameters(ILandroid/os/PersistableBundle;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mDispatcherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/ILoudnessCodecUpdatesDispatcher;

    invoke-interface {v3, p1, p2}, Landroid/media/ILoudnessCodecUpdatesDispatcher;->dispatchLoudnessCodecParameterChange(ILandroid/os/PersistableBundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AS.LoudnessCodecHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error dispatching for sessionId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bundle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLoudnessUpdateDispatchers:Lcom/android/server/audio/LoudnessCodecHelper$LoudnessRemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "\nRegistered clients:\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigPiids:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mPiidToPidCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mStartedConfigInfo:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_1

    const-string/jumbo v7, "Player piid %d pid %d active codec types %s\n"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v8, Lcom/android/server/audio/LoudnessCodecHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v8, ", "

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/android/server/audio/LoudnessCodecHelper;->sLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v4

    :try_start_0
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/media/permission/SafeCloseable;->close()V

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x3

    if-ne p1, v2, :cond_9

    const-string/jumbo p1, "audio.loudness.builtin-speaker-spl-range-size"

    const-string/jumbo p2, "unknown"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "small"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "large"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "medium"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_4
    move p1, v0

    goto :goto_4

    :cond_5
    :goto_1
    :pswitch_0
    move p1, v1

    goto :goto_4

    :cond_6
    :goto_2
    :pswitch_1
    move p1, v5

    goto :goto_4

    :cond_7
    :goto_3
    :pswitch_2
    move p1, v2

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result p1

    if-nez p1, :cond_7

    iget p1, v3, Lcom/android/server/audio/AudioService;->mPlatformType:I

    if-ne p1, v2, :cond_5

    goto :goto_3

    :cond_9
    const/high16 v3, 0x4000000

    if-eq p1, v3, :cond_6

    const/16 v3, 0x8

    if-eq p1, v3, :cond_6

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result v6

    if-eqz v6, :cond_a

    if-ne p2, v5, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {p1}, Landroid/media/AudioSystem;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne p2, v3, :cond_b

    goto :goto_3

    :cond_b
    const/4 p1, 0x5

    if-ne p2, p1, :cond_c

    goto :goto_1

    :cond_c
    if-ne p2, v4, :cond_4

    goto :goto_1

    :goto_4
    iget-boolean p2, p3, Landroid/media/LoudnessCodecInfo;->isDownmixing:Z

    iget p3, p3, Landroid/media/LoudnessCodecInfo;->metadataType:I

    new-instance v3, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;

    invoke-direct {v3, p3, p1, p2}, Lcom/android/server/audio/LoudnessCodecHelper$LoudnessCodecInputProperties;-><init>(IIZ)V

    iget-object v6, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PersistableBundle;

    return-object p0

    :cond_d
    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v7, "aac-drc-effect-type"

    const-string/jumbo v8, "aac-drc-heavy-compression"

    const-string/jumbo v9, "aac-target-ref-level"

    if-eq p1, v1, :cond_13

    const/16 v10, 0x60

    if-eq p1, v2, :cond_11

    if-eq p1, v5, :cond_f

    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    if-ne p3, v1, :cond_e

    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_e
    if-ne p3, v2, :cond_15

    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_f
    const/16 p1, 0x7c

    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    if-ne p3, v1, :cond_10

    invoke-virtual {v6, v8, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_10
    if-ne p3, v2, :cond_15

    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_11
    invoke-virtual {v6, v9, v10}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    if-ne p3, v1, :cond_12

    invoke-virtual {v6, v8, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_12
    if-ne p3, v2, :cond_15

    invoke-virtual {v6, v7, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_13
    const/16 p1, 0x40

    invoke-virtual {v6, v9, p1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    if-ne p3, v1, :cond_14

    invoke-virtual {v6, v8, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    :cond_14
    if-ne p3, v2, :cond_15

    invoke-virtual {v6, v7, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    :cond_15
    :goto_5
    iget-object p0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mCachedProperties:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_16

    :try_start_1
    invoke-interface {v4}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_6
    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4041708b -> :sswitch_2
        0x61fbb3b -> :sswitch_1
        0x6879507 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/audio/LoudnessCodecHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/audio/LoudnessCodecHelper;->getCodecBundle_l(ILjava/lang/String;Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    return-object p0
.end method
