.class public final Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field public final synthetic val$effect:I

.field public final synthetic val$volume:I


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iput p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 12

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    const-string v1, "AS.SfxHelper"

    const-string/jumbo v2, "MediaPlayer IOException: "

    const-string/jumbo v3, "MediaPlayer IllegalArgumentException: "

    const-string/jumbo v4, "MediaPlayer IllegalStateException: "

    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    iget p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$volume:I

    if-gez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/media/AudioFxHelper;->getSoundFxVolumeByType(I)F

    move-result p0

    :goto_0
    move v7, p0

    goto :goto_1

    :cond_0
    int-to-float p0, p0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr p0, v5

    goto :goto_0

    :goto_1
    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v5, v5, v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    iget v8, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-eqz v8, :cond_3

    invoke-virtual {v5, v6}, Landroid/media/SoundPool;->semSetStreamType(I)V

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    :goto_2
    iget-object v1, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    :cond_2
    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v6, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move v8, v7

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void

    :cond_3
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->setVolume(F)V

    new-instance p0, Lcom/android/server/audio/SoundEffectsHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p0, Lcom/android/server/audio/SoundEffectsHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :goto_4
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_5
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_6
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_7
    :try_start_8
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    throw p0

    :cond_4
    :goto_9
    return-void
.end method
