.class public Lcom/android/server/health/HealthRegCallbackAidl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

.field public final mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    invoke-direct {v0, p0}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;)V

    iput-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    return-void
.end method

.method public static unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterCallback: oldService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HealthRegCallbackAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->unregisterCallback(Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "health: cannot unregister previous callback (transaction error): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRegistration: oldService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HealthRegCallbackAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v2, 0x80000

    const-string v0, "HealthUnregisterCallbackAidl"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    :try_start_0
    invoke-static {p1, p0}, Lcom/android/server/health/HealthRegCallbackAidl;->unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-string p1, "HealthRegisterCallbackAidl"

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registerCallback: newService: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    check-cast p2, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-virtual {p2, p0}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->registerCallback(Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p2}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;->update()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_4
    const-string/jumbo p1, "health: cannot update after registering health info callback"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string/jumbo p1, "health: cannot register callback, framework may cease to receive updates on health / battery info!"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
