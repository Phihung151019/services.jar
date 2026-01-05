.class public final Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    if-ne v2, p0, :cond_0

    new-instance p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
