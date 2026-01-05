.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public final synthetic f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;

    iget-boolean v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStarted:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
