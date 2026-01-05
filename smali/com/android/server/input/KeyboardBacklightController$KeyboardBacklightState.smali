.class public final Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public mBrightnessLevel:I

.field public final mBrightnessValueForLevel:[I

.field public final mDeviceId:I

.field public final mLight:Landroid/hardware/lights/Light;

.field public mUseAmbientController:Z

.field public final synthetic this$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    iput p2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    iput-object p3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {p3}, Landroid/hardware/lights/Light;->getPreferredBrightnessLevels()[I

    move-result-object p2

    if-eqz p2, :cond_4

    array-length p3, p2

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    array-length v1, p2

    move v2, v0

    :goto_0
    const/16 v3, 0xff

    if-ge v2, v1, :cond_2

    aget v4, p2, v2

    if-lez v4, :cond_1

    if-ge v4, v3, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/util/TreeSet;->size()I

    move-result p2

    sub-int/2addr p2, p1

    const/16 p1, 0xa

    if-le p2, p1, :cond_3

    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [I

    invoke-virtual {p3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/lit8 v1, v0, 0x1

    aput p3, p1, v0

    move v0, v1

    goto :goto_1

    :cond_4
    :goto_2
    sget-object p1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    :cond_5
    :goto_3
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    return-void
.end method


# virtual methods
.method public final setBacklightValue(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    iget v3, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    invoke-interface {v1, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightAnimationEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    invoke-interface {v0, v1, p1}, Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;->makeIntAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mAnimator:Landroid/animation/ValueAnimator;

    sget-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {p0}, Landroid/hardware/lights/Light;->getId()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-interface {v0, v3, p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyboardBacklightState{Light="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", BrightnessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
