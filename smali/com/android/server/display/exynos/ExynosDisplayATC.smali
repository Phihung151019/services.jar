.class public final Lcom/android/server/display/exynos/ExynosDisplayATC;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static TUNE_MODE:Z


# instance fields
.field public final ATC_BL_FILE_PATH:Ljava/lang/String;

.field public final ATC_CAL_FILE_PATH:Ljava/lang/String;

.field public final DEBUG:Z

.field public mAmbientLight:[I

.field public mApsDelayedOffRequired:Z

.field public mApsDelayedOffTable:[I

.field public final mApsInit:Ljava/lang/String;

.field public mApsTable:[Ljava/lang/String;

.field public final mBrightnessInit:[I

.field public mBrightnessLux:[I

.field public mBrightnessSetting:[I

.field public final mContext:Landroid/content/Context;

.field public mCountDownTimerCount:I

.field public mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

.field public final mDataCollectionLock:Ljava/lang/Object;

.field public mDimOperating:I

.field public mEventCount:I

.field public final mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

.field public final mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

.field public mHsvLcgTable:[[Ljava/lang/String;

.field public mHsvTable:[Ljava/lang/String;

.field public mIntervalMs:I

.field public mItem:[Ljava/lang/String;

.field public mLastAps:Ljava/lang/String;

.field public mLastApsDelayedOff:I

.field public mLastHsv:Ljava/lang/String;

.field public mLastHsvLcg:[Ljava/lang/String;

.field public mLastLuminance:I

.field public final mLastSensorReadings:Ljava/util/Deque;

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public mLightSensorEnabled:Z

.field public final mLocalHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mMaxCountDownTimerCount:I

.field public mPreOnOff:Z

.field public mPrevAps:Ljava/lang/String;

.field public mPrevHsv:Ljava/lang/String;

.field public mPrevHsvLcg:[Ljava/lang/String;

.field public mPrevLuminance:I

.field public mPrevPos:I

.field public mQalcoeff:Ljava/lang/String;

.field public mQcoeff:Ljava/lang/String;

.field public mQdelay:Ljava/lang/String;

.field public mQsize:Ljava/lang/String;

.field public mQueAlCoeffTable:[Ljava/lang/String;

.field public mQueCoeffTable:[Ljava/lang/String;

.field public mQueDelayTable:[Ljava/lang/String;

.field public mQueSizeTable:[Ljava/lang/String;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTimeoutMs:I

.field public final sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/exynos/ExynosDisplayAdapter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    const-string v2, "8"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string v2, "10,5,4,3,2,1,1,1"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    const-string v2, "4"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    const-string v2, "/data/dqe/calib_data_atc.xml"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    const-string v2, "/data/dqe/calib_data_atc_bl.xml"

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDataCollectionLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    filled-new-array {v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevLuminance:I

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    iput-boolean v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffRequired:Z

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mEventCount:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mDimOperating:I

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    const/16 v2, 0x5dc

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    const/16 v2, 0x44

    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    filled-new-array {v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    filled-new-array {v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    filled-new-array {v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$1;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$3;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    const-string/jumbo p1, "calib_data_bypass.xml"

    invoke-virtual {p2, p1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "aps"

    invoke-static {v1, p1, p2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "ExynosDisplayATC"

    const-string/jumbo p2, "xml aps not found"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0,0,128,128,128,0,10,14,2,0,25,230,140,250,0,3,3,2,3,128,1"

    iput-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    :goto_1
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    int-to-long v2, p1

    iget p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    int-to-long v4, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/exynos/ExynosDisplayATC$2;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;JJ)V

    iput-object v0, v1, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xbb8
        0xfa0
        0x1388
        0x1770
        0x1f40
        0x2710
        0x3a98
        0x4e20
        0x61a8
        0x7530
        0x9c40
        0xc350
    .end array-data
.end method

.method public static enableATCTuneMode(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "enableATCTuneMode: TUNE_MODE="

    const-string v1, "ExynosDisplayATC"

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    sput-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    return-void
.end method


# virtual methods
.method public final caculateLuminance()V
    .locals 12

    const-string/jumbo v0, "\\s*,\\s*"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v2, v1, [F

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    add-int/lit8 v7, v5, 0x1

    iget v6, v6, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    aput v6, v2, v5

    move v5, v7

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v5, v3, [I

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_1

    aput v4, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_2
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget-object v7, v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-boolean v6, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "qcoef: "

    move v7, v4

    :goto_3
    if-ge v7, v3, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v5, v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    const-string v7, "ExynosDisplayATC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " qalcoeff: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v6, v1, -0x1

    move v7, v4

    move v8, v6

    move v6, v7

    :goto_4
    if-ltz v8, :cond_6

    if-ge v1, v3, :cond_5

    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v5, v7

    mul-int/2addr v9, v10

    add-int/2addr v9, v4

    add-int/2addr v6, v10

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_5

    :cond_5
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v5, v7

    mul-int/2addr v9, v10

    iget v11, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    mul-int/2addr v11, v0

    add-int/2addr v11, v9

    add-int/2addr v11, v4

    add-int/2addr v6, v10

    add-int/2addr v6, v0

    add-int/lit8 v7, v7, 0x1

    move v4, v11

    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_6
    div-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final enableATC(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->resetATC()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_10

    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v2, "calib_data_atc.xml"

    invoke-virtual {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_CAL_FILE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getPathWithPanel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_f

    const-string/jumbo v2, "tune"

    const-string/jumbo v3, "array_length: "

    const-string/jumbo v4, "xml array size wrong: "

    :try_start_0
    const-string/jumbo v5, "atc"

    const-string/jumbo v6, "al"

    invoke-static {p1, v2, v5, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_a

    :cond_1
    array-length v5, v2

    if-gtz v5, :cond_2

    const-string p1, "ExynosDisplayATC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "ExynosDisplayATC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    move v3, v0

    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v3

    const-string v5, "ExynosDisplayATC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "al: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v5, 0x3

    aput v5, v3, v1

    aput v2, v3, v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    move v2, v0

    :goto_2
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v6, v3

    if-ge v2, v6, :cond_d

    aget v3, v3, v2

    const-string/jumbo v6, "aps"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v6, "apsdoff"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v6, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aput v0, v3, v2

    :goto_3
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v6, "qsize"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    :cond_6
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v6, "qcoeff"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    :cond_7
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v6, "qdelay"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    :cond_8
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v6, "qalcoeff"

    invoke-static {v3, v0, p1, v6}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    :cond_9
    move v3, v0

    :goto_4
    const/4 v6, 0x0

    if-ge v3, v5, :cond_b

    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v7, v7, v2

    const-string/jumbo v8, "hsc48_lcg"

    invoke-static {v7, v3, p1, v8}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v6, v6, v2

    aget-object v7, v7, v0

    aput-object v7, v6, v3

    goto :goto_5

    :cond_a
    iget-object v7, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v6, v7, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v3, v3, v2

    const-string/jumbo v7, "hsc"

    invoke-static {v3, v0, p1, v7}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserFactoryXMLALText(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v6, v2

    goto :goto_6

    :cond_c
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aput-object v6, v3, v2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_d
    :goto_7
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length p1, p1

    if-ge v0, p1, :cond_e

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<aps>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<apsdoff>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<qsize>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<qcoeff>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<qdelay>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<qalcoeff>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ExynosDisplayATC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<hsc>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_e
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :goto_8
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_a
    sget-boolean p1, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    goto :goto_b

    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sysfsWriteOnOff(Z)V

    :cond_11
    :goto_b
    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    if-eqz p0, :cond_12

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method

.method public final enableLightSensor(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "enableLightSensor: enable="

    const-string v2, "ExynosDisplayATC"

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->sensorListener:Lcom/android/server/display/exynos/ExynosDisplayATC$3;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final findBestATCTable()I
    .locals 6

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    aget v2, v2, v1

    if-ge v3, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-object v4, v3, v1

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "ExynosDisplayATC"

    if-ltz v2, :cond_a

    array-length v4, v3

    if-lt v1, v4, :cond_5

    goto :goto_5

    :cond_5
    iget v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    if-eq v4, v2, :cond_7

    if-ne v4, v1, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    :cond_7
    :goto_4
    aget-object v3, v3, v4

    if-nez v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unable to find proper ATC table, return prev pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    return p0

    :cond_8
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_9

    const-string/jumbo p0, "adjusted pos: "

    const-string v3, " at ("

    const-string/jumbo v5, "~"

    invoke-static {v4, v2, p0, v3, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ")"

    invoke-static {v1, v2, v0, p0}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_9
    return v4

    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid ATC table, return prev pos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    return p0
.end method

.method public final loadLuminanceATCTable()V
    .locals 5

    const-string/jumbo v0, "mLastLuminance: "

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    if-nez v2, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    if-nez v2, :cond_4

    monitor-exit v1

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    if-nez v2, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    if-nez v2, :cond_6

    monitor-exit v1

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->findBestATCTable()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    monitor-exit v1

    return-void

    :cond_7
    sget-boolean v3, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-nez v3, :cond_8

    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    if-eq v3, v2, :cond_9

    :cond_8
    const-string v3, "ExynosDisplayATC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mAmbientLight: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mAmbientLight:[I

    aget v0, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsDelayedOffTable:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueSizeTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueCoeffTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQcoeff:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueAlCoeffTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQalcoeff:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQueDelayTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQdelay:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvTable:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHsvLcgTable:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    iput v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final parserTuneATCBLXML()V
    .locals 7

    const-string/jumbo v0, "atc"

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    const-string/jumbo v2, "array_length: "

    const-string/jumbo v3, "xml array size wrong: "

    :try_start_0
    const-string/jumbo v4, "al"

    invoke-static {v1, v0, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "ExynosDisplayATC"

    if-gtz v4, :cond_1

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v2, v0

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget-object v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "al: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget v3, v3, v0

    const-string/jumbo v4, "bl"

    invoke-static {v3, v1, v4}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->parserXMLALText(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v0, v0

    if-ge v2, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<bl>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final printSensorDeque()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-array v1, v0, [F

    new-array v0, v0, [J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-boolean p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "que: "

    const-string v1, "ExynosDisplayATC"

    invoke-static {p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final resetATC()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevAps:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessInit:[I

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsv:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    if-nez v3, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    :cond_2
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevHsvLcg:[Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPrevPos:I

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    return-void
.end method

.method public final sendMessage()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mHandler:Lcom/android/server/display/exynos/ExynosDisplayATC$1;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastApsDelayedOff:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsvLcg:[Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastHsv:Ljava/lang/String;

    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public final setBrightnessAdjustment(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    array-length v3, v1

    if-gt v3, v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, v0

    array-length v1, v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget v1, v1, v0

    if-ge p1, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sub-int/2addr v0, v2

    const-string/jumbo v1, "lux: "

    const-string v2, ", mBrightnessLux: "

    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessSetting: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget v1, v1, v0

    const-string v2, "ExynosDisplayATC"

    invoke-static {p1, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    aget p1, p1, v0

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final setCountDownTimer(II)V
    .locals 2

    const/16 v0, 0x11

    if-lt p1, v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    const p2, 0x8555

    div-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mMaxCountDownTimerCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mTimeoutMs: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mTimeoutMs:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIntervalMs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mIntervalMs:I

    const-string v0, "ExynosDisplayATC"

    invoke-static {p1, p2, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLocalHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/display/exynos/ExynosDisplayATC$4;

    invoke-direct {p2, p0}, Lcom/android/server/display/exynos/ExynosDisplayATC$4;-><init>(Lcom/android/server/display/exynos/ExynosDisplayATC;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setLastLuminance(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastAps:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastLuminance:I

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->loadLuminanceATCTable()V

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mQsize:Ljava/lang/String;

    const-string/jumbo v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mItem:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->timestamp:J

    int-to-float v1, p1

    iput v1, v0, Lcom/android/server/display/exynos/ExynosDisplayATC$LightData;->lux:F

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLastSensorReadings:Ljava/util/Deque;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->printSensorDeque()V

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->caculateLuminance()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mLightSensorEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->sendMessage()V

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessLux:[I

    array-length v1, v1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mBrightnessSetting:[I

    array-length v1, v1

    if-gt v1, v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/android/server/display/exynos/ExynosDisplayATC;->TUNE_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->ATC_BL_FILE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->parserTuneATCBLXML()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/display/exynos/ExynosDisplayATC;->setBrightnessAdjustment(I)V

    return-void
.end method

.method public final startCountDownTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountDownTimerCount:I

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object p0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mCountdownTimer:Lcom/android/server/display/exynos/ExynosDisplayATC$2;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public final sysfsWriteOnOff(Z)V
    .locals 4

    const-string/jumbo v0, "aps_onoff"

    const-string/jumbo v1, "onoff : "

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ExynosDisplayATC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " aps: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/exynos/ExynosDisplayUtils;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    if-eqz v1, :cond_2

    :try_start_1
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;[B)Z

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mExynosDisplayAdapter:Lcom/android/server/display/exynos/ExynosDisplayAdapter;

    const-string/jumbo v1, "aps"

    invoke-virtual {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->getDqePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mApsInit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/server/display/exynos/ExynosDisplayAdapter;->sendEmptyUpdate()V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/exynos/ExynosDisplayATC;->startCountDownTimer()V

    iput-boolean p1, p0, Lcom/android/server/display/exynos/ExynosDisplayATC;->mPreOnOff:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
