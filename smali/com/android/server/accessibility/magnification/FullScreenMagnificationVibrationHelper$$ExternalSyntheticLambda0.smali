.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    return-void
.end method


# virtual methods
.method public final isVibrationEffectSupported()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Vibrator;->areAllEffectsSupported([I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method
