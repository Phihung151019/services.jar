.class public final Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDarkeningRateRatio:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-void
.end method


# virtual methods
.method public final handleSettingsChangedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "darkening_rate_ratio"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleSettingsChangedLocked: mDarkeningRateRatio="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    const-string v1, "AdaptiveBrightnessAdvancedSettings"

    invoke-static {v0, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
