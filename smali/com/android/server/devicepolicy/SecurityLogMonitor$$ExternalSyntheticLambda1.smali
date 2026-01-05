.class public final synthetic Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/admin/IAuditLogEventsCallback;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/SecurityLogMonitor;ILandroid/app/admin/IAuditLogEventsCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

    iput p2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$2:Landroid/app/admin/IAuditLogEventsCallback;

    iput-object p4, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/SecurityLogMonitor;

    iget v1, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$2:Landroid/app/admin/IAuditLogEventsCallback;

    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    invoke-interface {v2, p0}, Landroid/app/admin/IAuditLogEventsCallback;->onNewAuditLogEvents(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to invoke audit log callback for UID %d"

    const-string/jumbo v5, "SecurityLogMonitor"

    invoke-static {v5, p0, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Landroid/app/admin/IAuditLogEventsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Callback binder is still alive, not removing."

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iget-object v2, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    const-string p0, "Callback not registered for UID %d, nothing to remove"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v3, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/IAuditLogEventsCallback;

    invoke-interface {v3}, Landroid/app/admin/IAuditLogEventsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Callback is already replaced for UID %d, not removing"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "Removing callback for UID %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, p0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAuditLogCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v0, v0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
