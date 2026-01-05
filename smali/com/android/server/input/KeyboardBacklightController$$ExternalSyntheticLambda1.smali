.class public final synthetic Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardBacklightController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardBacklightController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyboardBacklightController;

    sget-boolean v1, Lcom/android/server/input/KeyboardBacklightController;->DEBUG:Z

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardBacklightController;->handleInteractiveStateChange(Z)V

    return v0

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    move p1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    iget-boolean v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mUseAmbientController:Z

    iget-object v4, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    if-eqz v3, :cond_0

    iget v3, v4, Lcom/android/server/input/KeyboardBacklightController;->mAmbientBacklightValue:I

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessValueForLevel:[I

    iget v5, v1, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mBrightnessLevel:I

    aget v3, v3, v5

    :goto_1
    iget-boolean v4, v4, Lcom/android/server/input/KeyboardBacklightController;->mIsBacklightOn:Z

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->setBacklightValue(I)V

    add-int/2addr p1, v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardBacklightController;->handleUserActivity()V

    return v0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_DOWN:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Lcom/android/server/input/KeyboardBacklightController$Direction;->DIRECTION_UP:Lcom/android/server/input/KeyboardBacklightController$Direction;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardBacklightController;->updateKeyboardBacklight(ILcom/android/server/input/KeyboardBacklightController$Direction;)V

    return v0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v1, p1

    :goto_3
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardBacklightController;->onInputDeviceAdded(I)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
