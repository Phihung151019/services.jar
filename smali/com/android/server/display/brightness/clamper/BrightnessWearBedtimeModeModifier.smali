.class public Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mIsActive:Z

.field public final mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$Injector;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    check-cast p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object p4, p5, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget p4, p4, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    iput p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    new-instance p4, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;

    invoke-direct {p4, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "bedtime_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iput v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    const/4 v1, 0x3

    iput v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iget-object v1, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v2, 0x8

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    if-nez p1, :cond_0

    iput-boolean v0, p2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    return-void
.end method

.method public final applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x3

    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "BrightnessWearBedtimeModeModifier:"

    const-string v1, "  mBrightnessCap: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mBrightnessCap:F

    const-string v2, "  mIsActive: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    const-string v2, "  mApplied: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mApplied:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAmbientLux(F)V
    .locals 0

    return-void
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mSettingsObserver:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
