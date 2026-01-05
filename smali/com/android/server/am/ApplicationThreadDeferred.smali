.class public final Lcom/android/server/am/ApplicationThreadDeferred;
.super Landroid/app/IApplicationThread$Delegator;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBase:Landroid/app/IApplicationThread;

.field public final mLock:Ljava/lang/Object;

.field public final mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

.field public final mPending:[Z


# direct methods
.method public static synthetic $r8$lambda$EyFIl9oQearTD0bqYtkIdp-2aEw(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateHttpProxy()V

    return-void
.end method

.method public static synthetic $r8$lambda$PP7wSw0gGLmO6hi1tOkPocTG8v8(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->clearDnsCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$_AjVZez4200DRB8oUj9lSUVdMXo(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->scheduleLowMemory()V

    return-void
.end method

.method public static synthetic $r8$lambda$pzCGrkeFAdnodnDYXv9us5vUB_A(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .locals 0

    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateTimeZone()V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/IApplicationThread$Delegator;-><init>(Landroid/app/IApplicationThread;)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    const/4 p2, 0x4

    new-array v0, p2, [Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    iput-object p1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;I)V

    aput-object p1, v0, p2

    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;I)V

    aput-object p1, v0, p2

    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;I)V

    aput-object p1, v0, p2

    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;I)V

    const/4 p0, 0x3

    aput-object p1, v0, p0

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final clearDnsCache()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public final execute(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onProcessUnpaused()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    throw v2

    :catch_0
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final scheduleLowMemory()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public final updateHttpProxy()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public final updateTimeZone()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method
