.class public final Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AnrController;


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    return-void
.end method


# virtual methods
.method public final getAnrDelayMillis(Ljava/lang/String;I)J
    .locals 2

    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const-string/jumbo p0, "anr_delay_millis"

    const/16 p2, 0x1388

    const-string/jumbo v0, "storage_native_boot"

    invoke-static {v0, p0, p2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p2, "getAnrDelayMillis for "

    const-string v0, ". "

    const-string/jumbo v1, "ms"

    invoke-static {p0, p2, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "StorageManagerService"

    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long p0, p0

    return-wide p0
.end method

.method public final onAnrDelayCompleted(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result p0

    const-string/jumbo p2, "onAnrDelayCompleted for "

    const-string/jumbo v0, "StorageManagerService"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Showing ANR dialog..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Skipping ANR dialog..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final onAnrDelayStarted(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/StorageManagerService;->isAppIoBlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "anr_delay_notify_external_storage_service"

    const/4 v1, 0x1

    const-string/jumbo v2, "storage_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAnrDelayStarted for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Notifying external storage service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "StorageManagerService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/StorageManagerService$ExternalStorageServiceAnrController;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mStorageSessionController:Lcom/android/server/storage/StorageSessionController;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/storage/StorageSessionController;->notifyAnrDelayStarted(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to notify ANR delay started for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
