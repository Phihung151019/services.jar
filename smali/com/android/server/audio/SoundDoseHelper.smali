.class public final Lcom/android/server/audio/SoundDoseHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mCachedAudioDeviceCategories:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mCsdAsAFeatureLock:Ljava/lang/Object;

.field public final mCsdStateLock:Ljava/lang/Object;

.field public mCurrentCsd:F

.field public final mDoseRecords:Ljava/util/List;

.field public final mEarShockLogger:Lcom/android/server/utils/EventLogger;

.field public final mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mGlobalTimeOffsetInSecs:J

.field public mIsCsdAsAFeatureAvailable:Z

.field public mIsCsdAsAFeatureEnabled:Z

.field public mIsVolumeEffectOn:Z

.field public mLastMomentaryExposureTimeMs:J

.field public mLastMusicActiveTimeMs:J

.field public final mLogger:Lcom/android/server/utils/EventLogger;

.field public mMcc:I

.field public mMusicActiveIntent:Landroid/app/PendingIntent;

.field public mMusicActiveMs:I

.field public mNextCsdWarning:F

.field public mPendingVolumeCommand:Lcom/android/server/audio/SoundDoseHelper$StreamVolumeCommand;

.field public final mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeDbfs:F

.field public final mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

.field public mSafeMediaVolumeIndex:I

.field public mSafeMediaVolumeState:I

.field public mSafeMediaVolumeStateForBlueTooth:I

.field public final mSafeMediaVolumeStateLock:Ljava/lang/Object;

.field public final mSettings:Lcom/android/server/audio/SettingsAdapter;

.field public final mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

