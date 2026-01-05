.class public final Lcom/android/server/biometrics/BiometricService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# instance fields
.field public final mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;-><init>(Lcom/android/server/biometrics/BiometricService$2;)V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onDeviceCredentialPressed()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDialogAnimatedIn(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v1, v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "SemBiometricSysUiWrapper"

    const-string/jumbo v2, "session [BIOMETRIC_PROMPT] was already started"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v2, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {v2}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1, v3, v2}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string/jumbo v2, "SemBiometricSysUiWrapper"

    const-string/jumbo v3, "Unable to send onSessionStarted for session=[BIOMETRIC_PROMPT]"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v0

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onDialogDismissed(I[B)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iget-object v0, v0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "SemBiometricSysUiWrapper"

    const-string/jumbo v2, "session [BIOMETRIC_PROMPT] was not started"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/logging/InstanceId;

    iget-object v4, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0, v3, v2}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "SemBiometricSysUiWrapper"

    const-string/jumbo v3, "Unable to send onSessionEnded for session=[BIOMETRIC_PROMPT]"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit v1

    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v1, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onStartFingerprintNow()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSystemEvent(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTryAgainPressed()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
