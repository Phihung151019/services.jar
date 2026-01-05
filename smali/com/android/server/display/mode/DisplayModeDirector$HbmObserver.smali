.class public final Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmActive:Landroid/util/SparseBooleanArray;

.field public final mHbmMode:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mRefreshRateInHbmHdr:I

.field public mRefreshRateInHbmSunlight:I

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "   HbmObserver"

    const-string v1, "     mHbmMode: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "     mHbmActive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "     mRefreshRateInHbmSunlight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    const-string v2, "     mRefreshRateInHbmHdr: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-static {v0, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public getRefreshRateInHbmHdr()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return p0
.end method

.method public final observe()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const-string/jumbo v2, "display_manager"

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    :try_start_1
    iget-object v5, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v6, "refresh_rate_in_hbm_hdr"

    invoke-interface {v5, v2, v6, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v5, v4

    :goto_0
    if-ne v5, v4, :cond_1

    if-nez v0, :cond_0

    :try_start_2
    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v3, v3, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e008d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget v3, v3, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    goto :goto_1

    :cond_1
    :goto_2
    iput v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v5, v5, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v6, "refresh_rate_in_hbm_sunlight"

    invoke-interface {v5, v2, v6, v4}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move v2, v4

    :goto_3
    if-ne v2, v4, :cond_3

    if-nez v0, :cond_2

    :try_start_4
    iget-object v0, v3, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_2
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    iget v0, v0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    goto :goto_4

    :cond_3
    :goto_5
    iput v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    const-wide/16 v6, 0x1

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v1

    const-wide/16 v4, 0x2

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    if-eqz v1, :cond_2

    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v0, v2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public final recalculateVotesForDisplay(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    iget v5, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v5, v3, :cond_1

    iget-object v0, v4, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-lez v1, :cond_3

    int-to-float v0, v1

    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected HBM mode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for display ID "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method
