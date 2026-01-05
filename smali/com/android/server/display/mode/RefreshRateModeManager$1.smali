.class public final Lcom/android/server/display/mode/RefreshRateModeManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    return-void
.end method


# virtual methods
.method public final onFinish(III)V
    .locals 1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    if-eq p3, p2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne v0, p1, :cond_2

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "DisplayStateListener#onFinish, isPowerModeOn="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", displayType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "RefreshRateModeManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object p1, p1, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager$1;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
