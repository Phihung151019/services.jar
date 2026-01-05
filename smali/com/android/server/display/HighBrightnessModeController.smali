.class public Lcom/android/server/display/HighBrightnessModeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static final FEATURE_SUPPORT_HDR_SOLUTION:Z

.field public static final FEATURE_SUPPORT_PHOTOHDR:Z

.field static final HBM_TRANSITION_POINT_INVALID:F = Infinityf


# instance fields
.field public mAmbientLux:F

.field public mBrightness:F

.field public final mBrightnessMax:F

.field public final mBrightnessMin:F

.field public final mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mDisplayStatsId:I

.field public mForceHbmChangeCallback:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmChangeCallback:Ljava/lang/Runnable;

.field public mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field public mHbmMode:I

.field public mHbmStatsState:I

.field public mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

.field public final mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

.field public mHeight:I

.field public mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mIsAutoBrightnessEnabled:Z

.field public mIsAutoBrightnessOffByState:Z

.field public mIsBlockedByLowPowerMode:Z

.field mIsHdrLayerPresent:Z

.field public mIsInAllowedAmbientRange:Z

.field public mIsTimeAvailable:Z

.field public final mLogLevel:I

.field public mMaxDesiredHdrSdrRatio:F

.field public final mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public final mSDRDimming:I

.field public final mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

.field public final mStaticVRR:Z

.field public mSupportHdrSolution:Z

.field public final mSupportPhotoHdr:Z

.field public final mSurfaceFlinger:Landroid/os/IBinder;

.field public final mThresRatio:F

.field public mThrottlingReason:I

.field public mUnthrottledBrightness:F

