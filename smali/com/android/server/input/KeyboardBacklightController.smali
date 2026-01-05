.class public final Lcom/android/server/input/KeyboardBacklightController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z

.field static final DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

.field static final MAX_BRIGHTNESS_CHANGE_STEPS:I = 0xa

.field public static final TRANSITION_ANIMATION_DURATION_MILLIS:J


# instance fields
.field public mAmbientBacklightValue:I

.field public final mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

.field public mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

.field public final mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBacklightOn:Z

.field public mIsInteractive:Z

.field public final mKeyboardBacklightAnimationEnabled:Z

.field public final mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

.field public final mKeyboardBacklights:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUserInactivityThresholdMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "KbdBacklightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/KeyboardBacklightController;->TRANSITION_ANIMATION_DURATION_MILLIS:J

    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    sget-object v1, Lcom/android/server/input/KeyboardBacklightController;->DEFAULT_BRIGHTNESS_VALUE_FOR_LEVEL:[I

    int-to-float v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    iput-boolean v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    iput v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    new-instance p2, Landroid/os/Handler;

    new-instance v0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    invoke-direct {p2, p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/input/KeyboardBacklightController;->mAnimatorFactory:Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;

    new-instance p2, Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-direct {p2, p1, p3}, Lcom/android/server/input/AmbientKeyboardBacklightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mUserInactivityThresholdMs:I

    invoke-static {}, Landroid/sysprop/InputProperties;->enable_keyboard_backlight_animation()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightAnimationEnabled:Z

    return-void
.end method


# virtual methods
.method public handleAmbientLightValueChanged(I)V
    .locals 3

    iput p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    iget-object v1, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iget-boolean v2, v1, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleInteractiveStateChange(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    iget-boolean v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    if-eqz v2, :cond_1

    iget v2, v3, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    iget v4, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    aget v2, v2, v4

    :goto_1
    iget-boolean v3, v3, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public final handleUserActivity()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    iget-boolean v3, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    iget-object v4, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    if-eqz v3, :cond_1

    iget v3, v4, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    iget v5, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    aget v3, v3, v5

    :goto_1
    iget-boolean v4, v4, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mUserInactivityThresholdMs:I

    int-to-long v4, p0

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceChanged(I)V

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getLightsManager()Landroid/hardware/lights/LightsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager;->getLights()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/lights/Light;

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->getType()I

    move-result v3

    const/16 v4, 0x2713

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Landroid/hardware/lights/Light;->hasBrightnessControl()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    invoke-virtual {v0}, Landroid/hardware/lights/Light;->getId()I

    move-result v0

    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    move-result v2

    if-ne v0, v2, :cond_5

    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/lights/Light;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    return-void
.end method

.method public final updateAmbientLightListener()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    iget-boolean v2, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsInteractive:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyboardBacklightController;)V

    iput-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "AmbientKeyboardBacklightListener was already registered, listener = "

    sget-object v4, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v3, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3}, Lcom/android/server/input/AmbientKeyboardBacklightController;->addSensorListener(Landroid/hardware/Sensor;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, v2, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "AmbientKeyboardBacklightListener was never registered, listener = "

    sget-object v3, Lcom/android/server/input/AmbientKeyboardBacklightController;->sAmbientControllerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mAmbientKeyboardBacklightListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v0}, Lcom/android/server/input/AmbientKeyboardBacklightController;->removeSensorListener(Landroid/hardware/Sensor;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientListener:Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda0;

    return-void

    :cond_5
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_6
    return-void
.end method

.method public final updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    if-eqz v0, :cond_9

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    iget v4, p0, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v4, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    :cond_4
    :goto_1
    sget-object v4, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    if-ne p2, v4, :cond_5

    add-int/2addr v0, v2

    iget-object p2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    array-length p2, p2

    sub-int/2addr p2, v2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    iput-boolean v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    iget-object v0, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    iget-boolean v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    aget v0, v0, p2

    invoke-virtual {v1, v0}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    :cond_6
    iput p2, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->updateAmbientLightListener()V

    sget-boolean v0, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "KbdBacklightController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Changing state from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    :goto_3
    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    new-instance v4, Landroid/hardware/input/IKeyboardBacklightState;

    invoke-direct {v4}, Landroid/hardware/input/IKeyboardBacklightState;-><init>()V

    iput p2, v4, Landroid/hardware/input/IKeyboardBacklightState;->brightnessLevel:I

    iget-object v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    array-length v5, v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/hardware/input/IKeyboardBacklightState;->maxBrightnessLevel:I

    iget-object v5, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v6, p1, v4, v2}, Landroid/hardware/input/IKeyboardBacklightListener;->onBrightnessChanged(ILandroid/hardware/input/IKeyboardBacklightState;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to notify process "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " that keyboard backlight changed, assuming it died."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KbdBacklightController"

    invoke-static {v7, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->binderDied()V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_8
    monitor-exit v0

    goto :goto_6

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_9
    :goto_6
    return-void
.end method
