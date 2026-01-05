.class public final synthetic Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

.field public final synthetic f$1:Lcom/samsung/android/media/AudioParameter;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/media/AudioParameter;

    iget-object v0, v0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