.field public mUseTimeAllowance:Z

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HighBrightnessModeController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_HW_HDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_HDR_SOLUTION:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_PHOTOHDR:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V
    .locals 11

    move/from16 v2, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    const v4, 0x3f666666    # 0.9f

    iput v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportHdrSolution:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mSurfaceFlinger:Landroid/os/IBinder;

    iput v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    iput v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    iput v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    move-object/from16 v7, p13

    iput-object v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iput v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    move/from16 v2, p8

    iput v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    move-object/from16 v2, p11

    iput-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    move-object/from16 v2, p12

    iput-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    new-instance v2, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    invoke-direct {v2, p0, p2}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;-><init>(Lcom/android/server/display/HighBrightnessModeController;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, p0}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-direct {v0, p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;-><init>(Lcom/android/server/display/HighBrightnessModeController;)V

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    const-string/jumbo v0, "debug.hbmc.log"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    const-string/jumbo v0, "debug.hbmc.enforce.brt_up"

    const-string/jumbo v2, "null"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "debug.hbmc.enforce.vrr"

    invoke-static {v0, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "debug.hbmc.thres"

    const-string v7, "0.9"

    invoke-static {v0, v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    const-string/jumbo v7, "SDR Dimming OnOff: "

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    const-string v10, "HighBrightnessModeController"

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    :try_start_0
    const-string/jumbo v0, "android.ui.ISurfaceComposer"

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x46f

    :try_start_1
    invoke-interface {v4, v0, v8, v9, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string/jumbo v0, "SecurityException: Need system privilege"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string/jumbo v0, "getSDRDimmingEnalbe() FAILED!"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iget v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mLogLevel:I

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_3
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mSDRDimming:I

    sget-boolean v4, Lcom/android/server/display/HighBrightnessModeController;->FEATURE_SUPPORT_PHOTOHDR:Z

    iput-boolean v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mSupportPhotoHdr:Z

    if-lez v0, :cond_4

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_4

    :cond_4
    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    :goto_4
    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThresRatio:F

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v6, v5}, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Object;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    :goto_5
    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    goto :goto_6

    :cond_5
    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    const-string/jumbo v0, "Prevent Static VRR @HDR"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iput-boolean v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mStaticVRR:Z

    const-string v0, "Enforce Static VRR @HDR"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_6
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final calculateRemainingTime(J)J
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-wide v3, v0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    cmp-long v0, v3, v1

    const-string v5, "HighBrightnessModeController"

    if-lez v0, :cond_2

    cmp-long v0, v3, p1

    if-lez v0, :cond_1

    const-string/jumbo v0, "Start time set to the future. curr: "

    const-string v6, ", start: "

    invoke-static {v0, p1, p2, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iput-wide p1, v0, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    move-wide v3, p1

    :cond_1
    sub-long v3, p1, v3

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    sget-boolean v0, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Time already used after current session: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v6, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long/2addr p1, v6

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-object v6, v6, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/HbmEvent;

    iget-wide v8, v7, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    cmp-long v8, v8, p1

    if-gez v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    iget-wide v8, v7, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-wide v10, v7, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    sub-long/2addr v10, v8

    add-long/2addr v3, v10

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Time already used after all sessions: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    sub-long/2addr p0, v3

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final deviceSupportsHbm()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentBrightnessMax()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    return p0
.end method

.method public final getHdrBrightnessValue()F
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;->getHdrBrightnessFromSdr(FF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMax:F

    invoke-static {v2, v0, v2, p0, v1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public getHdrListener()Lcom/android/server/display/HighBrightnessModeController$HdrListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    return-object p0
.end method

.method public final isHbmCurrentlyAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThermalThrottlingActive()Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBrightnessChanged(IFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iput p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-wide v0, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    const/4 p3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iget-object v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float p2, p2, v5

    if-lez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-nez p2, :cond_2

    move p3, v4

    :cond_2
    if-eq p1, p3, :cond_4

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iput-wide p1, p3, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/android/server/display/HbmEvent;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p3, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    iput-wide p1, p3, Lcom/android/server/display/HbmEvent;->mEndTimeMillis:J

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-object p1, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iput-wide v2, p1, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    sget-boolean p1, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "New HBM event: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-object p2, p2, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HighBrightnessModeController"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    return-void
.end method

.method public final recalculateTimeAllowance()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mClock:Lcom/android/server/display/HighBrightnessModeController$Injector$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/HighBrightnessModeController;->calculateRemainingTime(J)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v6, v5, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    cmp-long v6, v3, v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ltz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    iget v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    if-nez v6, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-lez v9, :cond_1

    iget v9, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpl-float v9, v9, v5

    if-lez v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-nez v6, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    move v7, v8

    :cond_3
    iput-boolean v7, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    iget-object v8, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-object v8, v8, Lcom/android/server/display/HighBrightnessModeMetadata;->mEvents:Ljava/util/ArrayDeque;

    iget v10, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    cmpl-float v5, v10, v5

    if-lez v5, :cond_4

    add-long v12, v1, v3

    const-wide/16 v16, -0x1

    goto :goto_2

    :cond_4
    if-nez v7, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide v12, v5, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    sub-long v12, v1, v12

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/HbmEvent;

    iget-wide v14, v5, Lcom/android/server/display/HbmEvent;->mStartTimeMillis:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v5, v0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    const-wide/16 v16, -0x1

    iget-wide v10, v5, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    add-long/2addr v14, v10

    sub-long/2addr v14, v12

    add-long/2addr v14, v1

    sub-long v12, v14, v3

    goto :goto_2

    :cond_5
    const-wide/16 v16, -0x1

    move-wide/from16 v12, v16

    :goto_2
    sget-boolean v5, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "HBM recalculated.  IsAllowedWithoutRestrictions: "

    const-string v7, ", isOnlyAllowedToStayOn: "

    const-string v10, ", remainingAllowedTime: "

    invoke-static {v5, v6, v7, v9, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isLuxHigh: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHBMCurrentlyAllowed: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isHdrLayerPresent: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxDesiredHdrSdrRatio: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mMaxDesiredHdrSdrRatio:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isAutoBrightnessEnabled: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsTimeAvailable: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInAllowedAmbientRange: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsBlockedByLowPowerMode: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mBrightness: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mUnthrottledBrightness: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mUnthrottledBrightness:F

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mThrottlingReason: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mThrottlingReason:I

    invoke-static {v3}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", RunningStartTimeMillis: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget-wide v3, v3, Lcom/android/server/display/HighBrightnessModeMetadata;->mRunningStartTimeMillis:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", nextTimeout: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, v12, v16

    if-eqz v3, :cond_6

    sub-long v1, v12, v1

    goto :goto_3

    :cond_6
    move-wide/from16 v1, v16

    :goto_3
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", events: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HighBrightnessModeController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    cmp-long v1, v12, v16

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController;->mRecalcRunnable:Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x1

    add-long/2addr v12, v3

    invoke-virtual {v1, v2, v12, v13}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->updateHbmMode()V

    return-void
.end method

.method public final resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V
    .locals 4

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iput p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    iput-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iput-object p6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrBrightnessCfg:Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/HighBrightnessModeController;->mSettingsObserver:Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;

    iget-object p4, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iput-boolean p2, p4, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    iget-boolean p5, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-eqz p5, :cond_1

    iget-object p4, p4, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean p2, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-ne p4, p3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-object p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p5, p4}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    :cond_3
    iput-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eqz p3, :cond_4

    iget-object p4, p0, Lcom/android/server/display/HighBrightnessModeController;->mHdrListener:Lcom/android/server/display/HighBrightnessModeController$HdrListener;

    invoke-virtual {p4, p3}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-wide p4, p3, Lcom/android/server/display/config/HighBrightnessModeData;->timeWindowMillis:J

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    const/4 p5, 0x1

    if-nez p4, :cond_5

    iget-wide v2, p3, Lcom/android/server/display/config/HighBrightnessModeData;->timeMaxMillis:J

    cmp-long p4, v2, v0

    if-nez p4, :cond_5

    iget-wide p3, p3, Lcom/android/server/display/config/HighBrightnessModeData;->timeMinMillis:J

    cmp-long p3, p3, v0

    if-nez p3, :cond_5

    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    iput-boolean p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    goto :goto_1

    :cond_5
    iput-boolean p5, p0, Lcom/android/server/display/HighBrightnessModeController;->mUseTimeAllowance:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    iget-object p3, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-boolean p3, p3, Lcom/android/server/display/config/HighBrightnessModeData;->allowInLowPowerMode:Z

    if-nez p3, :cond_6

    iput-boolean p2, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    iget-boolean p0, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p3, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mLowPowerModeSetting:Landroid/net/Uri;

    const/4 p4, -0x1

    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean p5, p1, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->mStarted:Z

    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController$SettingsObserver;->updateLowPower()V

    :cond_6
    return-void
.end method

.method public final updateHbmMode()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v6, v6, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    iget v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v6, v6, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_1
    iget v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    if-ne v5, v6, :cond_5

    goto/16 :goto_5

    :cond_5
    if-ne v6, v4, :cond_6

    move v6, v1

    goto :goto_2

    :cond_6
    move v6, v3

    :goto_2
    if-ne v5, v4, :cond_7

    move v7, v1

    goto :goto_3

    :cond_7
    move v7, v3

    :goto_3
    if-eqz v6, :cond_f

    if-nez v7, :cond_f

    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v6, :cond_8

    iget-boolean v7, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    if-eqz v7, :cond_8

    const/4 v1, 0x6

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    const/4 v1, 0x7

    goto :goto_4

    :cond_9
    iget-boolean v6, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsTimeAvailable:Z

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->isThermalThrottlingActive()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v4

    goto :goto_4

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsHdrLayerPresent:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x4

    goto :goto_4

    :cond_d
    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mIsBlockedByLowPowerMode:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x5

    goto :goto_4

    :cond_e
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mBrightness:F

    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v2, v2, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f

    const/16 v1, 0x9

    goto :goto_4

    :cond_f
    move v1, v3

    :goto_4
    iget v2, p0, Lcom/android/server/display/HighBrightnessModeController;->mDisplayStatsId:I

    iget-object v4, p0, Lcom/android/server/display/HighBrightnessModeController;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x1a0

    invoke-static {v4, v2, v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iput v5, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmStatsState:I

    :goto_5
    iget v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    if-ne v1, v0, :cond_11

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    return-void

    :cond_11
    :goto_6
    iput-boolean v3, p0, Lcom/android/server/display/HighBrightnessModeController;->mForceHbmChangeCallback:Z

    iput v0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController;->mHbmChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
