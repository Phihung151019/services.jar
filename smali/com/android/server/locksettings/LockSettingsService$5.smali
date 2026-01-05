.class public final Lcom/android/server/locksettings/LockSettingsService$5;
.super Landroid/os/IProgressListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/os/IProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p1, "LockSettingsService"

    const-string/jumbo p2, "unlockUser finished"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$5;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "unlockUser progress "

    const-string/jumbo p1, "LockSettingsService"

    invoke-static {p2, p0, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStarted(ILandroid/os/Bundle;)V
    .locals 0

    const-string/jumbo p0, "LockSettingsService"

    const-string/jumbo p1, "unlockUser started"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
