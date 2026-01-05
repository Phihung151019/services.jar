.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;
.super Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUseStrongDuck:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioPlaybackConfiguration;ZZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/server/audio/PlaybackActivityMonitor$VolumeShaperEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    iput-boolean p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    return-void
.end method


# virtual methods
.method public final getVSAction()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;->mUseStrongDuck:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "ducking (strong)"

    return-object p0

    :cond_0
    const-string/jumbo p0, "ducking"

    return-object p0
.end method
