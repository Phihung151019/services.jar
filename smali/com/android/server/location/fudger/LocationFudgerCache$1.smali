.class public final Lcom/android/server/location/fudger/LocationFudgerCache$1;
.super Landroid/location/provider/IS2LevelCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/fudger/LocationFudgerCache;


# direct methods
.method public constructor <init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-direct {p0}, Landroid/location/provider/IS2LevelCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    const-string/jumbo p0, "LocationFudgerCache"

    const-string/jumbo v0, "could not get default population density"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    iget-object v0, v0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache$1;->this$0:Lcom/android/server/location/fudger/LocationFudgerCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
