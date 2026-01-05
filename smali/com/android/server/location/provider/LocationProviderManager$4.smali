.class public final Lcom/android/server/location/provider/LocationProviderManager$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;

.field public final synthetic val$newRequest:Landroid/location/provider/ProviderRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$newRequest:Landroid/location/provider/ProviderRequest;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    if-ne v2, p0, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Lcom/android/server/location/provider/LocationProviderManager$4;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$4;->val$newRequest:Landroid/location/provider/ProviderRequest;

    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

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
