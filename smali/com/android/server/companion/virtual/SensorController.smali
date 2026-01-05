.class public final Lcom/android/server/companion/virtual/SensorController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mLock:Ljava/lang/Object;

.field public final mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

.field public final mSensorDescriptors:Landroid/util/ArrayMap;

.field public final mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

.field public final mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceId:I

.field public mVirtualSensorList:Ljava/util/List;

.field public final mVirtualSensors:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/companion/virtual/SensorController;->sNextDirectChannelHandle:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    iput p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    new-instance p2, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    invoke-direct {p2, p0, p4}, Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;-><init>(Lcom/android/server/companion/virtual/SensorController;Landroid/companion/virtual/sensor/IVirtualSensorCallback;)V

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    const-class p2, Lcom/android/server/sensors/SensorService$LocalService;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/sensors/SensorService$LocalService;

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    const-class p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iput-object p2, p0, Lcom/android/server/companion/virtual/SensorController;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {p0, p1, p5}, Lcom/android/server/companion/virtual/SensorController;->createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/SensorController$SensorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p4, "Failed to create virtual sensor"

    invoke-direct {p1, p4, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public addSensorForTesting(Landroid/os/IBinder;IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/SensorController;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final createSensorInternal(Landroid/companion/virtual/IVirtualDevice;Landroid/companion/virtual/sensor/VirtualSensorConfig;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    iget v4, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualDeviceId:I

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getVendor()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaximumRange()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getResolution()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getPower()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMinDelay()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getMaxDelay()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v13

    iget-object v14, v0, Lcom/android/server/companion/virtual/SensorController;->mRuntimeSensorCallback:Lcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;

    iget-object v2, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v15, v2, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v2, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-wide v2, v2, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-static/range {v2 .. v14}, Lcom/android/server/sensors/SensorService;->-$$Nest$smregisterRuntimeSensorNative(JIILjava/lang/String;Ljava/lang/String;FFFIIILcom/android/server/companion/virtual/SensorController$RuntimeSensorCallbackWrapper;)I

    move-result v2

    iget-object v1, v1, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v2, :cond_1

    new-instance v1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;-><init>(IILjava/lang/String;)V

    new-instance v3, Landroid/os/Binder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "android.hardware.sensor.VirtualSensor:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    new-instance v16, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getFlags()I

    move-result v20

    move-object/from16 v21, p1

    move/from16 v17, v2

    move-object/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Landroid/companion/virtual/sensor/VirtualSensor;-><init>(IILjava/lang/String;ILandroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V

    move-object/from16 v4, v16

    iget-object v5, v0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v1, "virtual_devices.value_virtual_sensors_created_count"

    iget-object v0, v0, Lcom/android/server/companion/virtual/SensorController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received an invalid virtual sensor handle \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    new-instance v0, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received an invalid virtual sensor type (config name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/SensorController$SensorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSensorDescriptors()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    if-eqz v2, :cond_4

    iget-object v3, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    iget v4, v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    const-wide/16 v10, 0x1

    add-long v12, v7, v10

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/sensors/SensorService$LocalService;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v15, v4

    move-wide/from16 v16, v12

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_2

    iget-object v12, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    iget v13, v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getType()I

    move-result v14

    add-long v5, v16, v10

    invoke-virtual/range {p2 .. p2}, Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [F

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/sensors/SensorService$LocalService;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v3

    if-nez v3, :cond_1

    monitor-exit v1

    return v4

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v16, v5

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    iget v6, v2, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    move-wide/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/sensors/SensorService$LocalService;->sendSensorAdditionalInfo(IIIJ[F)Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v1

    return v4

    :cond_3
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not send sensor event for given token"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    iget v4, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    iget v5, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getTimestampNanos()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/companion/virtual/sensor/VirtualSensorEvent;->getValues()[F

    move-result-object v8

    iget-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object p1, p1, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object p2, p2, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    monitor-exit p1

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-wide v2, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    invoke-static/range {v2 .. v8}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsendRuntimeSensorEventNative(JIIJ[F)Z

    move-result p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not send sensor event for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
