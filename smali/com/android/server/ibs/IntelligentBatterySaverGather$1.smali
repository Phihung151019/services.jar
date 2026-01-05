.class public final Lcom/android/server/ibs/IntelligentBatterySaverGather$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverGather;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather$1;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverGather;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverGather;->mIBSService:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    if-eqz v4, :cond_1

    iput-boolean v1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mScreenOn:Z

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    :cond_2
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
