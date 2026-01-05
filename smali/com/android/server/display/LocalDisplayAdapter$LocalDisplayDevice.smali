.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveColorMode:I

.field public mActiveModeId:I

.field public mActiveRenderFrameRate:F

.field public mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

.field public final mActiveSfDisplayModeAtStartId:I

.field public mAllmRequested:Z

.field public mAllmSupported:Z

.field public final mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

.field public mBrightnessState:F

.field public mCommittedState:I

.field public mConnectedHdcpLevel:I

.field public mCurrentHdrSdrRatio:F

.field public mDefaultModeGroup:I

.field public mDefaultModeId:I

.field public final mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayModeSpecsInvalid:Z

.field public mDisplayStateCount:I

.field public mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

.field public mHasArrSupport:Z

.field public mHavePendingChanges:Z

.field public mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mIsFirstDisplay:Z

.field public mLastResolution:I

.field public final mLock:Ljava/lang/Object;

.field public final mPhysicalDisplayId:J

.field public mRequestedState:I

.field public mSdrBrightnessState:F

.field public mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public mSidekickActive:Z

.field public final mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field public mState:I

.field public mStateOverride:I

.field public mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

.field public final mSupportedColorModes:Ljava/util/ArrayList;

.field public final mSupportedModes:Landroid/util/SparseArray;

