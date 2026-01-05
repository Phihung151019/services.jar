.class public final Lcom/android/server/input/InputManagerService$10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/InputManagerService$10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAccuracyChanged$com$android$server$input$InputManagerService$10(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method private final onAccuracyChanged$com$android$server$input$InputManagerService$11(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget p0, p0, Lcom/android/server/input/InputManagerService$10;->$r8$classId:I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget v0, p0, Lcom/android/server/input/InputManagerService$10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, v1, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    sget-object v4, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    aget v4, v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    move v0, v3

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, v1, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    sget-object v4, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    aget v4, v4, v2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    move v0, v3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSubFoldingAngleListener: state changed, angle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget p1, p1, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    const-string v1, "InputManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setFoldingState(I)V

    :cond_2
    return-void

    :pswitch_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    :goto_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    const/4 v3, 0x1

    if-lez v2, :cond_3

    sget-object v4, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    aget v4, v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    move v0, v3

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    sget-object v4, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    aget v4, v4, v2

    cmpl-float v4, p1, v4

    if-lez v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    move v0, v3

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mFoldingAngleListener: state changed, angle = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget p1, p1, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    const-string v1, "InputManager"

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$10;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setFoldingState(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
