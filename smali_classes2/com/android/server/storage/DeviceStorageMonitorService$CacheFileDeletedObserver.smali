.class public final Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;
.super Landroid/os/FileObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 0

    const/16 p0, 0xabc

    invoke-static {p0, p2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method
