.class public final Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/PowerAllowlistInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    return-void
.end method


# virtual methods
.method public final registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final unregisterTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$LocalPowerAllowlistService;->this$0:Lcom/android/server/DeviceIdleController;

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController;->mTempAllowlistChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
