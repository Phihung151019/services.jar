.class public final synthetic Lcom/android/server/adb/AdbService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/adb/AdbService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "AdbService"

    const-string/jumbo v0, "boot completed"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-boolean v0, p1, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    iget-object p0, p1, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-boolean p1, p1, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    return-void
.end method
