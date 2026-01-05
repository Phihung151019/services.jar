.class public final synthetic Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputSettingsObserver;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/InputSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/InputSettingsObserver;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x190

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "input_native_boot"

    const-string/jumbo v2, "deep_press_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    if-gt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_1

    const-string v3, "Enabling"

    goto :goto_1

    :cond_1
    const-string v3, "Disabling"

    :goto_1
    const-string v5, " motion classifier because "

    const-string v6, ": feature "

    invoke-static {v2, v3, v5, p1, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo p1, "enabled"

    goto :goto_2

    :cond_2
    const-string/jumbo p1, "disabled"

    :goto_2
    const-string v1, ", long press timeout = "

    const-string v3, " ms"

    invoke-static {v0, p1, v1, v3, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v4}, Lcom/android/server/input/NativeInputManagerService;->setMotionClassifierEnabled(Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "accessibility_large_pointer_icon"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/input/InputManagerService;->setUseLargePointerIcons(Z)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v0, "pointer_location"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/input/InputManagerService;->updatePointerLocationEnabled(Z)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const-string/jumbo v0, "show_touches"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputSettingsObserver;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setShowTouches(Z)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isTouchpadAccelerationEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadAccelerationEnabled(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadSystemGestures(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadSystemGesturesEnabled(Z)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadTapToClick(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadTapToClickEnabled(Z)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadNaturalScrolling(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadNaturalScrollingEnabled(Z)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getTouchpadPointerSpeed(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x7

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadPointerSpeed(I)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isMousePointerAccelerationEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setMouseAccelerationEnabled(Z)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setMouseScrollingAccelerationEnabled(Z)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setMouseSwapPrimaryButtonEnabled(Z)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadThreeFingerTapShortcut(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadThreeFingerTapShortcutEnabled(Z)V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x2

    const-string/jumbo v2, "pointer_scale"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerScale(F)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string/jumbo v2, "pointer_stroke_style"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerStrokeStyle(I)V

    return-void

    :pswitch_e
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string/jumbo v2, "pointer_fill_style"

    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerFillStyle(I)V

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/input/InputSettings;->useTouchpadRightClickZone(Landroid/content/Context;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setTouchpadRightClickZoneEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
