.class public final Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final mLoadCompleteHandlers:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method public final onComplete(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    invoke-interface {v3, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    if-eqz p1, :cond_2

    const-string/jumbo p1, "completed"

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "failed"

    :goto_1
    const-string/jumbo v0, "effects loading "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8

    const-string/jumbo p1, "effect "

    const/4 v0, 0x0

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object p3, p3, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget v5, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v5, p2, :cond_1

    iget-boolean v5, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    iput-boolean v3, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    sget-boolean v3, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v3, v3, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const-string/jumbo v5, "stv_touch_tone"

    invoke-virtual {v3, p2, v5}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    :cond_1
    iget v3, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v3, :cond_0

    iget-boolean v3, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_5
    if-ge v3, v2, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget v5, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v5, p2, :cond_5

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p2, v4}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "with unknown sample ID "

    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " loading failed, status "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLoadSoundEffects(), Error "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " while loading sample "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AS.SfxHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    return-void
.end method
