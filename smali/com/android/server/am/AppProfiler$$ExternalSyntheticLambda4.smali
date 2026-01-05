.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v1, v0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    :cond_0
    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v3, 0x7

    if-lt v1, v3, :cond_1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    :cond_1
    iget-boolean v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p0, :cond_3

    const/16 v0, 0x14

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/IApplicationThread$Delegator;->scheduleTrimMemory(I)V

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iput-boolean v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
