.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;


# instance fields
.field public final mAlwaysRotateDisplayDeviceEnabled:Z

.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mCanHostTasks:Z

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDevicePosition:I

.field public mDirty:Z

.field public mDisplayGroupId:I

.field public mDisplayGroupName:Ljava/lang/String;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public final mIsAnisotropyCorrectionEnabled:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public final mLayerStack:I

.field public mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public mLeadDisplayId:I

.field public mNeedToUpdateDesiredDisplayModeSpecs:Z

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

.field public mPowerThrottlingDataId:Ljava/lang/String;

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRefreshRateMode:I

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mSyncedResolutionSwitchEnabled:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mThermalRefreshRateThrottling:Landroid/util/SparseArray;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;ZZZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    new-instance v3, Lcom/android/server/display/DisplayInfoProxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateDesiredDisplayModeSpecs:Z

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    const-string/jumbo p3, "default"

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    iput-object p3, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez p1, :cond_0

    move v2, p2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    const-string/jumbo v2, "mPrimaryDisplayDevice="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const-string v2, ")"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v3, v3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    const-string/jumbo v3, "mIsEnabled="

    invoke-static {p1, v1, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    const-string/jumbo v3, "mIsInTransition="

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    const-string/jumbo v3, "mLayerStack="

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    const-string/jumbo v3, "mPosition="

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    const-string/jumbo v3, "mHasContent="

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    const-string/jumbo v3, "mDesiredDisplayModeSpecs={"

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    const-string/jumbo v3, "mDisplayOffset=("

    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    const-string/jumbo v2, "mBaseDisplayInfo="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    const-string/jumbo v2, "mFrameRateOverrides="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDisplayGroupId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    const-string/jumbo v2, "mDisplayGroupName="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    const-string/jumbo v2, "mThermalBrightnessThrottlingDataId="

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    const-string/jumbo v2, "mLeadDisplayId="

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    const-string/jumbo v2, "mLayoutLimitedRefreshRate="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPowerThrottlingDataId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    iget-object v1, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    if-eqz v3, :cond_0

    iget v2, v3, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, v3, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v2, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v2, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v2, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v2, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v2, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v2, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget v2, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v2, v3, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v2, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, v3, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v2, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    iput p0, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_2
    iget-object p0, v0, Lcom/android/server/display/DisplayInfoProxy;->mInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public final setIsForceSdr(Z)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v2, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-eq v2, p1, :cond_1

    iput-boolean p1, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public final setUserDisabledHdrTypes([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v2, :cond_0

    goto/16 :goto_16

    :cond_0
    move-object/from16 v3, p1

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    if-nez v5, :cond_2

    goto/16 :goto_16

    :cond_2
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v6, v5, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/DisplayInfo;->flags:I

    iput v6, v5, Landroid/view/DisplayInfo;->removeMode:I

    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v8, v7, 0x8

    const/4 v9, 0x1

    if-eqz v8, :cond_3

    iput v9, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_3
    and-int/lit8 v8, v7, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v8, v10

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_4
    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_5

    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    iput v9, v5, Landroid/view/DisplayInfo;->removeMode:I

    :cond_5
    and-int/lit16 v8, v7, 0x400

    if-eqz v8, :cond_6

    iput v9, v5, Landroid/view/DisplayInfo;->removeMode:I

    :cond_6
    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v8, :cond_7

    goto :goto_0

    :cond_7
    if-ne v8, v9, :cond_8

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    goto :goto_0

    :cond_8
    and-int/lit8 v11, v7, 0x40

    if-eqz v11, :cond_9

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v11, v11, 0x8

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_9
    :goto_0
    and-int/lit16 v11, v7, 0x100

    if-eqz v11, :cond_a

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_a
    and-int/lit16 v11, v7, 0x200

    if-eqz v11, :cond_b

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v11, v11, 0x20

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_b
    and-int/lit16 v11, v7, 0x1000

    if-eqz v11, :cond_c

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_c
    and-int/lit16 v11, v7, 0x2000

    if-eqz v11, :cond_d

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_d
    and-int/lit16 v11, v7, 0x4000

    if-eqz v11, :cond_e

    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_e
    const v11, 0x8000

    and-int v12, v7, v11

    if-eqz v12, :cond_f

    iget v12, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v12, v12, 0x200

    iput v12, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_f
    and-int/lit8 v12, v7, 0x2

    if-eqz v12, :cond_10

    iget v12, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v12, v12, 0x4000

    iput v12, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_10
    const/high16 v12, 0x10000

    and-int v13, v7, v12

    if-eqz v13, :cond_11

    iget v13, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v13, v13, 0x400

    iput v13, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_11
    const/high16 v13, 0x20000

    and-int v14, v7, v13

    if-eqz v14, :cond_12

    iget v14, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v14, v14, 0x800

    iput v14, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_12
    const/high16 v14, 0x80000

    and-int v15, v7, v14

    if-eqz v15, :cond_13

    iget v15, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v15, v15, 0x1000

    iput v15, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_13
    const/high16 v15, 0x100000

    and-int/2addr v7, v15

    if-eqz v7, :cond_14

    iget v7, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v7, v9, :cond_14

    iget v7, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v7, v11

    iput v7, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_14
    invoke-static {v2}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v5

    iget v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v11

    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v11

    iget v11, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move/from16 p1, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v5

    iget-boolean v5, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    const/4 v12, 0x0

    if-eqz v5, :cond_17

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v5, v10, :cond_17

    iget v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    cmpl-float v16, v5, v12

    if-lez v16, :cond_17

    move/from16 v16, v12

    iget v12, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v17, v12, v16

    if-lez v17, :cond_15

    const v17, 0x3f833333    # 1.025f

    mul-float v18, v12, v17

    cmpl-float v18, v5, v18

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    if-lez v18, :cond_16

    int-to-float v11, v11

    mul-float/2addr v11, v5

    div-float/2addr v11, v12

    float-to-double v11, v11

    add-double v11, v11, v19

    double-to-int v11, v11

    :cond_15
    :goto_1
    move v5, v13

    move v12, v14

    goto :goto_2

    :cond_16
    mul-float v17, v17, v5

    cmpg-float v17, v17, v12

    if-gez v17, :cond_15

    int-to-float v7, v7

    mul-float/2addr v7, v12

    div-float/2addr v7, v5

    move v5, v13

    move v12, v14

    float-to-double v13, v7

    add-double v13, v13, v19

    double-to-int v7, v13

    goto :goto_2

    :cond_17
    move/from16 v16, v12

    goto :goto_1

    :goto_2
    iget-object v13, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v14, v13, Landroid/view/DisplayInfo;->type:I

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v14, v13, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v14, v13, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v14, v13, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v14, v13, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput v7, v13, Landroid/view/DisplayInfo;->appWidth:I

    iput v11, v13, Landroid/view/DisplayInfo;->appHeight:I

    iput v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, v13, Landroid/view/DisplayInfo;->rotation:I

    iget v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v14, v13, Landroid/view/DisplayInfo;->modeId:I

    iget v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iput v14, v13, Landroid/view/DisplayInfo;->renderFrameRate:F

    iget-boolean v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iput-boolean v14, v13, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v14, v13, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v14, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    move/from16 v17, v5

    array-length v5, v14

    invoke-static {v14, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v5

    iput-object v5, v13, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v13, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v13, v5, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v13, v2, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iput v13, v5, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget-object v13, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v14, v13

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/view/Display$Mode;

    iput-object v13, v5, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v13, v5, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-boolean v14, v5, Landroid/view/DisplayInfo;->hasArrSupport:Z

    move/from16 v18, v12

    iget-boolean v12, v1, Lcom/android/server/display/mode/SyntheticModeManager;->mHasArrSupportEnabled:Z

    if-eqz v12, :cond_18

    goto :goto_4

    :cond_18
    iget-boolean v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    if-nez v4, :cond_1a

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz v4, :cond_19

    goto :goto_3

    :cond_19
    move v14, v6

    goto :goto_4

    :cond_1a
    :goto_3
    move v14, v9

    :goto_4
    if-eqz v14, :cond_1b

    iget-boolean v1, v1, Lcom/android/server/display/mode/SyntheticModeManager;->mSynthetic60HzModesEnabled:Z

    if-nez v1, :cond_1c

    :cond_1b
    move/from16 v20, v10

    move/from16 v19, v15

    goto/16 :goto_8

    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v12, v13

    move v14, v6

    move/from16 v19, v15

    move v15, v14

    :goto_5
    if-ge v14, v12, :cond_21

    move/from16 v20, v10

    aget-object v10, v13, v14

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v21

    const v22, 0x42700a3d    # 60.01f

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1d

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    if-le v3, v15, :cond_1e

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getModeId()I

    move-result v15

    :cond_1e
    invoke-virtual {v10}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v3

    const/high16 v22, 0x42700000    # 60.0f

    div-float v3, v3, v22

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v9, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_6

    :cond_1f
    move v3, v6

    :goto_6
    if-eqz v3, :cond_20

    new-instance v3, Landroid/util/Size;

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    invoke-direct {v3, v9, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v10}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v20

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_5

    :cond_21
    move/from16 v20, v10

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v24, v15, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Size;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v31, v4

    check-cast v31, [I

    new-instance v23, Landroid/view/Display$Mode;

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v25

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v26

    const/4 v4, 0x0

    new-array v6, v4, [F

    const/high16 v28, 0x42700000    # 60.0f

    const/16 v29, 0x1

    const/high16 v27, 0x42700000    # 60.0f

    move-object/from16 v30, v6

    invoke-direct/range {v23 .. v31}, Landroid/view/Display$Mode;-><init>(IIIFFZ[F[I)V

    move-object/from16 v4, v23

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display$Mode;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [Landroid/view/Display$Mode;

    :goto_8
    iput-object v13, v5, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v3, v1, Landroid/view/DisplayInfo;->colorMode:I

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v3, v1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v3, v1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v3, :cond_24

    iget-boolean v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v3, :cond_23

    goto :goto_9

    :cond_23
    const/4 v3, 0x0

    goto :goto_a

    :cond_24
    :goto_9
    const/4 v3, 0x1

    :goto_a
    iput-boolean v3, v1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v3, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v3, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v3, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v3, v1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v3, v1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v3, v1, Landroid/view/DisplayInfo;->state:I

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iput v3, v1, Landroid/view/DisplayInfo;->committedState:I

    iput v7, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v11, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v7, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v11, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v3, v1, Landroid/view/DisplayInfo;->ownerUid:I

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_b

    :cond_25
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_c

    :cond_26
    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_c
    iput-object v3, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput v8, v1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v3, v1, Landroid/view/DisplayInfo;->displayGroupId:I

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz v1, :cond_27

    array-length v3, v1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_27

    aget-object v5, v1, v4

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_27
    iget-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz v1, :cond_2a

    array-length v3, v1

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_2a

    aget-object v5, v1, v4

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v7, v6, v16

    if-eqz v7, :cond_29

    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_28

    goto :goto_f

    :cond_28
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_10

    :cond_29
    :goto_f
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v7, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v5, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_2a
    const/4 v1, 0x0

    :goto_11
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2b
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v3, v1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v3, v1, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iput v3, v1, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v3, v1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v3, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v3, v1, Landroid/view/DisplayInfo;->installOrientation:I

    iget-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v3, v1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x2008

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    iput v4, v1, Landroid/view/DisplayInfo;->removeMode:I

    :cond_2c
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v3, v1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v3, v1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    iput-boolean v3, v1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v1, :cond_2d

    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->flags:I

    or-int v3, v3, p1

    iput v3, v1, Landroid/view/DisplayInfo;->flags:I

    :cond_2d
    iget v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0x1000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_2e
    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    or-int v4, v4, v18

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_2f
    const/high16 v3, 0x400000

    and-int/2addr v3, v1

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_30
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    const/high16 v4, 0x4000000

    if-eqz v3, :cond_32

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->type:I

    move/from16 v6, v20

    if-eq v5, v6, :cond_31

    and-int v5, v1, v4

    if-nez v5, :cond_31

    goto :goto_12

    :cond_31
    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int v5, v5, v17

    iput v5, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_32
    :goto_12
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    if-eqz v3, :cond_33

    const/high16 v3, -0x80000000

    and-int/2addr v3, v1

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int v5, v5, v19

    iput v5, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_33
    const/high16 v3, 0x2000000

    and-int v5, v1, v3

    if-eqz v5, :cond_34

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_34
    const/high16 v3, 0x10000000

    and-int v5, v1, v3

    if-eqz v5, :cond_37

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, v5, Landroid/view/DisplayInfo;->flags:I

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_36

    const/4 v6, 0x3

    if-ne v2, v6, :cond_35

    goto :goto_14

    :cond_35
    :goto_13
    const/4 v2, 0x0

    goto :goto_15

    :cond_36
    :goto_14
    iput v3, v5, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_13

    :goto_15
    iput v2, v5, Landroid/view/DisplayInfo;->refreshRateMode:I

    :cond_37
    const/high16 v2, 0x20000000

    and-int v3, v1, v2

    if-eqz v3, :cond_38

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_38
    const/high16 v2, 0x8000000

    and-int v3, v1, v2

    if-eqz v3, :cond_39

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v3, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v2, v5

    iput v2, v3, Landroid/view/DisplayInfo;->flags:I

    :cond_39
    and-int/2addr v1, v4

    if-eqz v1, :cond_3a

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    :cond_3a
    :goto_16
    return-void
.end method
