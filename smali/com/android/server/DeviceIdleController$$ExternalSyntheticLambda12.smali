.class public final synthetic Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/DeviceIdleController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/DeviceIdleController$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/DeviceIdleController;

    check-cast p1, Landroid/os/PowerSaveState;

    sget-boolean v0, Lcom/android/server/DeviceIdleController;->DEBUG:Z

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController;->mBatterySaverEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateQuickDozeFlagLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
