.class public final Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/camera/CameraServiceProxy$CameraEvent;


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field public mCompleted:Z

.field public mDeviceError:Z

.field public mDurationOrStartTimeMs:J

.field public mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mLogId:J

.field public mMostRequestedFpsRange:Landroid/util/Range;

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public final mSessionIndex:I

.field public mStreamStats:Ljava/util/List;

.field public mUsedUltraWide:Z

.field public mUsedZoomOverride:Z

.field public mUserTag:Ljava/lang/String;

.field public mVideoStabilizationMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-boolean p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    iput-boolean p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    iput-wide p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    iput p12, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    new-instance p1, Landroid/util/Range;

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public final logSelf()V
    .locals 43

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    if-eqz v6, :cond_2

    if-eq v6, v1, :cond_1

    if-eq v6, v4, :cond_0

    const-string/jumbo v7, "Unknown camera facing: "

    invoke-static {v6, v7, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v13, v5

    goto :goto_0

    :cond_0
    move v13, v3

    goto :goto_0

    :cond_1
    move v13, v4

    goto :goto_0

    :cond_2
    move v13, v1

    :goto_0
    iget-object v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    const/4 v7, 0x4

    const/4 v8, -0x1

    if-eqz v6, :cond_8

    iget v6, v6, Landroid/hardware/CameraExtensionSessionStats;->type:I

    if-eqz v6, :cond_7

    if-eq v6, v1, :cond_6

    if-eq v6, v4, :cond_5

    if-eq v6, v3, :cond_4

    if-eq v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Unknown extension type: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget v9, v9, Landroid/hardware/CameraExtensionSessionStats;->type:I

    invoke-static {v6, v9, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_1

    :cond_4
    move v8, v3

    goto :goto_1

    :cond_5
    move v8, v4

    goto :goto_1

    :cond_6
    move v8, v1

    goto :goto_1

    :cond_7
    move v8, v5

    :goto_1
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    iget-boolean v6, v2, Landroid/hardware/CameraExtensionSessionStats;->isAdvanced:Z

    iget v2, v2, Landroid/hardware/CameraExtensionSessionStats;->captureFormat:I

    move/from16 v42, v2

    move/from16 v37, v6

    :goto_2
    move/from16 v36, v8

    goto :goto_3

    :cond_8
    move/from16 v37, v5

    move/from16 v42, v37

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_4

    :cond_9
    move v2, v5

    :goto_4
    const/4 v6, 0x5

    new-array v8, v6, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move v9, v5

    :goto_5
    if-ge v9, v6, :cond_b

    new-instance v10, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v10}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    aput-object v10, v8, v9

    if-ge v9, v2, :cond_a

    iget-object v10, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/CameraStreamStats;

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getWidth()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHeight()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getFormat()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDataSpace()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getUsage()J

    move-result-wide v14

    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getRequestCount()J

    move-result-wide v14

    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getErrorCount()J

    move-result-wide v14

    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStartLatencyMs()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxHalBuffers()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getMaxAppBuffers()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramType()I

    move-result v12

    iput v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramBins()[F

    move-result-object v12

    iput-object v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getHistogramCounts()[J

    move-result-object v12

    iput-object v12, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getDynamicRangeProfile()J

    move-result-wide v14

    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getStreamUseCase()J

    move-result-wide v14

    iput-wide v14, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    aget-object v11, v8, v9

    invoke-virtual {v10}, Landroid/hardware/CameraStreamStats;->getColorSpace()I

    move-result v10

    iput v10, v11, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_b
    iget-boolean v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v6, :cond_c

    iget-wide v9, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_6

    :cond_c
    const-wide/16 v9, 0x0

    :goto_6
    iget v6, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    iget-wide v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    iget-wide v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    aget-object v5, v8, v5

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v26

    aget-object v5, v8, v16

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v27

    aget-object v4, v8, v4

    invoke-static {v4}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v28

    aget-object v3, v8, v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v29

    aget-object v3, v8, v7

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v30

    iget-object v3, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    iget-boolean v5, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    iget-boolean v7, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v40

    iget-object v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v41

    move/from16 v24, v1

    move/from16 v25, v2

    iget-wide v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLogId:J

    iget v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mSessionIndex:I

    move/from16 v35, v8

    move-wide/from16 v20, v11

    iget v11, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    iget-object v12, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    move-wide/from16 v22, v14

    iget-object v14, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iget-boolean v8, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    move-wide/from16 v33, v1

    iget v1, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iget v0, v0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    move/from16 v18, v0

    move/from16 v17, v1

    move-object/from16 v31, v3

    move/from16 v32, v4

    move/from16 v38, v5

    move/from16 v19, v6

    move/from16 v39, v7

    move/from16 v16, v8

    const/16 v8, 0xe3

    invoke-static/range {v8 .. v42}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJILjava/lang/String;ILjava/lang/String;IZIIIJJZI[B[B[B[B[BLjava/lang/String;IJIIZZZIII)V

    return-void
.end method

.method public final markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    iput-object p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUserTag:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mVideoStabilizationMode:I

    iput-boolean p10, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedUltraWide:Z

    iput-boolean p11, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mUsedZoomOverride:Z

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mExtSessionStats:Landroid/hardware/CameraExtensionSessionStats;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mMostRequestedFpsRange:Landroid/util/Range;

    return-void
.end method
