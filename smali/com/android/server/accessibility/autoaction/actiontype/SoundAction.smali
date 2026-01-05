.class public final Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mType:Ljava/lang/String;


# virtual methods
.method public final performCornerAction(I)V
    .locals 8

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    const/high16 v6, 0x2000000

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v4, v3

    goto :goto_1

    :sswitch_0
    const-string/jumbo v7, "ringtone_volume_down"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "media_volume_up"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "media_volume_down"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, p1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "sound_vibrate_mute"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "ringtone_volume_up"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Wrong Sound Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v2, v3, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    return-void

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, v1, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, v0, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x55236e7d -> :sswitch_4
        -0x18e94be7 -> :sswitch_3
        0x1af46ecc -> :sswitch_2
        0x4505db45 -> :sswitch_1
        0x65f68d8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
