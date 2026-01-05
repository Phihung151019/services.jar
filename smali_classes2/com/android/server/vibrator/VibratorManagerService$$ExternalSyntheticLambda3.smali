.class public final synthetic Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/VibrationEffect;


# direct methods
.method public synthetic constructor <init>(Landroid/os/VibrationEffect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Landroid/os/VibrationEffect;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$$ExternalSyntheticLambda3;->f$0:Landroid/os/VibrationEffect;

    check-cast p1, Lcom/android/server/vibrator/VibratorController;

    sget-object p1, Lcom/android/server/vibrator/VibratorManagerService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-object p0
.end method
