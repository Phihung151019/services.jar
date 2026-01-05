.class public final Lcom/android/server/sensors/SensorService$LocalService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    return-void
.end method


# virtual methods
.method public final sendSensorAdditionalInfo(IIIJ[F)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v1, v0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-object v0, v0, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    iget-wide v2, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/server/sensors/SensorService;->-$$Nest$smsendRuntimeSensorAdditionalInfoNative(JIIIJ[F)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
