.class public final Lcom/android/server/StorageManagerService$4;
.super Lcom/android/server/utils/Watcher;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    invoke-static {}, Landroid/os/storage/StorageManager;->invalidateVolumeListCache()V

    return-void
.end method
