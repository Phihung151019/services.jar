.class public final Lcom/android/server/audio/AudioService$VolumeStreamState$1;
.super Landroid/util/SparseIntArray;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final put(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const-string/jumbo v0, "put"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(IILjava/lang/String;)V

    return-void
.end method

.method public final record(IILjava/lang/String;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "default"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/media/MediaMetrics$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "audio.volume."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget v2, v2, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p3, Landroid/media/MediaMetrics$Property;->INDEX:Landroid/media/MediaMetrics$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MIN_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p3, p3, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->MAX_INDEX:Landroid/media/MediaMetrics$Key;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->this$1:Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public final setValueAt(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    const-string/jumbo v0, "setValueAt"

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState$1;->record(IILjava/lang/String;)V

    return-void
.end method
