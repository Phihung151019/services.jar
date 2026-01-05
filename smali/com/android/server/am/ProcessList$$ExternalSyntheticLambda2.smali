.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    iput-boolean p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Z

    iput-object p5, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Z

    iget-object p0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$4:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-wide/16 v4, 0x400

    invoke-interface {v0, p1, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, v1, Lcom/android/server/am/PlatformCompatCache;->mCaches:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;

    iget-object v6, v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v5, v0, v7}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->updateActivityInfo(Landroid/content/pm/ApplicationInfo;)V

    :cond_3
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    invoke-virtual {v1, v0}, Landroid/app/IApplicationThread$Delegator;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ApplicationInfo for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
