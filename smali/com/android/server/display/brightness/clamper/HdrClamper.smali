.class public Lcom/android/server/display/brightness/clamper/HdrClamper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAmbientLux:F

.field public mAutoBrightnessEnabled:Z

.field public final mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

.field public mDesiredMaxBrightness:F

.field public mDesiredTransitionRate:F

.field public final mHandler:Landroid/os/Handler;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public final mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

.field public mHdrVisible:Z

.field public mMaxBrightness:F

.field public mRegisteredDisplayToken:Landroid/os/IBinder;

.field public mTransitionRate:F

.field public mUseSlowTransition:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    invoke-direct {p3, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;-><init>(Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda1;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    return-void
.end method


# virtual methods
.method public getMaxBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    return p0
.end method

.method public final recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDebouncer:Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v6, v5, p2

    if-lez v6, :cond_1

    cmpg-float v6, v5, p3

    if-gez v6, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    move v1, p3

    move p3, v5

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    cmpl-float p2, p1, v1

    if-nez p2, :cond_3

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_6

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->brightnessIncreaseDebounceMillis:J

    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampIncrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-wide p2, p1, Lcom/android/server/display/config/HdrBrightnessData;->brightnessDecreaseDebounceMillis:J

    iget p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->screenBrightnessRampDecrease:F

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    :goto_2
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    iput v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    iput v2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method
