.class public abstract Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;
.implements Lcom/android/server/biometrics/sensors/RemovalConsumer;
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field public mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

.field public final mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

.field public mFavorHalEnrollments:Z

.field public final mHasEnrollmentsBeforeStarting:Z

.field public final mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

.field public final mUnknownHALTemplates:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startCleanupUnknownHalTemplates, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalCleanupClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget v10, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    iget v7, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    iget-object p0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    const/16 v1, 0x94

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v0, 0x3

    invoke-static {v1, p0, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :goto_0
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v4, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {p0, v0, v4}, Lcom/android/server/biometrics/sensors/BiometricUtils;->hasValidBiometricUserState(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    const/4 v0, 0x5

    invoke-static {v1, p0, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :cond_2
    :goto_1
    iget-object p0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    iget-object v0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V
    .locals 13

    move-object/from16 v0, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mFavorHalEnrollments:Z

    new-instance p2, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    const/4 v3, 0x0

    invoke-direct {p2, p0, v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;I)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    new-instance p2, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    const/4 v3, 0x1

    invoke-direct {p2, p0, v3}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;I)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    move-object/from16 p2, p9

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    return-void
.end method


# virtual methods
.method public getCurrentEnumerateClient()Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/biometrics/sensors/InternalEnumerateClient;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    check-cast p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    return-object p0
.end method

.method public getCurrentRemoveClient()Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/biometrics/sensors/RemovalClient;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    return-object p0
.end method

.method public abstract getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.end method

.method public final getProtoEnum()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public abstract getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
.end method

.method public getUnknownHALTemplates()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public handleInvalidBiometricState()V
    .locals 0

    return-void
.end method

.method public final hasEnrollmentStateChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    if-eq v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasEnrollments()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
.end method

.method public final onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    instance-of v1, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    const-string v2, "Biometrics/InternalCleanupClient"

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onEnumerationResult received during client: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "onEnumerated, remaining: "

    invoke-static {p2, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public final onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    instance-of v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onRemoved received during client: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Biometrics/InternalCleanupClient"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/RemovalClient;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-interface {p1, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    iget v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget v10, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    move-result-object p0

    iput-object p0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Starting enumerate: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " enrolledList size:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Biometrics/InternalCleanupClient"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    iget-object p1, v2, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final unableToStart()V
    .locals 0

    return-void
.end method
