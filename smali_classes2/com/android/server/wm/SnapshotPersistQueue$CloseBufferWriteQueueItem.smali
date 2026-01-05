.class public final Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# virtual methods
.method public final write()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    :cond_0
    return-void
.end method
