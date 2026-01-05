.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mStatefulModifiers:Ljava/util/List;

    new-instance v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    iget v3, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-ne v2, v3, :cond_0

    iget v1, v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget v2, v0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    invoke-static {v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mClamperChangeListenerExternal:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {v1}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_1
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    return-void
.end method
