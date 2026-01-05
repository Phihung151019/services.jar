.class public final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mColor:I

.field public final mHwLight:Landroid/hardware/light/HwLight;

.field public mInitialized:Z

.field public final mIsIDUsingPatternLED:Z

.field public mMode:I

.field public mOffMS:I

.field public mOnMS:I

.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public static -$$Nest$misSystemLight(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte p0, p0, Landroid/hardware/light/HwLight;->type:B

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-boolean p1, p1, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    if-eqz p1, :cond_1

    iget-byte p1, p2, Landroid/hardware/light/HwLight;->type:B

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    return-void
.end method


# virtual methods
.method public final setFlashing(IIII)V
    .locals 11

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[api] [SvcLED] setFlashing : type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v2, v2, Landroid/hardware/light/HwLight;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v2, v2, Landroid/hardware/light/HwLight;->type:B

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    const-string/jumbo v2, "Off"

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v4, "translateMode error"

    goto :goto_0

    :pswitch_0
    const-string v4, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    goto :goto_0

    :pswitch_1
    const-string v4, "LIGHT_SEC_FLASH_LOW_BATTERY"

    goto :goto_0

    :pswitch_2
    const-string v4, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    goto :goto_0

    :pswitch_3
    const-string v4, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    goto :goto_0

    :pswitch_4
    const-string v4, "LIGHT_SEC_FLASH_CHARGING"

    goto :goto_0

    :cond_1
    const-string v4, "LIGHT_FLASH_HARDWARE"

    goto :goto_0

    :cond_2
    const-string v4, "LIGHT_FLASH_TIMED"

    goto :goto_0

    :cond_3
    const-string v4, "LIGHT_FLASH_NONE"

    :goto_0
    const-string v5, ")"

    invoke-static {v2, v4, v5}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v4, ", onMS: "

    const-string v5, ", offMS: "

    invoke-static {p3, v2, v4, v5, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget v1, v0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget-boolean v0, v0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-nez v0, :cond_4

    const-string/jumbo p0, "LightsService"

    const-string/jumbo p1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v5, v0, Landroid/hardware/light/HwLight;->type:B

    const/4 v10, 0x1

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {p1, v3}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object p3, p2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget p2, p2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    int-to-long v2, p2

    invoke-virtual {p3, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_5
    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    const-string/jumbo p1, "LightsService"

    const-string/jumbo p2, "[SvcLED] not mIsIDUsingPatternLED"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLightLocked(IIII)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, v0, :cond_0

    iget-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v0, p0, Landroid/hardware/light/HwLight;->type:B

    const-string/jumbo v2, "LightsService"

    if-eqz v0, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[SvcLED] [setLightLocked] lightType:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Landroid/hardware/light/HwLight;->type:B

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", color:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", onMS: "

    const-string v4, ", offMS: "

    invoke-static {p2, p3, v3, v4, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v0, p4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setLightState("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/hardware/light/HwLight;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v3, 0x20000

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    const/4 v10, 0x0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_3

    :cond_2
    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    goto :goto_0

    :cond_3
    iget v5, p0, Landroid/hardware/light/HwLight;->id:I

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v5 .. v10}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_0
    new-instance p1, Landroid/hardware/light/HwLightState;

    invoke-direct {p1}, Landroid/hardware/light/HwLightState;-><init>()V

    iput v6, p1, Landroid/hardware/light/HwLightState;->color:I

    int-to-byte p2, v7

    iput-byte p2, p1, Landroid/hardware/light/HwLightState;->flashMode:B

    iput v8, p1, Landroid/hardware/light/HwLightState;->flashOnMs:I

    iput v9, p1, Landroid/hardware/light/HwLightState;->flashOffMs:I

    int-to-byte p2, v10

    iput-byte p2, p1, Landroid/hardware/light/HwLightState;->brightnessMode:B

    iget-object p2, v1, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/light/ILights;

    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    check-cast p2, Landroid/hardware/light/ILights$Stub$Proxy;

    invoke-virtual {p2, p0, p1}, Landroid/hardware/light/ILights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V

    goto :goto_1

    :cond_4
    iget-object p2, v1, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights;

    iget p0, p0, Landroid/hardware/light/HwLight;->id:I

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-virtual {p2, p0, p1}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->setLightState(ILandroid/hardware/light/HwLightState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    :try_start_1
    const-string p1, "Failed issuing setLightState"

    invoke-static {v2, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final turnOff()V
    .locals 9

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[api] [SvcLED] turnOff : lightType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v2, v2, Landroid/hardware/light/HwLight;->type:B

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/lights/LightsService;->-$$Nest$smcallerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->-$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v3, v0, Landroid/hardware/light/HwLight;->type:B

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    iget v2, v2, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    int-to-long v4, v2

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v0, v0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
