.class public Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBootTimeNanos:J

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public final mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

.field public final mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

.field public mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-direct {v1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    new-instance v1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;-><init>(Landroid/content/Context;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;)V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getActivityManager()Landroid/app/IActivityManager;
    .locals 0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final getAppMonitor()Lcom/android/server/knox/zt/devicetrust/AppMonitor;
    .locals 0

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object p0

    return-object p0
.end method

.method public final getBootTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    return-wide v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getHandlerThread()Landroid/os/HandlerThread;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getKnoxNetworkEventService()Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    move-result-object p0

    return-object p0
.end method

.method public final getNative()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    return-object p0
.end method

.method public final getOemNetdAdapter()Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    return-object p0
.end method

.method public final getTaskRescheduler()Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    return-object p0
.end method

.method public final getZtInternalService()Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knoxztinternal"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    return-object p0
.end method
