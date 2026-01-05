.class public final Lcom/samsung/android/server/audio/CoverHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/CoverHelper;


# instance fields
.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mIsCoverSafetyVolume:Z


# direct methods
.method public static declared-synchronized getInstance()Lcom/samsung/android/server/audio/CoverHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/server/audio/CoverHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/server/audio/CoverHelper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/server/audio/CoverHelper;->sInstance:Lcom/samsung/android/server/audio/CoverHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
