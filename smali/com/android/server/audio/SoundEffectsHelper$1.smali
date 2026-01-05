.class public final Lcom/android/server/audio/SoundEffectsHelper$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$1;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-nez p1, :cond_0

    const-string p1, "AS.SfxHelper"

    const-string/jumbo v0, "onLoadSoundEffects(), Error while loading samples"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/audio/SoundEffectsHelper;->onUnloadSoundEffects()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
