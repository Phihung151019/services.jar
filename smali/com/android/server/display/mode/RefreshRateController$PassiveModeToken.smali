.class public final Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_MULTI_DISPLAY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/display/mode/RefreshRateController;->mDm:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->isFolded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    iget-boolean v1, v1, Lcom/android/server/display/mode/RefreshRateController;->mIsExtraBuiltinScreen:Z

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateLfdValueLocked(Z)V

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked()V

    return-void
.end method
