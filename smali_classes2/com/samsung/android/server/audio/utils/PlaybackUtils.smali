.class public abstract Lcom/samsung/android/server/audio/utils/PlaybackUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static isMusicActive(Landroid/media/AudioPlaybackConfiguration;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/16 v2, 0xc

    if-eq p0, v2, :cond_1

    const/16 v2, 0xe

    if-eq p0, v2, :cond_1

    const/16 v2, 0x10

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method
