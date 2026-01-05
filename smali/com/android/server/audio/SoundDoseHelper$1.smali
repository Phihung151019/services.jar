.class public final Lcom/android/server/audio/SoundDoseHelper$1;
.super Landroid/media/ISoundDoseCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SoundDoseHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundDoseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-direct {p0}, Landroid/media/ISoundDoseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMomentaryExposure(FI)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AS.SoundDoseHelper"

    const-string/jumbo p1, "onMomentaryExposure: csd not supported, ignoring callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " triggered momentary exposure with value: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object p2, p2, Lcom/android/server/audio/SoundDoseHelper;->mLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/audio/AudioServiceEvents$SoundDoseEvent;-><init>(IJF)V

    invoke-virtual {p2, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object p1, p1, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-wide v4, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    cmp-long p2, v4, v2

    if-ltz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-wide v4, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x44aa200

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/audio/SoundDoseHelper;->mLastMomentaryExposureTimeMs:J

    const/4 v1, 0x1

    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 p2, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1388

    invoke-virtual {p1, p2, p0}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onNewCsdValue(F[Landroid/media/SoundDoseRecord;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mEnableCsd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "AS.SoundDoseHelper"

    const-string/jumbo p1, "onNewCsdValue: csd not supported, ignoring value"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AS.SoundDoseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onNewCsdValue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object v1, v0, Lcom/android/server/audio/SoundDoseHelper;->mCsdStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    cmpg-float v3, v2, p1

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v3, :cond_2

    iget v3, v0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    cmpl-float v2, p1, v3

    if-ltz v2, :cond_3

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v2, v3, v2

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v2, 0x2

    const/16 v3, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v5, v0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x3ef

    const/4 v7, 0x2

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/android/server/audio/SoundDoseHelper;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/4 v2, 0x1

    const/16 v3, 0x1b58

    invoke-virtual {v0, v2, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplayCsdWarning(II)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iget v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    add-float/2addr v2, v4

    iput v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    sub-float v3, v2, v4

    cmpg-float v4, p1, v3

    if-gez v4, :cond_3

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iput v3, v0, Lcom/android/server/audio/SoundDoseHelper;->mNextCsdWarning:F

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/audio/SoundDoseHelper$1;->this$0:Lcom/android/server/audio/SoundDoseHelper;

    iput p1, p0, Lcom/android/server/audio/SoundDoseHelper;->mCurrentCsd:F

    invoke-static {p0, p2, p1}, Lcom/android/server/audio/SoundDoseHelper;->-$$Nest$mupdateSoundDoseRecords_l(Lcom/android/server/audio/SoundDoseHelper;[Landroid/media/SoundDoseRecord;F)V

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
