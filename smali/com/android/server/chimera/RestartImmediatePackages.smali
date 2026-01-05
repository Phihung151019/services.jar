.class public Lcom/android/server/chimera/RestartImmediatePackages;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;


# instance fields
.field public final sPackages:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/RestartImmediatePackages;->sPackages:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/chimera/RestartImmediatePackages;
    .locals 2

    const-class v0, Lcom/android/server/chimera/RestartImmediatePackages;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/chimera/RestartImmediatePackages;

    invoke-direct {v1}, Lcom/android/server/chimera/RestartImmediatePackages;-><init>()V

    sput-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/chimera/RestartImmediatePackages;->INSTANCE:Lcom/android/server/chimera/RestartImmediatePackages;
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
