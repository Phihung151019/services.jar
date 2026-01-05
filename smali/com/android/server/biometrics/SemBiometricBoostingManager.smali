.class public final Lcom/android/server/biometrics/SemBiometricBoostingManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;


# instance fields
.field public final mDvfsMgrs:Landroid/util/SparseArray;

.field public mFingerprintHalTid:I

.field public mIsEnabledSsrm:Z

.field public final mReleasers:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;
    .locals 2

    const-class v0, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sInstance:Lcom/android/server/biometrics/SemBiometricBoostingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "BiometricsBoosting"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendBroadcastForBoosting: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized acquireDvfs(Landroid/content/Context;IILjava/lang/String;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_2

    invoke-static {p1, p4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BiometricsBoosting"

    const-string/jumbo p2, "acquireDvfs: can\'t get SemDvfsManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    const-string/jumbo p4, "biometrics_service"

    invoke-virtual {v0, p4}, Lcom/samsung/android/os/SemDvfsManager;->setProcName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    if-lez p6, :cond_1

    const/high16 p2, -0xe00000

    invoke-virtual {v0, p2, p6}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    if-nez p2, :cond_3

    new-instance p2, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    invoke-direct {p2, p1, p3}, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;-><init>(Landroid/content/Context;I)V

    iget-object p4, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p4, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p3

    int-to-long p4, p5

    invoke-virtual {p3, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p2, "CustomFrequencyManagerService"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/CustomFrequencyManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    :try_start_2
    invoke-virtual {p2}, Landroid/os/CustomFrequencyManager;->disableGpisHint()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_3
    const-string p3, "BiometricsBoosting"

    const-string/jumbo p4, "acquireDvfs: failed to disableGipsHint"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-nez p2, :cond_5

    const-string/jumbo p2, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_START"

    invoke-static {p1, p2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized release(Landroid/content/Context;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mDvfsMgrs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.intent.action.BIOMETRIC_AUTHENTICATION_STOP"

    invoke-static {p1, v0}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->sendBroadcastForBoosting(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mIsEnabledSsrm:Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBiometricBoostingManager$Releaser;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricBoostingManager;->mReleasers:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
