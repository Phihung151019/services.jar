.class public final Lcom/android/server/display/mode/SyntheticModeManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHasArrSupportEnabled:Z

.field public final mSynthetic60HzModesEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mHasArrSupport:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    return-void
.end method
