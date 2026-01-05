.class public final Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$RuntimeSensorCallback;


# instance fields
.field public final mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/SensorController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(IZII)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string/jumbo v2, "SensorController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "No sensor callback configured for sensor handle "

    invoke-static {p1, p0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v3, :cond_1

    const-string/jumbo p0, "Virtual Device Manager is not enabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-virtual {v3, v4, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No sensor found for deviceId="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and sensor handle="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, v3, p2, p3, p4}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call sensor callback: "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0
.end method

.method public final onDirectChannelConfigured(III)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string/jumbo v2, "SensorController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "No runtime sensor callback configured."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-nez v3, :cond_1

    const-string/jumbo p0, "Virtual Device Manager is not enabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-virtual {v3, v4, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getVirtualSensor(II)Landroid/companion/virtual/sensor/VirtualSensor;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "No sensor found for deviceId="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and sensor handle="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, p1, v3, p3, p2}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return p2

    :catch_0
    move-exception p0

    const-string p1, "Failed to call sensor callback: "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0
.end method

.method public final onDirectChannelCreated(Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const/16 v1, -0x16

    const-string/jumbo v2, "SensorController"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No sensor callback for virtual deviceId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-static {p1, p0, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "Received invalid ParcelFileDescriptor"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/SharedMemory;->fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {p0, v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "Failed to call sensor callback: "

    invoke-static {p1, p0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create shared memory: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final onDirectChannelDestroyed(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->mCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    const-string/jumbo v1, "SensorController"

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "No sensor callback for virtual deviceId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;->this$0:Lcom/android/server/companion/virtual/SensorController;

    iget p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-static {p1, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->onDirectChannelDestroyed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to call sensor callback: "

    invoke-static {p1, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return-void
.end method