.field public mSupportedRefreshRates:[F

.field public mSystemPreferredModeId:I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public mUserPreferredModeId:I

.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public static -$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->mStartTimeMillis:J

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const-string/jumbo v0, "local:"

    invoke-static {p3, p4, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    move-object p1, v3

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    new-instance p0, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 p0, 0x0

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    const/high16 p2, 0x7fc00000    # Float.NaN

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    const/4 p2, -0x1

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    iput p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    new-array p2, p0, [F

    iput-object p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    new-array p2, p0, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object p2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mRequestedState:I

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayStateCount:I

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLock:Ljava/lang/Object;

    iput-wide p3, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    iput-boolean p8, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    invoke-virtual {v1, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    const-class p0, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/sidekick/SidekickInternal;

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter;->mInjector:Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    iget-object p2, v2, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-wide p4, p3

    move-object p3, p2

    move p2, p8

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;-><init>(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;J)V

    iput-object p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    iget p0, p6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iput p0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    return-void
.end method

.method public static getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget v3, v2, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find display mode with id "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static refreshRatesEquals(Ljava/util/List;[F)Z
    .locals 4

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_0
    return-void
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    const-string/jumbo v3, "mDisplayModeSpecs={"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    const-string/jumbo v2, "mActiveModeId="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string/jumbo v2, "mActiveColorMode="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string/jumbo v2, "mDefaultModeId="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    const-string/jumbo v2, "mUserPreferredModeId="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const-string/jumbo v2, "mHasArrSupport="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    const-string/jumbo v2, "mSupportedRefreshRates="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mCommittedState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBrightnessState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    const-string/jumbo v2, "mBacklightAdapter="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mAllmSupported="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    const-string/jumbo v2, "mAllmRequested="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    const-string/jumbo v2, "mGameContentTypeSupported="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const-string/jumbo v2, "mGameContentTypeRequested="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    const-string/jumbo v2, "mStaticDisplayInfo="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mSfDisplayModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "  "

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mActiveSfDisplayMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mActiveRenderFrameRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DisplayDeviceConfig: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mEvenDimmerEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerEnabled:Z

    const-string/jumbo v2, "mEvenDimmerStrength="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mEvenDimmerStrength:I

    const-string/jumbo v2, "mNitsToEvenDimmerStrength="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mNitsToEvenDimmerStrength:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findMatchingModeIdLocked(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid display mode ID "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final findMode(I)Landroid/view/Display$Mode;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSfDisplayModeIdLocked(II)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v3, v0, :cond_0

    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    :cond_0
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v5, p2, :cond_1

    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .locals 1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v4, 0x1

    iget-object v0, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v6, v6, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    iget-object v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    iget-boolean v8, v7, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mUseSurfaceControlBrightness:Z

    const-string v10, "DisplayDeviceConfig"

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    if-eqz v6, :cond_11

    new-instance v6, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v6, v5, v0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iget-boolean v0, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    iput-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-nez v13, :cond_0

    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MULTI_FOLD_DISPLAY:Z

    if-eqz v13, :cond_1

    :cond_0
    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v13, Lcom/android/server/display/config/SensorData;

    const v14, 0x1040359

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v14, ""

    invoke-direct {v13, v0, v14}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v6, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    sget-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    new-instance v0, Lcom/android/server/display/config/SensorData;

    const-string/jumbo v13, "SKIN"

    invoke-direct {v0, v13, v12}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds()V

    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v13, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v14, v6, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v14, :cond_2

    iget-object v14, v14, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    goto :goto_1

    :cond_2
    iget-object v14, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    :goto_1
    iget-object v15, v6, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v0, v13, v15, v12, v14}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    invoke-virtual {v6, v12}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e0152

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    invoke-virtual {v6, v12}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    invoke-virtual {v6, v12}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    const-string v0, "<config.xml>"

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    iget v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_10

    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x10e0043

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v13, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1070163

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v13

    iget-object v14, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070162

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v14

    iget-boolean v15, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsCoverDisplay:Z

    if-eqz v15, :cond_3

    iget-object v15, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x0

    const v3, 0x10700c6

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    iget-object v15, v6, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v17, 0x0

    const v9, 0x10700c5

    invoke-virtual {v15, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/display/DisplayDeviceConfig;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v9

    array-length v15, v3

    if-eqz v15, :cond_4

    array-length v15, v9

    if-eqz v15, :cond_4

    const-string/jumbo v13, "loadSdrHdrMapFromConfigXml: use seperate config for cover display"

    invoke-static {v10, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [F

    invoke-virtual {v9}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, [F

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    :cond_4
    :goto_2
    array-length v3, v13

    if-nez v3, :cond_5

    array-length v3, v14

    if-nez v3, :cond_5

    const-string/jumbo v3, "loadSdrHdrMapFromConfigXml: not support"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_5
    array-length v3, v13

    array-length v9, v14

    const-string v15, ", "

    if-eq v3, v9, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "loadSdrHdrMapFromConfigXml: wrong length: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v9, v13

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v14

    invoke-static {v3, v9, v10}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    move/from16 v3, v16

    :goto_3
    array-length v9, v13

    if-ge v3, v9, :cond_a

    if-lez v3, :cond_9

    aget v9, v13, v3

    add-int/lit8 v18, v3, -0x1

    aget v19, v13, v18

    cmpg-float v19, v9, v19

    if-gez v19, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "loadSdrHdrMapFromConfigXml: sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. sdr nits: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v13, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v13, v18

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    cmpg-float v9, v9, v17

    if-ltz v9, :cond_8

    aget v9, v14, v3

    cmpg-float v9, v9, v17

    if-gez v9, :cond_9

    :cond_8
    const-string/jumbo v9, "loadSdrHdrMapFromConfigXml: invalid value: ["

    const-string/jumbo v11, "] "

    invoke-static {v3, v9, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v11, v13, v3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v14, v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    add-int/2addr v3, v4

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_a
    iput-object v13, v6, Lcom/android/server/display/DisplayDeviceConfig;->mSdrNits:[F

    iput-object v14, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHdrNits:[F

    :goto_4
    iget-object v3, v6, Lcom/android/server/display/DisplayDeviceConfig;->mSdrNits:[F

    if-eqz v3, :cond_d

    iget-object v3, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHdrNits:[F

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v9, v16

    :goto_5
    iget-object v11, v6, Lcom/android/server/display/DisplayDeviceConfig;->mSdrNits:[F

    array-length v13, v11

    if-ge v9, v13, :cond_c

    iget-object v13, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHdrNits:[F

    aget v13, v13, v9

    aget v11, v11, v9

    div-float/2addr v13, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v4

    goto :goto_5

    :cond_c
    new-instance v9, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, v9}, Lcom/android/server/display/config/DisplayDeviceConfigUtils;->getHighestHdrSdrRatio(Ljava/util/List;Ljava/util/function/Function;)F

    move-result v11

    goto :goto_7

    :cond_d
    :goto_6
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_7
    iget-object v3, v6, Lcom/android/server/display/DisplayDeviceConfig;->mSdrNits:[F

    if-eqz v3, :cond_f

    iget-object v9, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHdrNits:[F

    if-nez v9, :cond_e

    goto :goto_8

    :cond_e
    invoke-static {v3, v9}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    goto :goto_9

    :cond_f
    :goto_8
    move-object v3, v12

    :goto_9
    new-instance v9, Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-direct {v9, v0, v3}, Lcom/android/server/display/config/HighBrightnessModeData;-><init>(FLandroid/util/Spline;)V

    iput-object v9, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData;

    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v11, v3}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(FLandroid/util/Spline;)V

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    goto :goto_a

    :cond_10
    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_a

    :cond_11
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static {v5, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v6

    :goto_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v9, "etc"

    const-string/jumbo v11, "displayconfig"

    const-string/jumbo v13, "default.xml"

    filled-new-array {v9, v11, v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v3

    filled-new-array {v9, v11, v13}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e0091

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v14, "default_"

    const-string v15, ".xml"

    invoke-static {v14, v3, v15}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v9, v11, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    filled-new-array {v9, v11, v13}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v16

    :cond_13
    if-ge v5, v3, :cond_14

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/2addr v5, v4

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_b

    :cond_14
    move-object v9, v12

    :goto_b
    if-nez v9, :cond_15

    goto :goto_10

    :cond_15
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v12

    if-nez v12, :cond_16

    const-string v0, "Default DisplayDeviceConfig file is null"

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_d

    :cond_16
    :goto_c
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    goto :goto_f

    :goto_d
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_e

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Encountered an error while reading/parsing display config file: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    if-nez v12, :cond_17

    goto :goto_11

    :cond_17
    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_18

    invoke-virtual {v6, v12}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_18
    :goto_11
    if-eqz v8, :cond_1b

    iput-boolean v4, v6, Lcom/android/server/display/DisplayDeviceConfig;->mUseSurfaceControlBrightness:Z

    iget-boolean v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mIsSimpleMappingStrategy:Z

    if-nez v0, :cond_1a

    move/from16 v0, v16

    :goto_12
    iget-object v2, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v3, v2

    if-ge v0, v3, :cond_19

    aget v3, v2, v0

    iget v5, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    div-float/2addr v3, v5

    aput v3, v2, v0

    add-int/2addr v0, v4

    goto :goto_12

    :cond_19
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    goto :goto_13

    :cond_1a
    iget v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    new-array v3, v2, [F

    aput v17, v3, v16

    aput v0, v3, v4

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v3, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-static {v0, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    :cond_1b
    :goto_13
    iput-object v6, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v0, v6, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz v0, :cond_1c

    check-cast v0, Ljava/util/ArrayList;

    const-string/jumbo v2, "canSetBrightnessViaHwc"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v3, v4

    goto :goto_14

    :cond_1c
    move/from16 v3, v16

    :goto_14
    iput-boolean v3, v7, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->mForceSurfaceControl:Z

    :cond_1d
    iget-object v0, v1, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v1, :cond_20

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    :goto_0
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, v1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_1
    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    new-array v5, v4, [Landroid/view/Display$Mode;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_2

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v8, v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    iput-object v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iget-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    iget-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    const/4 v2, 0x0

    :goto_3
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    iput-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    iget-wide v3, v1, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iget-wide v3, v1, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iget-object v3, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-static {v2, v3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v2, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    const/high16 v7, 0x43200000    # 160.0f

    iget-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    const/4 v9, 0x2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    move-result-object v5

    array-length v12, v5

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    mul-float/2addr v4, v7

    float-to-double v12, v4

    add-double/2addr v12, v10

    double-to-int v4, v12

    array-length v12, v5

    new-array v12, v12, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v13, 0x0

    :goto_4
    array-length v14, v5

    if-ge v13, v14, :cond_4

    aget-object v14, v5, v13

    iget v14, v14, Landroid/graphics/Point;->x:I

    int-to-double v14, v14

    move/from16 v16, v7

    aget-object v7, v5, v9

    iget v7, v7, Landroid/graphics/Point;->x:I

    move-wide/from16 v17, v10

    int-to-double v10, v7

    div-double/2addr v14, v10

    new-instance v7, Lcom/android/server/display/DensityMapping$Entry;

    aget-object v10, v5, v13

    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v10, v10, Landroid/graphics/Point;->y:I

    move-object/from16 v19, v7

    int-to-double v6, v4

    mul-double/2addr v6, v14

    double-to-int v6, v6

    move-object/from16 v7, v19

    invoke-direct {v7, v11, v10, v6}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v7, v12, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-wide/from16 v10, v17

    goto :goto_4

    :cond_4
    move/from16 v16, v7

    move-wide/from16 v17, v10

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/display/DensityMapping;

    invoke-direct {v5, v12}, Lcom/android/server/display/DensityMapping;-><init>([Lcom/android/server/display/DensityMapping$Entry;)V

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    move-object v4, v5

    goto :goto_5

    :cond_5
    move/from16 v16, v7

    move-wide/from16 v17, v10

    :goto_5
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    if-nez v4, :cond_8

    iget-object v4, v5, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v4, v4, Lcom/android/server/display/feature/DisplayManagerFlags;->mBaseDensityForExternalDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v6, v4, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    const/4 v7, 0x0

    cmpl-float v10, v6, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-lez v10, :cond_6

    iget v4, v4, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    float-to-double v6, v6

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v4, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    float-to-double v13, v4

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v13, v6

    div-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    goto :goto_6

    :cond_6
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    int-to-double v6, v4

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    int-to-double v13, v4

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    div-double/2addr v6, v10

    :goto_6
    const-wide v10, 0x3fda3468d1a3468eL    # 0.40944881889763785

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    div-double/2addr v6, v10

    :goto_7
    add-double v6, v6, v17

    double-to-int v4, v6

    :goto_8
    move v6, v4

    goto :goto_a

    :cond_7
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v4, v4, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    mul-float v4, v4, v16

    float-to-double v6, v4

    goto :goto_7

    :cond_8
    iget-object v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    mul-int/2addr v7, v7

    mul-int/2addr v6, v6

    add-int/2addr v6, v7

    sget-object v7, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    iget-object v4, v4, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    array-length v10, v4

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v10, :cond_9

    aget-object v12, v4, v11

    iget v13, v12, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-gt v13, v6, :cond_a

    add-int/lit8 v11, v11, 0x1

    move-object v7, v12

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :cond_a
    iget v4, v7, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-ne v4, v6, :cond_b

    iget v4, v7, Lcom/android/server/display/DensityMapping$Entry;->density:I

    goto :goto_8

    :cond_b
    if-nez v12, :cond_c

    sget-object v4, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    move-object v12, v7

    move-object v7, v4

    :cond_c
    iget v4, v7, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    iget v4, v12, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    move-wide/from16 v17, v10

    int-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double v9, v9, v17

    iget v6, v12, Lcom/android/server/display/DensityMapping$Entry;->density:I

    iget v7, v7, Lcom/android/server/display/DensityMapping$Entry;->density:I

    sub-int/2addr v6, v7

    int-to-double v11, v6

    mul-double/2addr v9, v11

    sub-double v13, v13, v17

    div-double/2addr v9, v13

    int-to-double v6, v7

    add-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_a
    iput v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v1, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget v1, v1, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-object v6, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v6, v3, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 v7, 0x1

    if-eqz v6, :cond_e

    const/4 v4, 0x2

    if-lt v6, v4, :cond_d

    move v6, v7

    goto :goto_b

    :cond_d
    const/4 v6, 0x0

    :goto_b
    iput-boolean v6, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    :cond_e
    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-eqz v1, :cond_f

    const/16 v1, 0xc

    iput v1, v3, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_f
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v3, 0x1

    iput v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v6, 0x11101ef

    if-eqz v8, :cond_11

    const v1, 0x11101f8

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_10

    sget-boolean v1, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v1, :cond_17

    const-string/jumbo v1, "ro.boot.emulator.circular"

    const/4 v10, 0x0

    invoke-static {v1, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_10
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    iget-object v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v11, v11, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v11, :cond_12

    const v10, 0x10000c1

    or-int/2addr v3, v10

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_d

    :cond_12
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_13
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_14
    if-nez v2, :cond_15

    goto :goto_d

    :cond_15
    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1070119

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v3

    array-length v11, v1

    :goto_c
    if-ge v10, v11, :cond_17

    aget v12, v1, v10

    if-ne v12, v3, :cond_16

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v10, 0xa0000

    or-int/2addr v3, v10

    iput v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_d

    :cond_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_17
    :goto_d
    iget-object v1, v5, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez v8, :cond_18

    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_19
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_1a
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v1

    if-nez v1, :cond_1b

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_e
    move/from16 v21, v2

    goto :goto_f

    :cond_1b
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    goto :goto_e

    :goto_f
    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_10
    move/from16 v22, v1

    goto :goto_11

    :cond_1c
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    goto :goto_10

    :goto_11
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    const/16 v26, 0x0

    move-object/from16 v20, v2

    move/from16 v23, v3

    move/from16 v24, v6

    move/from16 v25, v8

    move-object/from16 v19, v9

    invoke-static/range {v19 .. v26}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIIIIZ)Landroid/view/DisplayCutout;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    int-to-float v3, v3

    div-float v3, v3, v16

    iput v3, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v8, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object/from16 v25, v1

    move-object/from16 v20, v3

    move/from16 v23, v6

    move/from16 v24, v8

    invoke-static/range {v19 .. v26}, Landroid/view/RoundedCorners;->fromCustomResources(Landroid/content/res/Resources;Ljava/lang/String;IIIILandroid/util/DisplayMetrics;Z)Landroid/view/RoundedCorners;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    goto :goto_12

    :cond_1d
    move-object/from16 v19, v9

    :goto_12
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v2, v2, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iget-object v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v14, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object/from16 v9, v19

    move/from16 v11, v21

    move/from16 v12, v22

    invoke-static/range {v9 .. v14}, Landroid/view/DisplayShape;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v4, 0x2

    or-int/2addr v2, v4

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_1f

    const v2, 0x10404a4

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    goto :goto_13

    :cond_1e
    const/4 v4, 0x2

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_1f

    iget-object v2, v5, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    :cond_1f
    :goto_13
    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iget v3, v2, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iget v3, v2, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iget-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    :cond_20
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public final getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public final getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public final hasStableUniqueId()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x107011a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final isFirstDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    return p0
.end method

.method public final onActiveDisplayModeChangedLocked(FI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v1, -0x1

    const-string/jumbo v2, "LocalDisplayAdapter"

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In unknown mode after setting allowed modes, activeModeId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateActiveModeLocked for d="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mActiveModeId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mActiveSfDisplayMode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    if-eqz p2, :cond_3

    iget v0, p2, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget p2, p2, Landroid/view/SurfaceControl$DisplayMode;->height:I

    mul-int/2addr v0, p2

    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    if-eq p2, v0, :cond_3

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mLastResolution:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    const-string/jumbo p2, "Reset modespecs due to resolution change!"

    invoke-static {v2, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final onCanHostTasksChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final onOverlayChangedLocked()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v13, p1

    move/from16 v2, p5

    iget v12, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eq v12, v13, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_2

    iget v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v9, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v3

    :goto_2
    iget v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    if-eq v5, v2, :cond_3

    move v0, v3

    :cond_3
    if-nez v4, :cond_5

    if-nez v9, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    :goto_3
    iget-object v15, v1, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    iget-object v5, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v6, v3, :cond_7

    iget v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    const/4 v3, 0x2

    :cond_6
    :goto_4
    move v6, v3

    goto :goto_5

    :cond_7
    const/4 v3, -0x1

    goto :goto_4

    :goto_5
    if-eqz v4, :cond_8

    iput v13, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_8
    if-eqz v0, :cond_9

    iput v2, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStateOverride:I

    :cond_9
    move v3, v4

    move v4, v0

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    iget-wide v7, v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v15}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IZZLjava/util/ArrayList;IJZFFIILcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final setAutoLowLatencyModeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_1

    const-string/jumbo p0, "LocalDisplayAdapter"

    const-string/jumbo p1, "Unable to set ALLM because the connected display does not support ALLM."

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 9

    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring request for invalid base mode id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iput v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iget-boolean v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iput-boolean v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v2, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v4, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v5, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v6, v5, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v6, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v5, v5, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v5, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget-object v0, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v4, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v2, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v4, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v5, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->physical:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v6, v5, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v6, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v5, v5, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v5, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget-object v0, v0, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, v4, Landroid/view/SurfaceControl$RefreshRateRanges;->render:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v4, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v2, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-nez v0, :cond_5

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    :goto_2
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v8, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    new-instance v2, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-boolean v4, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-object v5, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v6, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v7, v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    invoke-static {v0, p0, v8, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setGameContentTypeLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final setRequestedColorModeLocked(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unable to find color mode "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .locals 7

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-nez p1, :cond_1

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v2, v1, :cond_1

    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v5, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5, v2, v3, p1}, Landroid/view/Display$Mode;->matchesIfValid(IIF)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    iput-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    if-eq p1, v1, :cond_6

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_3
    if-ne v0, p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-eqz p1, :cond_9

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_8

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManagerInternal;->setChangingPreferredMode(Z)V

    :cond_8
    const-string/jumbo p1, "setUserPreferredDisplayModeLocked, oldModeId="

    const-string v2, ", newModeId="

    invoke-static {v0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mUserPreferredMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", caller="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-boolean v0, p1, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    if-nez v0, :cond_a

    :goto_4
    return-void

    :cond_a
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    iget-object p1, p1, Lcom/android/server/display/LocalDisplayAdapter;->mSurfaceControlProxy:Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    if-ne v0, v1, :cond_b

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/view/SurfaceControl;->clearBootDisplayMode(Landroid/os/IBinder;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Landroid/view/SurfaceControl;->setBootDisplayMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final updateDeviceInfoLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public final updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-wide v0, p0, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v0, p2, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide p0, p0, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide p0, p2, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    :cond_0
    return-void
.end method

.method public final updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v5, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v6, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v7, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v8, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    array-length v9, v5

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/view/SurfaceControl$DisplayMode;

    iput-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v5, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-static {v5, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    array-length v13, v5

    iget-object v14, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    if-ge v11, v13, :cond_a

    aget-object v13, v5, v11

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/16 v18, 0x1

    :goto_1
    array-length v4, v5

    if-ge v10, v4, :cond_2

    aget-object v4, v5, v10

    move-object/from16 v19, v5

    if-eq v10, v11, :cond_0

    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->width:I

    move/from16 v20, v10

    iget v10, v13, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v5, v10, :cond_1

    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v10, v13, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v5, v10, :cond_1

    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v10, v13, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    cmpl-float v10, v5, v10

    if-eqz v10, :cond_1

    iget v4, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v10, v13, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v4, v10, :cond_1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    move/from16 v20, v10

    :cond_1
    :goto_2
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v5, v19

    goto :goto_1

    :cond_2
    move-object/from16 v19, v5

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v10, v13}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v20

    if-eqz v20, :cond_3

    iget-object v10, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v10

    invoke-static {v15, v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_7

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v5, v13}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v10

    invoke-static {v15, v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v13, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    move/from16 v20, v4

    iget-object v4, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v4

    sget v21, Lcom/android/server/display/LocalDisplayAdapter;->$r8$clinit:I

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v5

    array-length v5, v10

    invoke-static {v10, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v16, v21

    goto :goto_4

    :cond_5
    move/from16 v20, v4

    :cond_6
    add-int/lit8 v4, v20, 0x1

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_9

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [F

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v4, :cond_8

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_8
    new-instance v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v4, v13, v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    move/from16 v12, v18

    goto :goto_6

    :cond_9
    move-object/from16 v4, v16

    :goto_6
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, v19

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_b
    if-ge v5, v4, :cond_c

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v10, v11}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    :goto_8
    const/4 v4, -0x1

    if-eq v6, v4, :cond_f

    if-eqz v7, :cond_f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_d
    if-ge v6, v5, :cond_e

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v6, v6, 0x1

    check-cast v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v11, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object v15, v11

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_f

    iget-object v5, v15, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iget-boolean v6, v14, Lcom/android/server/display/LocalDisplayAdapter;->mIsBootDisplayModeSupported:Z

    if-eqz v6, :cond_f

    iget v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v6, v5, :cond_f

    iput v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    move/from16 v5, v18

    goto :goto_a

    :cond_f
    const/4 v5, 0x0

    :goto_a
    iget v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string/jumbo v7, "LocalDisplayAdapter"

    if-eq v6, v4, :cond_10

    iget-object v11, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v11

    if-eq v6, v11, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "The active mode was changed from SurfaceFlinger or the display device to "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    iput v6, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v14}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move/from16 v6, v18

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    iget v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 v13, 0x0

    cmpl-float v13, v11, v13

    if-lez v13, :cond_11

    cmpl-float v11, v11, v8

    if-eqz v11, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "The render frame rate was changed from SurfaceFlinger or the display device to "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {v14}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move/from16 v11, v18

    goto :goto_c

    :cond_11
    const/4 v11, 0x0

    :goto_c
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v15, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v15, v4, :cond_13

    iget v15, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {v0, v15}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v15

    if-eq v15, v4, :cond_12

    iget v4, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v4, v15, :cond_12

    iget-object v4, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v15, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v4, v15}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v3, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    :cond_12
    move/from16 v3, v18

    iput-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v14}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v3, v4, :cond_17

    if-eqz v12, :cond_14

    goto :goto_e

    :cond_14
    if-nez v6, :cond_16

    if-nez v5, :cond_16

    if-eqz v11, :cond_15

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_16
    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_12

    :cond_17
    :goto_e
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_18

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/16 v18, 0x1

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v15, v5, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v15}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    invoke-virtual {v11, v15, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    :cond_18
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    iget-object v3, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    iput v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_10

    :cond_19
    if-eqz v12, :cond_1a

    if-eqz v6, :cond_1a

    const-string/jumbo v3, "New display modes are added and the active mode has changed, use active mode as default mode."

    invoke-static {v7, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    iput v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_10

    :cond_1a
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_1b

    const-string v3, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v7, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    iput v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    :cond_1b
    :goto_10
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v4, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1d

    iget v3, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    const-string v3, "DisplayModeSpecs base mode no longer available, using currently active mode."

    invoke-static {v7, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v3, v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    :cond_1d
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v3, :cond_1e

    invoke-virtual {v0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    :cond_1e
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_21

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    const-string v3, "Active display mode no longer available, reverting to default mode."

    invoke-static {v7, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    if-eq v3, v4, :cond_20

    goto :goto_11

    :cond_20
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :goto_11
    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    :cond_21
    invoke-virtual {v14}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    goto/16 :goto_d

    :goto_12
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v1, 0x0

    goto :goto_13

    :cond_22
    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    const/4 v1, 0x1

    :goto_13
    or-int/2addr v1, v3

    iget-object v3, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    if-nez v3, :cond_24

    :cond_23
    const/4 v3, 0x0

    const/16 v17, 0x0

    goto/16 :goto_16

    :cond_24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v5, :cond_26

    aget v9, v3, v8

    iget-object v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    const/4 v6, 0x1

    :cond_25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_26
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v3, v5, :cond_27

    if-eqz v6, :cond_23

    :cond_27
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-eqz v3, :cond_28

    const-string v3, "Active color mode no longer available, reverting to default mode."

    invoke-static {v7, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_15

    :cond_28
    const/4 v3, 0x0

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    const-string v4, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v7, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_15

    :cond_29
    const-string/jumbo v4, "No color modes available!"

    invoke-static {v7, v4}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2a
    const/4 v3, 0x0

    :goto_15
    const/16 v17, 0x1

    :goto_16
    or-int v1, v1, v17

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move v4, v3

    goto :goto_17

    :cond_2b
    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 v4, 0x1

    :goto_17
    or-int/2addr v1, v4

    iget-boolean v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    iget-boolean v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-ne v5, v4, :cond_2c

    move v4, v3

    goto :goto_18

    :cond_2c
    iput-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    const/4 v4, 0x1

    :goto_18
    or-int/2addr v1, v4

    iget-boolean v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    iget-boolean v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-ne v5, v4, :cond_2d

    move v4, v3

    goto :goto_19

    :cond_2d
    iput-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const/4 v4, 0x1

    :goto_19
    or-int/2addr v1, v4

    iget-boolean v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    iget-boolean v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    if-ne v5, v4, :cond_2e

    move v4, v3

    goto :goto_1a

    :cond_2e
    iput-boolean v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    const/4 v4, 0x1

    :goto_1a
    or-int/2addr v1, v4

    iget-object v4, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v5, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v4, v3

    goto :goto_1b

    :cond_2f
    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    const/4 v4, 0x1

    :goto_1b
    or-int/2addr v1, v4

    iget-object v2, v2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    iget-object v4, v14, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v4, v4, Lcom/android/server/display/feature/DisplayManagerFlags;->mGetSupportedRefreshRatesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_30

    :goto_1c
    move v10, v3

    goto :goto_1d

    :cond_30
    if-nez v2, :cond_31

    goto :goto_1c

    :cond_31
    iget-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_1c

    :cond_32
    iput-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    const/4 v10, 0x1

    :goto_1d
    or-int/2addr v1, v10

    if-eqz v1, :cond_33

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_33
    return v1
.end method