.field public mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method public static -$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  new record: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.SoundDoseHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Landroid/media/SoundDoseRecord;->duration:I

    int-to-long v8, v6

    add-long/2addr v1, v8

    iget v6, v5, Landroid/media/SoundDoseRecord;->value:F

    const/4 v8, 0x0

    cmpg-float v9, v6, v8

    if-gez v9, :cond_0

    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    new-instance v8, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;

    invoke-direct {v8, v5}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda3;-><init>(Landroid/media/SoundDoseRecord;)V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Could not find cached record to remove: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    const/16 p1, 0x3ed

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v4, p1, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/SettingsAdapter;Lcom/android/server/audio/AudioService$VolumeController;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string v2, "CSD updates"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    iput-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    new-instance v3, Lcom/android/server/audio/SoundDoseHelper$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/SoundDoseHelper$1;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    iput-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    new-instance v5, Lcom/android/server/utils/EventLogger;

    const/16 v6, 0x1e

    const-string v7, "Ear shock level history"

    invoke-direct {v5, v6, v7}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mEarShockLogger:Lcom/android/server/utils/EventLogger;

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iput-object p3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iput-object p4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iput-object p5, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    iput-object p2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    const/4 p3, 0x4

    const/4 p5, -0x1

    invoke-virtual {v1, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p3, 0x8

    invoke-virtual {v1, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/high16 p3, 0x4000000

    invoke-virtual {v1, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/high16 p3, 0x20000000

    invoke-virtual {v1, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    const v5, 0x20000002

    invoke-virtual {v1, v5, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v6, 0x100

    invoke-virtual {v1, v6, p5}, Landroid/util/SparseIntArray;->append(II)V

    sget-boolean v7, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    const/16 v7, 0x80

    invoke-virtual {v1, v7, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/high16 v8, 0x8000000

    invoke-virtual {v1, v8, p5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v9, 0x4000

    invoke-virtual {v1, v9, p5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v4, v7, p5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v4, v6, p5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v4, p3, p5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v4, v5, p5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v4, v8, p5}, Landroid/util/SparseIntArray;->append(II)V

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p3, "audio_safe_volume_state"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0143

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    invoke-static {v3}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    const-string/jumbo p1, "alarm"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static safeMediaVolumeStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object p0

    :cond_1
    const-string/jumbo p0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object p0

    :cond_2
    const-string/jumbo p0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object p0

    :cond_3
    const-string/jumbo p0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object p0
.end method


# virtual methods
.method public final checkSafeMediaVolume(III)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/SoundDoseHelper;->checkSafeMediaVolume_l(III)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkSafeMediaVolume_l(III)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    iget-boolean v0, v0, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result p1

    if-le p2, p1, :cond_3

    const-string/jumbo p1, "ro.csc.countryiso_code"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeBTDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final configureSafeMedia(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e9

    :goto_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo v4, "audio.safemedia.bypass"

    invoke-static {v4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    const/16 p1, 0x7530

    :goto_1
    int-to-long v4, p1

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    const-string p1, "AS.AudioService"

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final enforceSafeMediaVolume(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v5, v3, p1, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v4, v1, v3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final enforceSafeMediaVolumeIfActive()V
    .locals 4

    const-string v0, "AS.AudioService"

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSafeDeviceMediaVolumeIndex(I)I
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_2

    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    return p0

    :cond_2
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0144

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    :goto_1
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, p1}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDbfs:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    :goto_2
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-eqz p1, :cond_7

    const/4 p0, 0x7

    goto :goto_3

    :cond_7
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e0143

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_3

    :cond_8
    const/16 p0, 0x9

    :goto_3
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    const-string p0, "AS.SoundDoseHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected msg to handle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/audio/AudioService;->getDevicesForAttributesInt(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "AS.SoundDoseHelper"

    if-eqz v4, :cond_0

    const-string p0, "Cannot lower the volume to RS1, no devices registered for USAGE_MEDIA"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v10}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->safeMediaVolumeIndex(I)I

    move-result v3

    div-int/lit8 v8, v3, 0xa

    new-instance v3, Landroid/media/VolumeInfo$Builder;

    invoke-direct {v3, v2}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v2

    const-string/jumbo v3, "sounddosehelper"

    invoke-virtual {v0, v2, v10, v3}, Lcom/android/server/audio/AudioService;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v2

    if-ge v8, v2, :cond_1

    new-instance p1, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const-wide/16 v2, 0x0

    const/4 v0, 0x4

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v6, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/audio/AudioService;->setStreamVolumeWithAttributionInt(IIILandroid/media/AudioDeviceAttributes;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The current volume "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for device type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is already smaller or equal to the safe index volume "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v8, v5}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v4, :cond_2

    move v3, v4

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    iget p1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ISoundDose;

    const-string v6, "AS.SoundDoseHelper"

    if-nez v5, :cond_4

    const-string p0, "Can not apply attenuation. ISoundDose itf is null."

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    const/4 v8, 0x5

    if-nez v3, :cond_6

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_5

    new-instance p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    int-to-long v2, v0

    invoke-direct {p0, v8, v2, v3, v1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    invoke-virtual {v7, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_5
    :goto_0
    invoke-interface {v5, v1, v0}, Landroid/media/ISoundDose;->updateAttenuation(FI)V

    return-void

    :cond_6
    sget-object v1, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-ne p1, v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->safeDevicesContains(I)Z

    move-result p1

    if-eqz p1, :cond_8

    add-int/lit8 p1, v4, 0x5

    div-int/lit8 p1, p1, 0xa

    invoke-static {v2, p1, v0}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result p1

    neg-float p1, p1

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_7

    new-instance p0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    int-to-long v1, v0

    invoke-direct {p0, v8, v1, v2, p1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    invoke-virtual {v7, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_7
    invoke-interface {v5, p1, v0}, Landroid/media/ISoundDose;->updateAttenuation(FI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not apply the attenuation for MEL calculation with volume index "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return-void

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "audio_safe_csd_current_value"

    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "audio_safe_csd_next_warning"

    iget v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "audio_safe_csd_dose_records"

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/audio/SoundDoseHelper;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string/jumbo v3, "|"

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "unsafe_volume_music_active_ms"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x2

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "audio_safe_volume_state"

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_5
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_a

    move v3, v4

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    if-ne v2, v0, :cond_b

    if-nez v2, :cond_e

    if-eqz v3, :cond_e

    :cond_b
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    iget-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsVolumeEffectOn:Z

    if-eqz v3, :cond_c

    const/16 v2, 0x3c

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    const/16 v2, 0x46

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    :goto_5
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeIndex:I

    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMcc:I

    :cond_e
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initCsd()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ISoundDose;

    if-nez v0, :cond_0

    const-string p0, "AS.SoundDoseHelper"

    const-string v0, "ISoundDose instance is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/media/ISoundDose;->setCsdEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Cannot disable CSD"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    new-array v3, v1, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ISoundDose$AudioDeviceCategory;

    invoke-interface {v0, v2}, Landroid/media/ISoundDose;->initCachedAudioDeviceCategories([Landroid/media/ISoundDose$AudioDeviceCategory;)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCachedAudioDeviceCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "AS.SoundDoseHelper"

    const-string v3, "Exception while initializing the cached audio device categories"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "audio_safe_csd_as_a_feature_enabled"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x2

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_3
    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const-string/jumbo v3, "audio_safe_csd_current_value"

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(FLjava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "audio_safe_csd_next_warning"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v0}, Lcom/android/server/audio/SoundDoseHelper;->parseGlobalSettingFloat(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v3, v3, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "audio_safe_csd_dose_records"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mGlobalTimeOffsetInSecs:J

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const-string/jumbo v5, "\\|"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/audio/SoundDoseHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->sanitizeDoseRecords_l()V

    :cond_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->reset(Z)V

    return-void

    :goto_6
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method public final initSafeMediaVolumeIndex()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final initSafeMediaVolumeIndex(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsVolumeEffectOn:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initSafeMediaVolumeIndex isVolumeEffectOn is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mEarShockLogger:Lcom/android/server/utils/EventLogger;

    const/4 v2, 0x0

    const-string v3, "AS.SoundDoseHelper"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/utils/EventLogger;->enqueueAndLog(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    const/16 v3, 0x3c

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v3

    :goto_1
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parseGlobalSettingFloat(FLjava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Error parsing float from settings "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "AS.SoundDoseHelper"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return p1
.end method

.method public final reset(Z)V
    .locals 4

    const-string/jumbo v0, "Resetting the saved sound dose value "

    const-string v1, "AS.SoundDoseHelper"

    const-string/jumbo v2, "Reset the sound dose helper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDoseCallback:Lcom/android/server/audio/SoundDoseHelper$1;

    invoke-static {v1}, Landroid/media/AudioSystem;->getSoundDoseInterface(Landroid/media/ISoundDoseCallback;)Landroid/media/ISoundDose;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSoundDose:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ISoundDose;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/media/ISoundDose;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const-string v2, "AS.SoundDoseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/media/SoundDoseRecord;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/SoundDoseRecord;

    iget p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-interface {v1, p0, v0}, Landroid/media/ISoundDose;->resetCsd(F[Landroid/media/SoundDoseRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final safeDevicesContains(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final safeMediaVolumeIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeDevices:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 p1, 0x3

    aget p0, p0, p1

    :cond_0
    return p0
.end method

.method public final sanitizeDoseRecords_l()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28f

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const-string/jumbo v1, "Removing "

    const-string v2, " records from the total of "

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.SoundDoseHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mDoseRecords:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scheduleMusicActiveCheck()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.server.audio.action.CHECK_MUSIC_ACTIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0xc000000

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setSafeMediaVolumeEnabled(Ljava/lang/String;Z)V
    .locals 7

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz p2, :cond_0

    if-ne v0, v3, :cond_0

    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-ne v0, v2, :cond_2

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    const/16 p2, 0x3ec

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateForBlueTooth:I

    iget-object v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x3eb

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    iput v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {p0, p2, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iput v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    iput v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    iput-wide v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {p1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->scheduleMusicActiveCheck()V

    :cond_2
    return-void
.end method

.method public final updateCsdEnabled(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110232

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mCsdAsAFeatureLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    :try_start_0
    iput-boolean v3, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    iget-boolean v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    move v2, v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": CSD as a feature is not enforced and enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_2

    :cond_5
    iput-boolean v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mIsCsdAsAFeatureAvailable:Z

    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": enabled CSD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initCsd()V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/audio/SoundDoseHelper;->initSafeMediaVolumeIndex()V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->updateSafeMediaVolume_l(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    return-void

    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final updateCsdForTestApi()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mForceCsdProperty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string/jumbo v1, "audio.safemedia.csd.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "SystemPropertiesChangeCallback"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundDoseHelper;->updateCsdEnabled(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final updateSafeMediaVolume_l(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "audio.safemedia.bypass"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string/jumbo v3, "audio.safemedia.force"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_VOLUME_COUNTRY:Z

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110231

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz v3, :cond_4

    :cond_3
    if-nez v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_6

    iget v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    if-ne v5, v2, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    if-ne v5, v4, :cond_6

    move v0, v2

    :cond_6
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/audio/FactoryUtils;->isFactoryMode()Z

    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v5, v5, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    iget-boolean v5, v5, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    :cond_7
    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    iget v0, p0, Lcom/android/server/audio/SoundDoseHelper;->mMusicActiveMs:I

    if-nez v0, :cond_8

    iput v4, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/audio/SoundDoseHelper;->mLastMusicActiveTimeMs:J

    :cond_9
    :goto_4
    move v2, v4

    goto :goto_5

    :cond_a
    iput v2, p0, Lcom/android/server/audio/SoundDoseHelper;->mSafeMediaVolumeState:I

    :goto_5
    if-eqz v3, :cond_b

    return-void

    :cond_b
    const/16 p1, 0x3eb

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
