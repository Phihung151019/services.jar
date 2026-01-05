.class public final Lcom/android/server/am/PlatformCompatCache$CacheItem;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public final mCache:Landroid/util/ArrayMap;

.field public final mChangeId:J

.field public final mLock:Ljava/lang/Object;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-wide p2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mChangeId:J

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    return-void
.end method


# virtual methods
.method public final fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 4

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iget-wide v2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mChangeId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isChangeEnabled(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onCompatChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/PlatformCompatCache$CacheItem;->fetchLocked(Landroid/content/pm/ApplicationInfo;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/PlatformCompatCache$CacheItem;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
