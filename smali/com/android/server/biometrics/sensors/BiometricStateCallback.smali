.class public final Lcom/android/server/biometrics/sensors/BiometricStateCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mBiometricState:I

.field public final mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mProviders:Ljava/util/List;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback binder died: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStateCallback"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Removed dead listener for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "No dead listeners found"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;

    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->getSensorProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v6, v7}, Lcom/android/server/biometrics/sensors/BiometricServiceProvider;->hasEnrollments(II)Z

    move-result v6

    if-eqz p1, :cond_3

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v5, v7, v6}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "BiometricStateCallback"

    const-string/jumbo v7, "Remote exception"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget v7, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/biometrics/IBiometricStateListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v9, v5, v7, v6}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v9

    :try_start_4
    const-string v10, "BiometricStateCallback"

    const-string/jumbo v11, "Remote exception"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final notifyBiometricStateListeners(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricStateCallback"

    const-string/jumbo v2, "Remote exception in biometric state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onBiometricAction()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/IBiometricStateListener;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricStateListener;->onBiometricAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricStateCallback"

    const-string/jumbo v2, "Remote exception in onBiometricAction"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 5

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Client finished, state updated to "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", client "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BiometricStateCallback"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/android/server/biometrics/sensors/EnrollmentModifier;

    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollmentStateChanged()Z

    move-result v1

    const-string v2, "Enrollment state changed: "

    invoke-static {v2, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget p1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    invoke-interface {p2}, Lcom/android/server/biometrics/sensors/EnrollmentModifier;->hasEnrollments()Z

    move-result p2

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/IBiometricStateListener;

    :try_start_0
    invoke-interface {v3, v1, p1, p2}, Landroid/hardware/biometrics/IBiometricStateListener;->onEnrollmentsChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v4, "Remote exception"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 4

    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    instance-of v1, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const-string v2, "BiometricStateCallback"

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Other authentication client: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    :goto_0
    const-string/jumbo v1, "State updated from "

    const-string v3, " to "

    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricState:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->notifyBiometricStateListeners(I)V

    return-void
.end method

.method public final declared-synchronized registerBiometricStateListener(Landroid/hardware/biometrics/IBiometricStateListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->mBiometricStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricStateCallback;->broadcastCurrentEnrollmentState(Landroid/hardware/biometrics/IBiometricStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/biometrics/IBiometricStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "BiometricStateCallback"

    const-string v1, "Failed to link to death"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
