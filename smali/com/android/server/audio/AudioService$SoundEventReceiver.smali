.class public final Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mEventReceiver:Landroid/content/ComponentName;

.field public mEventType:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    check-cast p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    iget-object p1, p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    return p0
.end method
