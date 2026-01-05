.class public final Lcom/android/server/audio/SoundEffectsHelper$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->-$$Nest$smcleanupPlayer(Landroid/media/MediaPlayer;)V

    const/4 p0, 0x1

    return p0
.end method
