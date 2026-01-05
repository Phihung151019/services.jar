.class public final Lcom/android/server/WiredAccessoryManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mBikeMode:Z

.field public final mContext:Landroid/content/Context;

.field public final mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

.field public final mHandler:Lcom/android/server/WiredAccessoryManager$2;

.field public mHeadsetState:I

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mLock:Ljava/lang/Object;

.field public final mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

.field public mSwitchValues:I

.field public final mUseDevInputEventForAudioJack:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$smupdateBit(Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 3

    const/4 v0, 0x0

    aget v1, p3, v0

    or-int/2addr v1, p2

    aput v1, p3, v0

    const-string v1, "=1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget p0, p3, v0

    or-int/2addr p0, p2

    aput p0, p3, v0

    aget p0, p3, v2

    or-int/2addr p0, p2

    aput p0, p3, v2

    return-void

    :cond_0
    const-string v1, "=0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    aget p0, p3, v0

    or-int/2addr p0, p2

    aput p0, p3, v0

    aget p0, p3, v2

    not-int p1, p2

    and-int/2addr p0, p1

    aput p0, p3, v2

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/WiredAccessoryManager$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/WiredAccessoryManager$2;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string/jumbo v2, "WiredAccessoryManager"

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x111029b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mExtconObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryExtconObserver;

    new-instance p2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p2, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;-><init>(Lcom/android/server/WiredAccessoryManager;)V

    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/server/WiredAccessoryManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v1}, Lcom/android/server/WiredAccessoryManager$1;-><init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "isBikeMode"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final notifyWiredAccessoryChanged(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    not-int p2, p2

    and-int/2addr p2, v1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/WiredAccessoryManager;->mSwitchValues:I

    and-int/lit8 p1, p1, 0x54

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/16 v1, 0x40

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x20

    goto :goto_0

    :cond_1
    move p2, v2

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :cond_3
    :goto_0
    const-string/jumbo p1, "h2w"

    iget v1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    and-int/lit8 v1, v1, -0x24

    or-int/2addr p2, v1

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/WiredAccessoryManager;->updateLocked(ILjava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDevicesState(IILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/16 v2, 0x3f

    move v3, v1

    :goto_0
    if-eqz v2, :cond_a

    and-int v4, v3, v2

    if-eqz v4, :cond_9

    and-int v4, p1, v3

    and-int v5, p2, v3

    if-eq v4, v5, :cond_8

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    const/4 v6, 0x4

    if-ne v3, v1, :cond_1

    const v5, -0x7ffffff0

    goto :goto_2

    :cond_1
    const/4 v7, 0x2

    const/16 v8, 0x8

    if-ne v3, v7, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    const/16 v7, 0x20

    if-ne v3, v7, :cond_3

    const/high16 v6, 0x20000

    goto :goto_2

    :cond_3
    if-ne v3, v6, :cond_4

    const/16 v6, 0x800

    goto :goto_2

    :cond_4
    if-ne v3, v8, :cond_5

    const/16 v6, 0x1000

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    if-ne v3, v6, :cond_7

    const/16 v6, 0x400

    :goto_2
    :try_start_0
    const-string v7, ""

    if-eqz v6, :cond_6

    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6, v4, v7, p3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5, v4, v7, p3}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setDeviceState() invalid headset type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "WiredAccessoryManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    not-int v4, v3

    and-int/2addr v2, v4

    :cond_9
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLocked(ILjava/lang/String;Z)V
    .locals 8

    and-int/lit8 v0, p1, 0x3f

    and-int/lit8 v1, p1, 0x4

    and-int/lit8 v2, p1, 0x8

    const/16 v3, 0x23

    and-int/2addr p1, v3

    iget v4, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    const-string/jumbo v5, "WiredAccessoryManager"

    if-ne v4, v0, :cond_0

    const-string/jumbo p0, "No state change."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-ne p1, v3, :cond_1

    const-string v3, "Invalid combination, unsetting h2w flag"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    const/4 v7, 0x4

    if-ne v1, v7, :cond_2

    const/16 v1, 0x8

    if-ne v2, v1, :cond_2

    const-string v1, "Invalid combination, unsetting usb flag"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_1
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    const-string/jumbo p0, "invalid transition, returning ..."

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p3, :cond_4

    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/WiredAccessoryManager;->setDevicesState(IILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean p3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz p3, :cond_5

    if-eqz p1, :cond_7

    const-string p1, "Bike mode is ON. Earphones disabled"

    invoke-static {v5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-virtual {v1, p1, v4, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_5
    iget-boolean p3, p0, Lcom/android/server/WiredAccessoryManager;->mBikeMode:Z

    if-eqz p3, :cond_6

    if-nez p1, :cond_7

    :cond_6
    const-string/jumbo p1, "MSG_NEW_DEVICE_STATE"

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    invoke-virtual {v1, v6, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_2
    iput v0, p0, Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I

    return-void
.end method
