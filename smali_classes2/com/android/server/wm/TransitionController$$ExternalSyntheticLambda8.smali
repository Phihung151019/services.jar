.class public final synthetic Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput p0, p1, Lcom/android/server/wm/WindowContainer;->mSyncMethodOverride:I

    :cond_0
    return-void
.end method
