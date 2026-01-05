.class public final Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final MAX_DAYS_TO_TRACK:I = 0x7


# instance fields
.field public final mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

.field public mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundariesForStats:[F

.field public mCurrentAmbientLux:F

.field public mCurrentScreenBrightness:F

.field public mCurrentScreenBrightnessSpline:Landroid/util/Spline;

.field public final mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

.field public final mTag:Ljava/lang/String;

.field public final mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(ILandroid/os/UserManager;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 2

    const/16 v0, 0x38

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mUserManager:Landroid/os/UserManager;

    const-string p2, "AdaptiveBrightnessStatsTracker["

    const-string/jumbo v1, "]"

    invoke-static {p1, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTag:Ljava/lang/String;

    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    invoke-direct {p1, p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mAdaptiveBrightnessStats:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$AdaptiveBrightnessStats;

    new-instance p1, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    new-instance p2, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker;)V

    invoke-direct {p1, p2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;-><init>(Lcom/android/server/display/AdaptiveBrightnessStatsTracker$$ExternalSyntheticLambda0;)V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mTimer:Lcom/android/server/display/AdaptiveBrightnessStatsTracker$Timer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mCurrentAmbientLux:F

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    sget-boolean p2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    aget p3, p1, p2

    sget v1, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v1, v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x37

    :cond_2
    :goto_1
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->mBucketBoundariesForStats:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41a80000    # 21.0f
        0x41d00000    # 26.0f
        0x41f80000    # 31.0f
        0x42140000    # 37.0f
        0x42340000    # 45.0f
        0x42540000    # 53.0f
        0x42800000    # 64.0f
        0x429a0000    # 77.0f
        0x42b80000    # 92.0f
        0x42de0000    # 111.0f
        0x43050000    # 133.0f
        0x43200000    # 160.0f
        0x43400000    # 192.0f
        0x43660000    # 230.0f
        0x438a0000    # 276.0f
        0x43a58000    # 331.0f
        0x43c68000    # 397.0f
        0x43ee8000    # 477.0f
        0x440f0000    # 572.0f
        0x442bc000    # 687.0f
        0x444e0000    # 824.0f
        0x44774000    # 989.0f
        0x44946000    # 1187.0f
        0x44b20000    # 1424.0f
        0x44d5a000    # 1709.0f
        0x45003000    # 2051.0f
        0x4519d000    # 2461.0f
        0x45389000    # 2953.0f
        0x455d8000    # 3544.0f
        0x4584e800    # 4253.0f
        0x459f7800    # 5103.0f
        0x45bf6000    # 6124.0f
        0x45e5a800    # 7349.0f
        0x4609cc00    # 8819.0f
        0x46255800    # 10582.0f
        0x46466c00    # 12699.0f
        0x466e1c00    # 15239.0f
        0x468edc00    # 18286.0f
        0x46ab7000    # 21944.0f
        0x46cdb800    # 26332.0f
        0x46f6de00    # 31599.0f
        0x47141e00    # 37918.0f
        0x4731be00    # 45502.0f
    .end array-data
.end method
