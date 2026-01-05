.class public abstract Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;


# instance fields
.field public final mEnrolledIdsFrameworkArray:[I

.field public final mEnrolledIdsHalList:Ljava/util/List;

.field public final mEnrolledList:Ljava/util/List;

.field public final mInitialEnrolledSize:I

.field public mIsDanglingFramework:Z

.field public mIsDanglingHal:Z

.field public final mUnknownHALTemplates:Ljava/util/List;

.field public final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    move-object/from16 p1, p6

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    move-object/from16 p2, p7

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    iget-object p3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {p3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getModality()I
.end method

.method public final getProtoEnum()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    const-string v1, "Biometrics/InternalEnumerateClient"

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string/jumbo p1, "Null identifier"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleEnumeratedTemplate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Matched: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez p2, :cond_11

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingFramework:Z

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    const/4 p2, 0x2

    if-nez p1, :cond_5

    const-string/jumbo p1, "Null enrolledList"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    iget v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    invoke-virtual {v4}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    iget-boolean v7, v5, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_7
    iget-object v7, v5, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x3b0

    iget v5, v5, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-static {v7, v5, v6, p2, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    :goto_4
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    invoke-virtual {v4}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    iget-object v5, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    const/16 v6, 0x94

    iget v4, v4, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-static {v6, v4, p2, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->sendDanglingNotification(Ljava/util/List;)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_6
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingFramework:Z

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    if-eqz v1, :cond_b

    const/4 p2, 0x4

    :goto_7
    move v6, p2

    goto :goto_8

    :cond_b
    if-eqz p1, :cond_c

    const/4 p2, 0x3

    goto :goto_7

    :cond_c
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mIsDanglingHal:Z

    if-eqz p1, :cond_d

    goto :goto_7

    :cond_d
    move v6, v0

    :goto_8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsHalList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v7, p2, [I

    :goto_9
    if-ge v2, p2, :cond_e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    iget v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledIdsFrameworkArray:[I

    iget-boolean p2, p1, Lcom/android/server/biometrics/log/BiometricLogger;->mShouldLogMetrics:Z

    if-nez p2, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_a

    :cond_10
    iget-object p2, p1, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x3b1

    iget v4, p1, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII[I[I)V

    :goto_a
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_11
    return-void
.end method

.method public sendDanglingNotification(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDanglingNotification(): initial enrolledSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", after clean up size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Biometrics/InternalEnumerateClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mInitialEnrolledSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getModality()I

    move-result p0

    invoke-static {v1, p1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showBiometricReEnrollNotification(Landroid/content/Context;Ljava/util/List;ZI)V

    :cond_1
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->startHalOperation()V

    return-void
.end method

.method public final unableToStart()V
    .locals 0

    return-void
.end method
