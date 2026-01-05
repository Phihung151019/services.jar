.class public final synthetic Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/camera/CameraServiceProxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/camera/CameraServiceProxy;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x3c

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    iget v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
