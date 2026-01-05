.class public final Lcom/android/server/am/UserController$UserProgressListener;
.super Landroid/os/IProgressListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mUnlockStarted:J


# virtual methods
.method public final onFinished(ILandroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    sub-long/2addr v0, v2

    if-nez p1, :cond_0

    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string/jumbo p1, "SystemUserUnlock"

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void

    :cond_0
    new-instance p0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {p0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    const-string/jumbo p2, "User"

    const-string/jumbo v2, "Unlock"

    invoke-static {p1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void
.end method

.method public final onProgress(IILandroid/os/Bundle;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unlocking user "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " progress "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStarted(ILandroid/os/Bundle;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Started unlocking user "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/UserController$UserProgressListener;->mUnlockStarted:J

    return-void
.end method
