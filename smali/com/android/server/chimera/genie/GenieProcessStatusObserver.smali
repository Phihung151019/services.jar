.class public final Lcom/android/server/chimera/genie/GenieProcessStatusObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mGenieMemoryMgr:Lcom/android/server/chimera/genie/GenieMemoryManager;

.field public mIsGaussLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/chimera/genie/GenieProcessStatusObserver;
    .locals 3

    sget-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    iput-object v2, v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mGenieMemoryMgr:Lcom/android/server/chimera/genie/GenieMemoryManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsGaussLoaded:Z

    sput-object v1, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->instance:Lcom/android/server/chimera/genie/GenieProcessStatusObserver;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final isGaussModelLoaded()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p0, "GenieProcessStatusObserver"

    const-string v0, "Context is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "aicore_model_load_time_millis"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    monitor-enter p0

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsGaussLoaded:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "GenieProcessStatusObserver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isGaussModelLoaded: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onChange(Z)V
    .locals 6

    const-string/jumbo v0, "Reading settings: "

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mGenieMemoryMgr:Lcom/android/server/chimera/genie/GenieMemoryManager;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "aicore_model_load_time_millis"

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    monitor-enter p0

    :try_start_0
    const-string p1, "GenieProcessStatusObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " was loaded: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsGaussLoaded:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsGaussLoaded:Z

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mGenieMemoryMgr:Lcom/android/server/chimera/genie/GenieMemoryManager;

    const-string/jumbo v0, "com.samsung.android.offline.languagemodel"

    invoke-virtual {p1, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    xor-int/lit8 p1, v1, 0x1

    iput-boolean p1, p0, Lcom/android/server/chimera/genie/GenieProcessStatusObserver;->mIsGaussLoaded:Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    const-string p0, "GenieProcessStatusObserver"

    const-string p1, "Initialization not complete, Do not process onChange now"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
