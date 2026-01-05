.class public final synthetic Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/health/HealthServiceWrapperAidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HealthServiceWrapperAidl"

    const-wide/32 v1, 0x80000

    const-string v3, "HealthScheduleUpdate"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-nez p0, :cond_0

    const-string/jumbo p0, "no health service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    check-cast p0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-virtual {p0}, Landroid/hardware/health/IHealth$Stub$Proxy;->update()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :goto_0
    :try_start_2
    const-string v1, "Cannot call update on health AIDL HAL"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    throw p0
.end method
