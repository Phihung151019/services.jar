.class public final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

.field public static final COUNTER_COLOR_FADE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

.field public static final SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;


# instance fields
.field public final mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

.field public final mColorFade:Lcom/android/server/display/ColorFade;

.field public mColorFadeDrawPending:Z

.field final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field public mColorFadeLevel:F

.field public mColorFadePrepared:Z

.field public mColorFadeReady:Z

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field public mScreenBrightness:F

.field public mScreenReady:Z

.field public mScreenState:I

.field public mScreenUpdatePending:Z

.field public final mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

.field public mSdrScreenBrightness:F

.field public volatile mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "DisplayPowerState"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    const-string v0, "ColorFadeLevel"

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string/jumbo v1, "electronBeamLevel"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string/jumbo v1, "screenBrightnessFloat"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string/jumbo v1, "sdrScreenBrightnessFloat"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    new-instance p1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iput p3, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerState;->mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

    iput p4, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/high16 p1, 0x3f800000    # 1.0f

    if-eq p4, v1, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method


# virtual methods
.method public final dismissColorFade()V
    .locals 4

    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    const/16 v1, 0x64

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method

.method public final getColorFadeLevel()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return p0
.end method

.method public final getScreenBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    return p0
.end method

.method public final getSdrScreenBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    return p0
.end method

