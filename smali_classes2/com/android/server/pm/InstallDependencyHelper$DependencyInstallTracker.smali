.class public final Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

.field public final mPendingSessionIds:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    iput-object p2, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final onSessionComplete(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mPendingSessionIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/pm/InstallDependencyHelper$DependencyInstallTracker;->mCallback:Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallDependencyHelper$CallOnceProxy;->onResult()V

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
