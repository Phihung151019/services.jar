.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$1;
.super Landroid/os/IThermalStatusListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iput p1, v1, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mThermalStatus:I

    invoke-virtual {v1}, Lcom/android/server/pm/pu/DeviceStatusWatcher;->isDexoptingAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$1;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    iget-object p0, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher;->mService:Lcom/android/server/pm/pu/ProfileUtilizationService;

    iget-object p0, p0, Lcom/android/server/pm/pu/ProfileUtilizationService;->mTrigger:Lcom/android/server/pm/pu/DexoptTrigger;

    invoke-virtual {p0}, Lcom/android/server/pm/pu/DexoptTrigger;->resumeOptimizing()V

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
