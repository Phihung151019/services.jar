.class public final Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;


# instance fields
.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mPowerThrottlingDataId:Ljava/lang/String;

.field public final mThermalThrottlingDataId:Ljava/lang/String;

.field public final mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayToken:Landroid/os/IBinder;

    iput p6, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    return-void
.end method
