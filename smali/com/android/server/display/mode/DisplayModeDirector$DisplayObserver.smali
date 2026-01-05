.class public final Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mExternalDisplayPeakHeight:I

.field public final mExternalDisplayPeakRefreshRate:I

.field public final mExternalDisplayPeakWidth:I

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mRefreshRateSynchronizationEnabled:Z

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/VotesStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00c1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00c2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e00c0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110227

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    return-void
.end method


# virtual methods
.method public final getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast p0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isExternalDisplayLimitModeEnabled()Z
    .locals 1

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsExternalDisplayLimitModeEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplayResolutionRangeVotingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDisplayAdded(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    iget v4, v0, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x42740000    # 61.0f

    invoke-static {v4, v5}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v6

    const/16 v7, 0xf

    const/4 v8, -0x1

    invoke-virtual {v3, v8, v7, v6}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    new-instance v6, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v6, v4, v5}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    const/16 v4, 0x10

    invoke-virtual {v3, v8, v4, v6}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_3
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateHasArrSupport(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    if-eqz v0, :cond_6

    iget p1, v0, Landroid/view/DisplayInfo;->type:I

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget v0, v0, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    int-to-float v6, p0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/server/display/mode/Vote;->forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object p0

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateHasArrSupport(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    if-eqz v3, :cond_1

    iget v1, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroid/view/SurfaceControl;->getDisplayToken(Landroid/view/DisplayAddress;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/mode/RefreshRateModeManager;->addControllerByDisplayToken(Landroid/os/IBinder;)V

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOLD:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object p1, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateCurrentDisplayToken(Landroid/view/DisplayAddress;)V

    return-void

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->isFolded()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq p1, v2, :cond_4

    :cond_3
    if-nez v1, :cond_5

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object v0, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateCurrentDisplayToken(Landroid/view/DisplayAddress;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mCommittedDeviceState:I

    iget v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceState:I

    if-eq v0, v1, :cond_8

    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDeviceState:I

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mCommittedDeviceState:I

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object p1, v0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->updateCurrentDisplayToken(Landroid/view/DisplayAddress;)V

    :cond_8
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v3, 0xe

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v2, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v3, 0x5

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x11

    invoke-virtual {v0, p1, v1, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xf

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 p1, 0x10

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_5
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final updateDisplayDeviceConfig(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayDeviceConfigByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDisplayModes(ILandroid/view/DisplayInfo;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    iget-object v3, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    iget-object v3, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    sget p2, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->$r8$clinit:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->updateRefreshRateSettingLocked(I)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateHasArrSupport(ILandroid/view/DisplayInfo;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mHasArrSupport:Landroid/util/SparseBooleanArray;

    iget-boolean p2, p2, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v0

    iget-object p2, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    new-instance v2, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v2, v1, p2}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0x13

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V
    .locals 11

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v0, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    :cond_1
    move-object v4, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iget v6, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    const/4 v0, 0x6

    if-nez v4, :cond_5

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsUserPreferredModeVoteEnabled:Z

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void

    :cond_5
    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mIsUserRefreshRateForExternalDisplayEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-boolean v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mIsDisplaysRefreshRatesSynchronizationEnabled:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v10

    invoke-static/range {v5 .. v10}, Lcom/android/server/display/mode/Vote;->forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    new-instance v3, Lcom/android/server/display/mode/SizeVote;

    invoke-direct {v3, v1, v2, v1, v2}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_8
    :goto_3
    return-void
.end method
