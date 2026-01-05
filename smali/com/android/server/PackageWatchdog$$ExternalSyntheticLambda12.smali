.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/PackageWatchdog;

    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$1:I

    iput-object p3, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/PackageWatchdog;

    iget v2, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$1:I

    iget-object v0, v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;->f$2:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v2, v4, :cond_7

    const/4 v8, 0x2

    if-ne v2, v8, :cond_1

    goto/16 :goto_4

    :cond_1
    move v8, v6

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/VersionedPackage;

    move v10, v6

    move-object v11, v7

    move-object v12, v11

    const v13, 0x7fffffff

    :goto_1
    iget-object v14, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v10, v14, :cond_4

    iget-object v14, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v15, v14, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v15, :cond_3

    invoke-virtual {v9}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/server/PackageWatchdog$ObserverInternal;->notifyPackageFailureLocked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_2

    :cond_2
    move v14, v4

    :goto_2
    invoke-interface {v15, v9, v2, v14}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v14

    if-eqz v14, :cond_3

    if-ge v14, v13, :cond_3

    move-object v12, v5

    move v13, v14

    move-object v11, v15

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_6

    if-eqz v12, :cond_5

    iget-object v5, v12, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mMitigationCalls:Landroid/util/LongArrayQueue;

    iget-object v10, v12, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    iget-object v10, v10, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v10}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Landroid/util/LongArrayQueue;->addLast(J)V

    invoke-virtual {v12}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v5

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    invoke-interface {v11, v9, v2, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onExecuteHealthCheckMitigation(Landroid/content/pm/VersionedPackage;II)I

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    goto :goto_5

    :cond_8
    move-object v0, v7

    :goto_5
    iget-object v1, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const v5, 0x7fffffff

    :cond_9
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$ObserverInternal;

    iget-object v6, v6, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v6, :cond_9

    invoke-interface {v6, v0, v2, v4}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v8

    if-eqz v8, :cond_9

    if-ge v8, v5, :cond_9

    move-object v7, v6

    move v5, v8

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    invoke-interface {v7, v0, v2, v4}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onExecuteHealthCheckMitigation(Landroid/content/pm/VersionedPackage;II)I

    :cond_b
    monitor-exit v3

    return-void

    :goto_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
