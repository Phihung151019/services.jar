.class public final Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field public final synthetic this$0:Lcom/android/server/location/provider/MockableLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p1, p1, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    if-eq v0, v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/location/provider/MockableLocationProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    monitor-exit p1

    return-void

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
