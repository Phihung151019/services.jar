.class public final Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    return-void
.end method

.method public static authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIZJIZIF)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v5, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-static/range {p4 .. p5}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v14, v1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v2, v1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    if-ne v2, v4, :cond_0

    move v15, v6

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    move v15, v4

    goto :goto_0

    :cond_1
    move v15, v3

    :goto_0
    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    iget-boolean v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iget v7, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iget v8, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    invoke-static {v8}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v19

    iget v8, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    const/4 v11, 0x3

    if-eq v8, v4, :cond_4

    if-eq v8, v6, :cond_3

    if-eq v8, v11, :cond_2

    move/from16 v20, v3

    goto :goto_1

    :cond_2
    move/from16 v20, v6

    goto :goto_1

    :cond_3
    move/from16 v20, v4

    goto :goto_1

    :cond_4
    move/from16 v20, v11

    :goto_1
    iget-object v3, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    :goto_2
    move/from16 v21, v3

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    :goto_3
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v22

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    move-result-object v23

    const/4 v12, -0x1

    iget-boolean v0, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    move/from16 v17, v2

    const/16 v2, 0x58

    move/from16 v3, p1

    move/from16 v6, p2

    move/from16 v11, p3

    move/from16 v8, p6

    move/from16 v4, p8

    move/from16 v13, p9

    move/from16 v24, v0

    move/from16 v16, v1

    move/from16 v18, v7

    move/from16 v7, p7

    invoke-static/range {v2 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZIFIIZZIIIII[IZ)V

    return-void
.end method

.method public static error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v5, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-static/range {p5 .. p6}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sanitizeLatency(J)J

    move-result-wide v11

    iget-object v1, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v14, v1, Landroid/hardware/biometrics/common/OperationContext;->id:I

    iget-byte v2, v1, Landroid/hardware/biometrics/common/OperationContext;->reason:B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    if-ne v2, v4, :cond_0

    move v15, v6

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    move v15, v4

    goto :goto_0

    :cond_1
    move v15, v3

    :goto_0
    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isAod:Z

    iget-boolean v2, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsDisplayOn:Z

    iget v7, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mDockState:I

    iget v8, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mOrientation:I

    invoke-static {v8}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->orientationType(I)I

    move-result v19

    iget v8, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mFoldState:I

    const/4 v9, 0x3

    if-eq v8, v4, :cond_4

    if-eq v8, v6, :cond_3

    if-eq v8, v9, :cond_2

    move/from16 v20, v3

    goto :goto_1

    :cond_2
    move/from16 v20, v6

    goto :goto_1

    :cond_3
    move/from16 v20, v4

    goto :goto_1

    :cond_4
    move/from16 v20, v9

    :goto_1
    iget-object v3, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mSessionInfo:Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mOrder:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    :goto_2
    move/from16 v21, v3

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    :goto_3
    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I

    move-result v22

    invoke-static {v0}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I

    move-result-object v23

    const/4 v13, -0x1

    iget-boolean v0, v0, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    move/from16 v17, v2

    const/16 v2, 0x59

    move/from16 v3, p1

    move/from16 v6, p2

    move/from16 v10, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v4, p9

    move/from16 v24, v0

    move/from16 v16, v1

    move/from16 v18, v7

    move/from16 v7, p3

    invoke-static/range {v2 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJIIIZZIIIII[IZ)V

    return-void
.end method

.method public static orientationType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public static sanitizeLatency(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "found a negative latency : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricFrameworkStatsLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, -0x1

    :cond_0
    return-wide p0
.end method

.method public static toProtoWakeReason(Lcom/android/server/biometrics/log/OperationContextExt;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget p0, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toProtoWakeReasonDetails(Lcom/android/server/biometrics/log/OperationContextExt;)[I
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-object p0, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/biometrics/common/AuthenticateReason;->getFaceAuthenticateReason()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_9
    move v0, v2

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
