.class public final Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "bedtime_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mIsActive:Z

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method
