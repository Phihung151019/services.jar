.class public final Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method public constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleActiveServiceRestartedLocked(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    and-int/lit8 v1, v1, 0x10

    iget-object v2, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string v3, " is being restarted"

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_3

    const-string v0, "Holding service for user "

    const-string v1, " while package "

    invoke-static {p1, v0, v1, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Removing service for user "

    const-string v1, " because package "

    invoke-static {p1, v0, v1, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_2

    const-string v0, "Eagerly recreating service for user "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageRestartedLocked(I)V

    return-void
.end method

.method public final handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/infra/AbstractPerUserSystemService;

    invoke-virtual {v5, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 7

    iget-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p3, p3, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    array-length v0, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v4, p2, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_2

    const/4 p0, 0x1

    monitor-exit p3

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    const-string/jumbo v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5, v1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handleActiveServiceRestartedLocked(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p3

    return v2

    :goto_3
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageDataCleared(Ljava/lang/String;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPackageDataCleared(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onServicePackageDataClearedMultiModeLocked("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean p1, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServicePackageDataCleared("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "onPackageModified(): "

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    invoke-virtual {v2, v0}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceNameList(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v4, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget-boolean v4, v4, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1, v2, v0}, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    :cond_2
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_7

    aget-object v4, v2, v3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v5, v4, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v5, :cond_5

    iget-object v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "update cached"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->updateCachedServiceLocked(I)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameBaseResolver;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/infra/ServiceNameBaseResolver;->mIsMultiple:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->handlePackageRemovedMultiModeLocked(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3

    iget-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, p2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPackageUpdateFinished(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iput-object v2, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->handlePackageUpdateLocked(Ljava/lang/String;)V

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 8

    const-string p2, "Eagerly recreating service for user "

    const-string/jumbo v0, "Removing service for user "

    const-string v1, "Holding service for user "

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v2, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onPackageUpdateStarted(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v4, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v6, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    if-nez v6, :cond_4

    new-instance v6, Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v7, v7, Lcom/android/server/infra/AbstractMasterSystemService;->mServicesCacheList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v6, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    :cond_4
    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v5, v5, Lcom/android/server/infra/AbstractMasterSystemService;->mUpdatingPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v5, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    iget-boolean p0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " while package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is being updated"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-boolean v1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_6

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " because package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is being updated"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p1, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)V

    iget-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mServicePackagePolicyFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$MyPackageMonitor;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    :cond_8
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
