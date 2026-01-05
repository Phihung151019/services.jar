.class public final Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;I)V
    .locals 0

    iput p5, p0, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    return-void
.end method


# virtual methods
.method public final getVSAction()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "fading out"

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "fading in"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
