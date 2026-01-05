.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsBrightnessScaledUp:Z

.field public mIsBrightnessScaledUpPrev:Z

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    const-string/jumbo p1, "display"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final onHdrInfoChanged(Landroid/os/IBinder;IIIIF)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v5, v2, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    const-string v6, ", DisplaySize: "

    const-string v7, ", HdrLayerSize: "

    const-string v8, ", SDR Dimming: "

    const-string/jumbo v10, "x"

    const-string v11, "HighBrightnessModeController"

    if-eqz v5, :cond_9

    if-lez p2, :cond_9

    iget v5, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v12, v5, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iget v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v13

    const-string/jumbo v14, "brt scaled up: "

    if-lez v5, :cond_8

    if-lez v13, :cond_8

    mul-int v15, v3, v4

    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    mul-int/2addr v9, v0

    int-to-float v0, v2

    move/from16 v16, v0

    int-to-float v0, v5

    div-float v17, v16, v0

    int-to-float v12, v12

    int-to-float v13, v13

    div-float/2addr v12, v13

    cmpl-float v13, v17, v12

    if-lez v13, :cond_0

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    div-float v0, v16, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    if-lez v13, :cond_1

    move v2, v5

    :cond_1
    mul-int v5, v2, v0

    int-to-float v12, v15

    int-to-float v13, v9

    div-float v13, v12, v13

    move/from16 v16, v12

    int-to-float v12, v5

    div-float v12, v16, v12

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    move-object/from16 v17, v11

    iget v11, v6, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    if-gtz v11, :cond_4

    iget-boolean v11, v6, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    move/from16 v18, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    goto :goto_2

    :cond_2
    iget v11, v6, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    cmpl-float v11, v18, v11

    if-ltz v11, :cond_3

    :goto_1
    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    move/from16 v18, v12

    :goto_2
    iget v11, v6, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    cmpl-float v11, v13, v11

    if-ltz v11, :cond_3

    goto :goto_1

    :goto_3
    iput-boolean v11, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iget v6, v6, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    if-gtz v6, :cond_6

    iget-boolean v6, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    if-eq v11, v6, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v6, v17

    goto :goto_5

    :cond_6
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v11, v11, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    invoke-static {v11, v3, v7, v10, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v11, "("

    const-string v12, "), DisplaySize: "

    invoke-static {v4, v15, v11, v12, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v12, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v12, v12, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v12, v12, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    const-string v14, "), deviceRatio: "

    invoke-static {v12, v9, v11, v14, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " maxAvailSize: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), availRatio: "

    invoke-static {v0, v5, v11, v2, v6}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move/from16 v12, v18

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v17

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    move-object/from16 v9, v16

    goto :goto_6

    :cond_8
    move-object/from16 v16, v6

    move-object v6, v11

    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    const/4 v12, 0x1

    if-le v0, v12, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    invoke-static {v2, v3, v7, v10, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-static {v0, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_6
    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v0, :cond_a

    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    const/16 v5, 0x78

    invoke-interface {v0, v2, v5, v6}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string/jumbo v0, "Request Vrr to 120Hz @HDR"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v0, "Error : RemoteException occured at acquireRefreshRateMinLimitToken"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    move-object v9, v6

    move-object v6, v11

    :cond_a
    :goto_7
    iget-boolean v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iput-boolean v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    if-eqz v2, :cond_b

    if-nez v0, :cond_b

    :try_start_1
    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string/jumbo v0, "Release Vrr @HDR"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    const-string v0, "Error : RemoteException occured at releaseRefreshRateMinLimitToken"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    iget-object v0, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    iget-object v11, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    const-string/jumbo v12, "mSupportPhotoHdr: "

    if-gtz v2, :cond_d

    iget-boolean v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsHdrLayerPresent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-static {v6, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_a

    :cond_d
    :goto_9
    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    move/from16 v2, p2

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;IIIF)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mIsHdrLayerPresent: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", numberOfHdrLayers: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4, v10, v9, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mThresRatio: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    invoke-static {v0, v1, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :goto_a
    return-void
.end method
