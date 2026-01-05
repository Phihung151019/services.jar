.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;->f$3:Ljava/util/List;

    sget-object v3, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    const-string/jumbo v3, "observing new packages"

    invoke-virtual {v0, v3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    if-nez v4, :cond_0

    const-string/jumbo v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " started monitoring health of packages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "PackageWatchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " added the following packages to monitor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    const-string/jumbo p0, "updated observers"

    invoke-virtual {v0, p0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
