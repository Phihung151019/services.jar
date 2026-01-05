.class public final synthetic Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/brightness/clamper/HdrClamper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredTransitionRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mDesiredMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mMaxBrightness:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mClamperChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void
.end method