.method public final prepareColorFade(Landroid/content/Context;I)Z
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v6, 0x2

    const/4 v9, 0x1

    sget-object v10, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    const/4 v11, 0x0

    if-eqz v10, :cond_25

    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v13, 0x1bbd

    if-nez v12, :cond_0

    const-string v12, "COLOR_FADE"

    invoke-static {v1, v12}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v12

    iput-object v12, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v12, :cond_0

    invoke-virtual {v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v12

    iput-boolean v12, v10, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    :cond_0
    iget-boolean v12, v10, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    if-eqz v12, :cond_1

    const-string v12, "ColorFade"

    const-string v14, "ColorFade: SemDvfsManager acquire"

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v12, v13}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v12}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_1
    const-string v12, "ColorFade"

    const-string v14, "ColorFade start [PREPARE]  : mode="

    invoke-static {v2, v14, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v12, "ColorFade#Prepare"

    const-wide/16 v14, 0x1

    invoke-static {v14, v15, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iput-object v1, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    iput v2, v10, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/16 v18, 0x6

    iget v3, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v12, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    :goto_0
    move v5, v11

    goto/16 :goto_f

    :cond_2
    const/16 v19, 0x3038

    iget-boolean v5, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v5, :cond_4

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    monitor-enter v5

    :try_start_0
    iget-boolean v2, v10, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    if-eqz v2, :cond_3

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ColorFade"

    const-string v3, "Failed to handle resolution change!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "ColorFade"

    const-string v3, "ColorFade is already prepared"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    :goto_1
    move v5, v9

    goto/16 :goto_f

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const-string v5, "ColorFade"

    const/16 v20, 0x4

    const-string v8, "ColorFade start display info."

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    iget v5, v3, Landroid/view/DisplayInfo;->layerStack:I

    iput v5, v10, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v5

    iput v5, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v3}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    iput v5, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v8, v8

    move-wide/from16 v23, v14

    float-to-double v14, v8

    int-to-float v5, v5

    const/16 v25, 0x3

    float-to-double v7, v5

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v5, v7

    iput v5, v10, Lcom/android/server/display/ColorFade;->mMaxRadius:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    iput v5, v10, Lcom/android/server/display/ColorFade;->mMinRadius:F

    iget v5, v3, Landroid/view/DisplayInfo;->colorMode:I

    const/16 v7, 0x9

    if-ne v5, v7, :cond_5

    move v5, v9

    goto :goto_3

    :cond_5
    move v5, v11

    :goto_3
    iput-boolean v9, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v14, "ColorFade"

    const-string v15, "ColorFade end display info."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v14, v7, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "ColorFade"

    const-string v13, "ColorFade start setColorFadeNightDim"

    invoke-static {v15, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "mDNIe"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v13, v10, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v13, v9}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-string v13, "ColorFade"

    const-string v15, "ColorFade end setColorFadeNightDim"

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v26, v26, v7

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v10, Lcom/android/server/display/ColorFade;->mMode:I

    if-ne v8, v6, :cond_7

    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "ColorFade"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ColorFade End [PREPARE]  : mode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , <Time> displayInfo: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    :cond_7
    const-string v8, "ColorFade"

    const-string v13, "ColorFade start screenshot."

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "ColorFade#screenshot"

    move v15, v5

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v13, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v8, v13}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v8

    if-nez v8, :cond_8

    const-string v8, "ColorFade"

    const-string v13, "Failed to take screenshot. Buffer is null"

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :cond_8
    if-nez v8, :cond_9

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const-string v13, "ColorFade"

    const-string v12, "ColorFade end screenshot."

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v28, v28, v26

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "ColorFade#createSurface"

    invoke-static {v4, v5, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual {v8}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    move-result v13

    invoke-virtual {v8}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v9

    invoke-virtual {v10, v9}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    sub-long v30, v30, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move/from16 v26, v11

    const-string v11, "ColorFade"

    const-string v6, "ColorFade start egl and surface."

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ColorFade#createEgl"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    iget-object v6, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-nez v6, :cond_c

    invoke-static/range {v26 .. v26}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v11, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v6, v11, :cond_b

    const-string/jumbo v2, "eglGetDisplay"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    move-wide/from16 v32, v4

    goto/16 :goto_e

    :cond_b
    move-wide/from16 v32, v4

    const/4 v11, 0x2

    new-array v4, v11, [I

    move/from16 v5, v26

    const/4 v11, 0x1

    invoke-static {v6, v4, v5, v4, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x0

    iput-object v4, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const-string/jumbo v2, "eglInitialize"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_c
    move-wide/from16 v32, v4

    :cond_d
    iget-object v4, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    const-string v5, "ColorFade"

    if-nez v4, :cond_10

    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v11, 0x1

    new-array v6, v11, [I

    const/4 v11, 0x1

    move-object/from16 v35, v4

    new-array v4, v11, [Landroid/opengl/EGLConfig;

    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v41, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v37, v4

    move-object/from16 v40, v6

    move-object/from16 v34, v11

    const/16 v39, 0x1

    invoke-static/range {v34 .. v41}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v2, "eglChooseConfig"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_e
    const/16 v26, 0x0

    aget v4, v40, v26

    if-gtz v4, :cond_f

    const-string/jumbo v2, "no valid config found"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_f
    aget-object v4, v37, v26

    iput-object v4, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    :cond_10
    iget-object v4, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-eqz v4, :cond_11

    iget-boolean v6, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    if-eq v13, v6, :cond_11

    iget-object v6, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6, v4}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const/4 v4, 0x0

    iput-object v4, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    :cond_11
    iget-object v4, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v4, :cond_14

    const/4 v4, 0x5

    new-array v6, v4, [I

    move v4, v13

    const/16 v11, 0x3098

    const/16 v26, 0x0

    aput v11, v6, v26

    const/16 v27, 0x2

    const/16 v28, 0x1

    aput v27, v6, v28

    aput v19, v6, v27

    aput v19, v6, v25

    aput v19, v6, v20

    if-eqz v4, :cond_12

    const/16 v11, 0x32c0

    aput v11, v6, v27

    aput v28, v6, v25

    :cond_12
    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v13, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v19, v8

    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    move/from16 v29, v15

    const/4 v15, 0x0

    invoke-static {v11, v13, v8, v6, v15}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    iput-object v6, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ColorFade createEglContext DisplayID : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-static {v6, v8, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v5, :cond_13

    const-string/jumbo v2, "eglCreateContext"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_13
    move/from16 v15, v29

    goto :goto_4

    :cond_14
    move-object/from16 v19, v8

    move v4, v13

    :goto_4
    invoke-virtual {v10, v4, v15}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    move-result v5

    if-eqz v5, :cond_20

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v5

    if-nez v5, :cond_15

    const/4 v11, 0x1

    goto/16 :goto_e

    :cond_15
    :try_start_2
    iget-boolean v5, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v6, v10, Lcom/android/server/display/ColorFade;->mTexNames:[I

    if-nez v5, :cond_17

    const/4 v5, 0x0

    const/4 v11, 0x1

    :try_start_3
    invoke-static {v11, v6, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string/jumbo v5, "glGenTextures"

    invoke-static {v5}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_16

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto/16 :goto_e

    :cond_16
    :try_start_4
    iput-boolean v11, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_17
    :goto_5
    const-string v5, "ColorFade"

    const-string v8, "ColorFade setScreenshot"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/SurfaceTexture;

    const/16 v26, 0x0

    aget v6, v6, v26

    invoke-direct {v5, v6}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v5}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v5, v8}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v11, 0x1

    if-ne v3, v11, :cond_18

    const/4 v3, 0x2

    goto :goto_6

    :cond_18
    const/4 v11, 0x2

    if-ne v3, v11, :cond_19

    move/from16 v3, v20

    goto :goto_6

    :cond_19
    move/from16 v5, v25

    if-ne v3, v5, :cond_1a

    move/from16 v3, v18

    goto :goto_6

    :cond_1a
    const/4 v3, 0x0

    :goto_6
    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v28, 0x1

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v27, 0x2

    add-int/lit8 v8, v3, 0x2

    rem-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/16 v25, 0x3

    add-int/lit8 v8, v3, 0x3

    rem-int/lit8 v8, v8, 0x8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v3, 0x4

    rem-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v13, 0x5

    add-int/lit8 v8, v3, 0x5

    rem-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v3, 0x6

    rem-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v5, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x7

    rem-int/lit8 v3, v3, 0x8

    invoke-virtual {v5, v3, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget v3, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v5, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    const/4 v6, 0x0

    invoke-static {v6, v6, v3, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v3, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v3, v3

    iget v5, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-virtual {v10, v3, v5}, Lcom/android/server/display/ColorFade;->ortho(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    const-string v3, "ColorFade"

    const-string v8, "ColorFade end egl and surface."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v5, v5, v30

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "ColorFade"

    const-string v6, "ColorFade start init GL."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ColorFade#initGL"

    move-object v8, v12

    move-wide/from16 v11, v32

    invoke-static {v11, v12, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_1b
    :try_start_7
    invoke-virtual {v10, v1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->initGLBuffers()V

    const-string/jumbo v5, "prepare"

    invoke-static {v5}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_1c

    goto/16 :goto_b

    :cond_1c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v32, 0x20000

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    const-string v5, "ColorFade"

    const-string v13, "ColorFade end init GL."

    invoke-static {v5, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v11, v11, v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    iput-boolean v4, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    iput-boolean v15, v10, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    const-string v4, "ColorFade"

    const-string v12, "ColorFade start dejank."

    invoke-static {v4, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v4, 0x3

    if-eq v2, v11, :cond_1e

    if-ne v2, v4, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v15, 0x0

    goto :goto_a

    :cond_1e
    :goto_8
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v4, :cond_1d

    iput-boolean v11, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v10, v6}, Lcom/android/server/display/ColorFade;->draw(F)V

    add-int/2addr v15, v11

    const/4 v4, 0x3

    goto :goto_9

    :goto_a
    iput-boolean v15, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string v4, "ColorFade"

    const-string v6, "ColorFade end dejank."

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v11, v18, v12

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "ColorFade"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "ColorFade End [PREPARE]  : mode="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", <Time> displayInfo: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", screenshot: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", createSurface : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", egl : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", initGl : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", nightModeTime : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dejank : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", totalPrepare : "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v18, v16

    invoke-static {v11, v2, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v5, 0x1

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_c

    :cond_1f
    :goto_b
    :try_start_8
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    const-wide/32 v32, 0x20000

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    goto/16 :goto_7

    :goto_c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->release()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_d
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    :cond_20
    :goto_e
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    const-wide/32 v32, 0x20000

    invoke-static/range {v32 .. v33}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static/range {v23 .. v24}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_7

    :goto_f
    iget-object v2, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_21

    const-string v2, "COLOR_FADE"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_21

    const/16 v2, 0x1bbd

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->checkHintSupported(I)Z

    move-result v1

    iput-boolean v1, v10, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    :cond_21
    iget-boolean v1, v10, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    if-eqz v1, :cond_22

    const-string v1, "ColorFade"

    const-string v2, "ColorFade: SemDvfsManager release"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v10, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_22
    if-nez v5, :cond_23

    const/4 v11, 0x1

    const/4 v15, 0x0

    goto :goto_10

    :cond_23
    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v1, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v1, :cond_24

    iput-boolean v11, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v0, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_24
    return v11

    :cond_25
    move v15, v11

    move v11, v9

    :goto_10
    iput-boolean v15, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    iput-boolean v11, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return v15

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method public final scheduleScreenUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setColorFadeLevel(F)V
    .locals 8

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    const-string v1, "DisplayPowerState"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setColorFadeLevel: level="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ColorFade exit displayId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    float-to-double v6, p1

    cmpl-double v0, v6, v4

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ColorFade entry displayId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez p1, :cond_4

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final waitUntilClean(Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 p0, 0x0

    return p0
.end method
