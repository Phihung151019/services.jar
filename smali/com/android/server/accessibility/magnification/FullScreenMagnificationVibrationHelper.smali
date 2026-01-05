.class public final Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

.field public final mVibrationEffect:Landroid/os/VibrationEffect;

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrationEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mVibrator:Landroid/os/Vibrator;

    new-instance p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;)V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper;->mIsVibrationEffectSupportedProvider:Lcom/android/server/accessibility/magnification/FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider;

    return-void
.end method
