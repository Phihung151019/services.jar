.class public final Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIam:Landroid/app/IActivityManager;

.field public mPw:Ljava/io/PrintWriter;


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 2

    const-string/jumbo v0, "New foreground process: "

    if-eqz p3, :cond_1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mIam:Landroid/app/IActivityManager;

    const-string/jumbo v1, "android"

    invoke-interface {p3, p2, v1}, Landroid/app/IActivityManager;->getUidProcessState(ILjava/lang/String;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    const-string/jumbo p2, "No top app found"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    const-string p2, "Error occurred in binder call"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$ProcessObserver;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
