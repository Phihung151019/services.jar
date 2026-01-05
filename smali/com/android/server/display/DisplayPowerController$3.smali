.class public final Lcom/android/server/display/DisplayPowerController$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$3;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    :cond_0
    return-void
.end method
