.class public final Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# static fields
.field public static final DEBUG:Z

.field public static final TIMEOUT_STATE_TRANSITION_MILLIS:I

.field public static sNextNonDefaultDisplayId:I


# instance fields
.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field public final mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

.field public mDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field public final mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

.field public final mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

.field public final mDisplayGroupIdsByName:Landroid/util/ArrayMap;

.field public final mDisplayGroups:Landroid/util/SparseArray;

.field public final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field public final mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

.field public final mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

.field public final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field public mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

.field public mInteractive:Z

.field public final mListener:Lcom/android/server/display/DisplayManagerService$1;

.field public final mLogicalDisplays:Landroid/util/SparseArray;

.field public final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field public mNextNonDefaultGroupId:I

.field public mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSingleDisplayDemoMode:Z

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public final mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

.field public final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field public final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field public final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

.field public final mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

.field public mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LogicalDisplayMapper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xbb8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->TIMEOUT_STATE_TRANSITION_MILLIS:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/LogicalDisplayMapper;->sNextNonDefaultDisplayId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 6

    new-instance v0, Lcom/android/server/display/DeviceStateToLayoutMap;

    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-direct {v0, v1, p8}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v1, Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-direct {v1, p8}, Lcom/android/server/display/mode/SyntheticModeManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;)V

    new-instance v2, Lcom/android/server/display/DisplayGroupAllocator;

    invoke-direct {v2, p1}, Lcom/android/server/display/DisplayGroupAllocator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    const/4 v4, 0x5

    iput v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    new-instance v4, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mIdProducer:Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda2;

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    sget-object v3, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mContext:Landroid/content/Context;

    const-class p6, Landroid/os/PowerManager;

    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p6

    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    new-instance p6, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p7

    invoke-direct {p6, p0, p7}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object p6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-object p5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    const-string/jumbo p2, "persist.demo.singledisplay"

    invoke-static {p2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x1110277

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10700d4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    new-instance p3, Landroid/util/SparseBooleanArray;

    const/4 p5, 0x2

    invoke-direct {p3, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move p6, v3

    :goto_0
    const/4 p7, 0x1

    if-eqz p2, :cond_0

    array-length v4, p2

    if-ge p6, v4, :cond_0

    aget v4, p2, p6

    invoke-virtual {p3, v4, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2, p5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    :goto_1
    if-eqz p1, :cond_1

    array-length p3, p1

    if-ge v3, p3, :cond_1

    aget p3, p1, v3

    invoke-virtual {p2, p3, p7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    iget-object p1, p4, Lcom/android/server/display/DisplayDeviceRepository;->mListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iput-object p8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    new-instance p1, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;

    invoke-direct {p1}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/devicestate/feature/flags/FeatureFlagsImpl;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    return-void
.end method


# virtual methods
.method public final applyLayoutLocked()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Applying layout: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    iget-object v0, v0, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_f

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    iget-object v4, v4, Lcom/android/server/display/layout/Layout;->mDisplays:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/layout/Layout$Display;

    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "applyLayoutLocked: The display device ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), is not available for the display state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v5}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_0
    iget v5, v4, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    invoke-virtual {p0, v9, v5}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v10

    iget v11, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-eq v8, v10, :cond_3

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    if-eqz v5, :cond_2

    check-cast v5, Lcom/android/server/policy/PhoneWindowManager;

    if-nez v11, :cond_2

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayUpdater:Lcom/android/server/wm/DeferredDisplayUpdater;

    iput-boolean v7, v5, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    :cond_2
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v10, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v5

    iget v6, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    iget v10, v4, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    if-eq v6, v10, :cond_4

    iput v10, v8, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_4
    iget v6, v4, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    iget v10, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-eq v11, v10, :cond_5

    if-eq v11, v6, :cond_5

    iput v6, v8, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    iget-object v9, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/view/SurfaceControl$RefreshRateRange;

    :goto_2
    iget-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iput-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_7
    const-string/jumbo v6, "default"

    iget-object v9, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    if-nez v9, :cond_8

    move-object v9, v6

    :cond_8
    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_9

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    :cond_9
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v9

    if-nez v9, :cond_a

    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_a
    iget-boolean v5, v4, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    invoke-virtual {p0, v8, v5}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    if-nez v5, :cond_b

    move-object v5, v6

    :cond_b
    iget-object v9, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    iput-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_c
    iget-object v5, v4, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    if-nez v5, :cond_d

    goto :goto_3

    :cond_d
    move-object v6, v5

    :goto_3
    iget-object v5, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    iput-object v6, v8, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    iput-boolean v7, v8, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_e
    iget-object v4, v4, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    iput-object v4, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public final areAllTransitioningDisplaysOffLocked()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    iget-boolean v5, v4, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v4, v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public final createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 7

    new-instance v0, Lcom/android/server/display/LogicalDisplay;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    iget-object v2, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v5

    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mSyncedResolutionSwitch:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v6

    move v2, p2

    move-object v3, p1

    move v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;ZZZ)V

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget-object p1, p1, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-le p1, p2, :cond_0

    iget-boolean p1, v0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eqz p1, :cond_0

    iput-boolean p2, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz p2, :cond_0

    iput-boolean p1, v0, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateDesiredDisplayModeSpecs:Z

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 11

    const-string/jumbo v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSingleDisplayDemoMode="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const-string/jumbo v2, "mCurrentLayout="

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDeviceStatesOnWhichToWakeUp="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToWakeUp:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDeviceStatesOnWhichSelectiveSleep="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStatesOnWhichToSelectiveSleep:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mInteractive="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    const-string/jumbo v2, "mBootCompleted="

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDeviceState="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPendingDeviceState="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDeviceStateToBeAppliedAfterBoot="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Logical Displays: size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, ":"

    const-string v4, "Display "

    if-ge v2, p1, :cond_0

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LogicalDisplay;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v6, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Display Groups: size="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_2

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayGroup;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Group "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v5, v6, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_1

    iget-object v8, v6, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Group name: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/display/DisplayGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "DeviceStateToLayoutMap:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-----------------------"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mIsPortInDisplayLayoutEnabled="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p1, "Registered Layouts:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final finishStateTransitionLocked(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v1}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "stay_awake_on_fold_key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "selective_stay_awake_key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldGracePeriodProvider:Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-virtual {v1}, Lcom/android/internal/foldables/FoldGracePeriodProvider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    if-nez v2, :cond_6

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    sget-boolean v0, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not yet ready to transition to state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with displays-off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mInteractive="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isReady="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "LogicalDisplayMapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final forEachLocked(Ljava/util/function/Consumer;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    iget-boolean v3, v2, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    iget v3, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayGroup;

    iget-object v2, v2, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getDisplayIdsForGroupLocked(I)[I
    .locals 3

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayGroup;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    iget v2, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final getDisplayInfoForStateLocked(II)Landroid/view/DisplayInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "LogicalDisplayMapper"

    if-nez v0, :cond_0

    const-string p0, "Cannot get layout for given state:"

    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/layout/Layout;->getById(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot get display for given layout:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v3, v0}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    const-string v3, "), is not available for the display state "

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The display device ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The logical display associated with address ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    new-instance p0, Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput p2, p0, Landroid/view/DisplayInfo;->displayId:I

    return-object p0
.end method

.method public final getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    iget-object v3, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final resetLayoutLocked(IIZ)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_e

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    iget v4, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v5, v3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v5, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {p2, v5}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v6

    :cond_2
    const/4 v5, 0x1

    if-nez v7, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    if-nez v6, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v1

    :goto_3
    if-eq v8, v9, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    if-eqz v7, :cond_7

    iget-boolean v9, v7, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    move v9, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v9, v5

    :goto_6
    if-eqz v6, :cond_9

    iget-boolean v10, v6, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    move v10, v1

    goto :goto_8

    :cond_9
    :goto_7
    move v10, v5

    :goto_8
    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    iget v7, v7, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    iget v6, v6, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    if-eq v7, v6, :cond_a

    move v6, v5

    goto :goto_9

    :cond_a
    move v6, v1

    :goto_9
    iget-boolean v7, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    if-nez v7, :cond_b

    if-ne v9, v10, :cond_b

    if-nez v6, :cond_b

    if-eqz v8, :cond_d

    :cond_b
    if-eq p3, v7, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Set isInTransition on display "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "LogicalDisplayMapper"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iput-boolean p3, v3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_d
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final sendUpdatesForDisplaysLocked(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v5, 0x2

    iget-object v7, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_53

    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    and-int/2addr v9, v1

    if-nez v9, :cond_1

    move v6, v5

    move v11, v8

    const/4 v12, 0x5

    :cond_0
    :goto_1
    const/16 v16, -0x1

    goto/16 :goto_25

    :cond_1
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v9, v8}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    const/16 v4, 0x40

    const/16 v3, 0x20

    const/16 v6, 0x10

    const/16 v2, 0x8

    const/4 v14, 0x4

    if-eqz v11, :cond_f

    iget-object v11, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v11, :cond_2

    const-string/jumbo v11, "null"

    goto :goto_2

    :cond_2
    iget-object v11, v11, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    :goto_2
    const-string/jumbo v15, "LogicalDisplayMapper"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Sending "

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v1, v8, :cond_e

    if-eq v1, v5, :cond_d

    if-eq v1, v14, :cond_c

    if-eq v1, v2, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v3, :cond_9

    if-eq v1, v4, :cond_8

    const/16 v12, 0x80

    if-eq v1, v12, :cond_7

    const/16 v12, 0x100

    if-eq v1, v12, :cond_6

    const/16 v12, 0x200

    if-eq v1, v12, :cond_5

    const/16 v12, 0x400

    if-eq v1, v12, :cond_4

    const/16 v12, 0x800

    if-eq v1, v12, :cond_3

    const/4 v12, 0x0

    goto :goto_3

    :cond_3
    const-string/jumbo v12, "committed_state_changed"

    goto :goto_3

    :cond_4
    const-string/jumbo v12, "state_changed"

    goto :goto_3

    :cond_5
    const-string/jumbo v12, "refresh_rate_changed"

    goto :goto_3

    :cond_6
    const-string/jumbo v12, "disconnected"

    goto :goto_3

    :cond_7
    const-string/jumbo v12, "connected"

    goto :goto_3

    :cond_8
    const-string/jumbo v12, "hdr_sdr_ratio_changed"

    goto :goto_3

    :cond_9
    const-string/jumbo v12, "transition"

    goto :goto_3

    :cond_a
    const-string/jumbo v12, "framerate_override"

    goto :goto_3

    :cond_b
    const-string/jumbo v12, "swapped"

    goto :goto_3

    :cond_c
    const-string/jumbo v12, "removed"

    goto :goto_3

    :cond_d
    const-string/jumbo v12, "basic_changed"

    goto :goto_3

    :cond_e
    const-string/jumbo v12, "added"

    :goto_3
    const-string v4, " for display="

    const-string v3, " with device="

    invoke-static {v9, v12, v4, v3, v13}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v13, v11, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-ne v1, v8, :cond_10

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v9, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4

    :cond_10
    if-ne v1, v14, :cond_11

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_11
    :goto_4
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    if-eq v1, v8, :cond_3f

    if-eq v1, v5, :cond_3e

    if-eq v1, v14, :cond_3a

    if-eq v1, v2, :cond_38

    const/4 v11, 0x7

    if-eq v1, v6, :cond_36

    const/16 v6, 0x20

    if-eq v1, v6, :cond_34

    const/16 v6, 0x40

    if-eq v1, v6, :cond_33

    const/16 v12, 0x80

    if-eq v1, v12, :cond_24

    const/16 v12, 0x100

    if-eq v1, v12, :cond_16

    const/16 v12, 0x200

    if-eq v1, v12, :cond_15

    const/16 v12, 0x400

    if-eq v1, v12, :cond_14

    const/16 v12, 0x800

    if-eq v1, v12, :cond_13

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_12
    move v6, v5

    move v11, v8

    :goto_5
    const/4 v12, 0x5

    goto/16 :goto_22

    :cond_13
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/16 v3, 0xa

    invoke-virtual {v2, v10, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    :goto_6
    move v6, v5

    move v11, v8

    const/16 v2, 0x100

    :goto_7
    const/4 v12, 0x5

    goto/16 :goto_24

    :cond_14
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/16 v3, 0x9

    invoke-virtual {v2, v10, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    goto :goto_6

    :cond_15
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v4, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v3, v10, v2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    goto :goto_6

    :cond_16
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v6, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayPowerController;

    if-eqz v6, :cond_1b

    const/4 v12, -0x1

    invoke-virtual {v2, v6, v12}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object v12, v6, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v13, 0x0

    :goto_8
    :try_start_0
    iget-object v14, v6, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_17

    iget-object v14, v6, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/display/DisplayPowerController;

    new-instance v15, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v15, v5, v14}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v5, v6, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v14, v6, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v14, v15, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    add-int/2addr v13, v8

    const/4 v5, 0x2

    goto :goto_8

    :cond_17
    iget-object v4, v6, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iput-boolean v8, v6, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    iget-object v4, v6, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v5, v6, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v13, v6, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-virtual {v5, v4, v13, v14}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    iget-object v4, v6, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_18
    :goto_9
    iget-object v4, v6, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v5, v4, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v5, :cond_19

    iget-object v13, v4, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    iget-object v5, v5, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_19
    iget-object v5, v4, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v4, v4, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1a

    :try_start_2
    iget-object v4, v4, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v4, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_1a
    iget-object v4, v6, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v6, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_a
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1b
    :goto_b
    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    if-ne v4, v8, :cond_1c

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1c
    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    iget-boolean v4, v2, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v4, :cond_1d

    iget v4, v2, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    if-ne v4, v3, :cond_1d

    const/4 v12, -0x1

    iput v12, v2, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    :cond_1d
    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/companion/virtual/IVirtualDevice;

    if-eqz v4, :cond_1e

    iget-object v5, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v6, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v6, v2, v4, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/companion/virtual/IVirtualDevice;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    invoke-virtual {v2, v10, v11}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v4, v2, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    move v11, v8

    const/4 v6, 0x2

    goto/16 :goto_5

    :cond_20
    iget-object v2, v2, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    const-string/jumbo v4, "logStateDisconnected displayId="

    iget-object v5, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    :try_start_5
    iget-object v6, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v8, :cond_22

    sget-boolean v2, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "ExternalDisplayStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already disconnected"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_e

    :cond_21
    :goto_c
    monitor-exit v5

    :goto_d
    move v11, v8

    const/16 v2, 0x100

    const/4 v6, 0x2

    goto/16 :goto_7

    :cond_22
    iget-object v4, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    iget-object v10, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->delete(I)V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v5, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-boolean v10, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v14, 0x326

    invoke-static {v14, v8, v4, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v5, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v5, :cond_23

    const-string v5, "ExternalDisplayStatsService"

    const-string/jumbo v10, "logStateDisconnected displayId="

    const-string v11, " countOfExternalDisplays="

    const-string v12, " currentState="

    invoke-static {v3, v4, v10, v11, v12}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " state=1 mIsExternalDisplayUsedForAudio="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-static {v5, v3, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_23
    if-ne v4, v8, :cond_1f

    iget-object v3, v2, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v3, v3, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v4, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d

    :goto_e
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_24
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object v3, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget v4, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v4, :cond_25

    move v5, v8

    goto :goto_f

    :cond_25
    const/4 v5, 0x0

    :goto_f
    iget-object v6, v2, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v11

    if-nez v11, :cond_26

    :goto_10
    const/4 v6, -0x1

    :goto_11
    const/4 v12, -0x1

    goto :goto_12

    :cond_26
    iget-object v11, v3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v6

    if-nez v6, :cond_27

    goto :goto_10

    :cond_27
    iget v6, v6, Lcom/android/server/display/PersistentDataStore$DisplayState;->mColorMode:I

    goto :goto_11

    :goto_12
    if-ne v6, v12, :cond_29

    if-nez v4, :cond_28

    iget v6, v2, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    goto :goto_13

    :cond_28
    const/4 v6, 0x0

    :cond_29
    :goto_13
    iput v6, v10, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    iget-boolean v6, v2, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v6, :cond_2a

    iget-object v6, v2, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-virtual {v10, v6}, Lcom/android/server/display/LogicalDisplay;->setUserDisabledHdrTypes([I)V

    :cond_2a
    if-eqz v5, :cond_2c

    iget-object v5, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v5, v5, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v6, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v6, v5}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    iget-object v5, v2, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    if-gtz v6, :cond_2b

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gtz v5, :cond_2b

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_2b
    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_2c
    iget-object v5, v2, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v5}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    goto :goto_14

    :cond_2d
    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V

    :goto_14
    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget v5, v10, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    invoke-virtual {v2, v3, v5}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    iget-object v5, v2, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v5, v3, v8}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    :cond_2e
    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    if-ne v3, v8, :cond_2f

    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    :cond_2f
    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget-object v5, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v3, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iput v3, v6, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v5, 0x0

    invoke-virtual {v2, v10, v5}, Lcom/android/server/display/DisplayManagerService;->updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    :cond_30
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    invoke-static {v10}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {v3, v10}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_15

    :cond_31
    const/4 v6, 0x6

    invoke-virtual {v2, v10, v6}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    :goto_15
    iget-object v3, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_32
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    iget-boolean v3, v2, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1f

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_12

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v3, v2, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    if-eqz v3, :cond_1f

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-boolean v8, v2, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    goto/16 :goto_d

    :cond_33
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/4 v4, 0x5

    invoke-virtual {v2, v10, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    move v12, v4

    move v11, v8

    const/16 v2, 0x100

    const/4 v6, 0x2

    goto/16 :goto_24

    :cond_34
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerController;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "handleLogicalDisplayDeviceStateTransitionLocked: displayId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayManagerService"

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1f

    iget v5, v10, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v6, :cond_35

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-nez v6, :cond_35

    if-ne v3, v8, :cond_35

    iget v3, v2, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    const/4 v12, -0x1

    if-ne v3, v12, :cond_35

    const/4 v5, 0x0

    :cond_35
    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-virtual {v3, v10}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object v3

    iget v2, v2, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    invoke-virtual {v4, v3, v5, v2}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V

    goto/16 :goto_d

    :cond_36
    iget-object v3, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v4, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget v4, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v5, v5, Lcom/android/server/display/feature/DisplayManagerFlags;->mFramerateOverrideTriggersRrCallbacks:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v5}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_16

    :cond_37
    const/4 v2, 0x2

    :goto_16
    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v5, v11, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    goto/16 :goto_d

    :cond_38
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v3, :cond_39

    iget-object v3, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v3, v3, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v4, v3}, Lcom/android/server/display/mode/DisplayModeDirector;->defaultDisplayDeviceUpdated(Lcom/android/server/display/DisplayDeviceConfig;)V

    :cond_39
    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    :cond_3a
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object v3, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v3, :cond_3b

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_3b
    const/4 v3, 0x3

    invoke-virtual {v2, v10, v3}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    iget-object v3, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_3c
    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v2, :cond_3d

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayRemoved(I)V

    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Logical display removed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_3e
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto/16 :goto_d

    :cond_3f
    iget-object v2, v3, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v3, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget v3, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v3, :cond_40

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_40
    invoke-virtual {v2, v10, v8}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    iget-object v4, v10, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_41

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_41
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v6

    if-nez v6, :cond_42

    :goto_17
    const/4 v12, 0x5

    goto/16 :goto_21

    :cond_42
    iget-object v4, v4, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    iget v6, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v11, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v11, v11, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mIsExtendedDisplayEnabled:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    iget-object v11, v11, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v11}, Lcom/android/server/display/DisplayManagerService;->$r8$lambda$0fXX8iUX_rY84S1y1UduidrCOrU(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v11

    if-eqz v11, :cond_48

    iget-object v11, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v11

    :try_start_7
    iget-object v12, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-eq v12, v8, :cond_47

    const/4 v13, 0x6

    if-ne v12, v13, :cond_43

    move v14, v13

    :goto_18
    move/from16 v17, v8

    goto/16 :goto_1b

    :cond_43
    move v13, v5

    :goto_19
    iget-object v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    if-ge v13, v15, :cond_46

    iget-object v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    if-eq v15, v6, :cond_45

    move/from16 v17, v8

    :cond_44
    const/4 v14, 0x6

    goto :goto_1a

    :cond_45
    iget-object v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v5, 0x6

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    add-int/lit8 v14, v13, 0x1

    move/from16 v17, v8

    iget-boolean v8, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v15, 0x326

    invoke-static {v15, v5, v14, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v5, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v5, :cond_44

    const-string v5, "ExternalDisplayStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logStateExtended displayId="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " countOfExternalDisplays="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " currentState="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " state="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x6

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catchall_3
    move-exception v0

    goto :goto_1c

    :goto_1a
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v17

    const/4 v5, 0x0

    goto :goto_19

    :cond_46
    move/from16 v17, v8

    const/4 v14, 0x6

    monitor-exit v11

    goto/16 :goto_17

    :cond_47
    const/4 v14, 0x6

    goto :goto_18

    :goto_1b
    monitor-exit v11

    goto/16 :goto_17

    :goto_1c
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_48
    move/from16 v17, v8

    const/4 v14, 0x6

    iget-object v5, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    :try_start_8
    iget-object v8, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    move/from16 v11, v17

    invoke-virtual {v8, v6, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    if-eq v8, v11, :cond_4d

    const/4 v11, 0x5

    if-ne v8, v11, :cond_49

    move v12, v11

    goto/16 :goto_20

    :cond_49
    const/4 v11, 0x0

    :goto_1d
    iget-object v12, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v11, v12, :cond_4c

    iget-object v12, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v12, v6, :cond_4b

    :cond_4a
    const/4 v12, 0x5

    :goto_1e
    const/16 v17, 0x1

    goto :goto_1f

    :cond_4b
    iget-object v12, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    const/4 v13, 0x5

    invoke-virtual {v12, v6, v13}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v12, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    const/16 v17, 0x1

    add-int/lit8 v15, v11, 0x1

    iget-boolean v14, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x326

    invoke-static {v12, v13, v15, v14}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v13, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v13, :cond_4a

    const-string v13, "ExternalDisplayStatsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "logStateMirroring displayId="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " countOfExternalDisplays="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " currentState="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " state="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x5

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " mIsExternalDisplayUsedForAudio="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v4, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :catchall_4
    move-exception v0

    goto/16 :goto_26

    :goto_1f
    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x6

    goto :goto_1d

    :cond_4c
    const/4 v12, 0x5

    monitor-exit v5

    goto :goto_21

    :cond_4d
    const/4 v12, 0x5

    :goto_20
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_21
    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v4, v4, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableApplyDisplayChangedDuringDisplayAdded:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2, v10}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_4e
    iget-object v4, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v4, :cond_4f

    iget v5, v10, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v5, :cond_4f

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/DisplayTopologyCoordinator;->onDisplayAdded(Landroid/view/DisplayInfo;)V

    :cond_4f
    iget-boolean v4, v2, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v4, :cond_52

    invoke-virtual {v10}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_51

    iput v3, v2, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v11, 0x1

    invoke-direct {v4, v11, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v3, v2, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    if-eqz v3, :cond_50

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iput-boolean v11, v2, Lcom/android/server/display/DisplayDeviceRepository;->mNeedWakeLock:Z

    :cond_50
    :goto_22
    const/16 v2, 0x100

    goto :goto_24

    :cond_51
    :goto_23
    const/4 v11, 0x1

    goto :goto_22

    :cond_52
    const/4 v6, 0x2

    goto :goto_23

    :goto_24
    if-ne v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-ne v2, v9, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    goto/16 :goto_1

    :goto_25
    add-int/lit8 v7, v7, -0x1

    move v5, v6

    move v8, v11

    goto/16 :goto_0

    :goto_26
    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_53
    return-void
.end method

.method public final sendUpdatesForGroupsLocked(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/DisplayManagerService$1;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/16 v3, 0x8

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v2, v3, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    const-string/jumbo v1, "Postponing transition to state: "

    sget-boolean v2, Lcom/android/server/display/LogicalDisplayMapper;->DEBUG:Z

    const-string/jumbo v3, "LogicalDisplayMapper"

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " until boot is completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v4, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, p1, v0, v4, v6}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v4

    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-boolean v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    iget-boolean v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    invoke-virtual {p0, v6, v0, v7, v8}, Lcom/android/server/display/LogicalDisplayMapper;->shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Requesting Transition to state: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from state="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", interactive="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mInteractive:Z

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mBootCompleted="

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    const-string v0, ", wakeDevice="

    const-string v8, ", sleepDevice="

    invoke-static {v7, p1, v0, v4, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    if-nez v4, :cond_4

    if-eqz v6, :cond_7

    :cond_4
    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v0}, Lcom/android/server/policy/WindowWakeUpPolicy;->boostWakeUp()V

    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/LogicalDisplayMapper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {v0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sleep_on_fold_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    :goto_0
    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/LogicalDisplayMapper;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_1
    sget p0, Lcom/android/server/display/LogicalDisplayMapper;->TIMEOUT_STATE_TRANSITION_MILLIS:I

    int-to-long v0, p0

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-ne v0, p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Display is already "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo p2, "enabled"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "disabled"

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    const-string/jumbo p2, "LogicalDisplayMapper"

    invoke-static {p0, p1, p2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    return-void
.end method

.method public final setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/view/DisplayInfo;->type:I

    if-eq p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const-string/jumbo v0, "LogicalDisplayMapper"

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    :cond_1
    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eq p0, p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SetEnabled on display "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eq p2, p0, :cond_2

    iput-boolean v1, p1, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    iput-boolean p2, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP:Z

    if-eqz p0, :cond_2

    iput-boolean p2, p1, Lcom/android/server/display/LogicalDisplay;->mNeedToUpdateDesiredDisplayModeSpecs:Z

    :cond_2
    return-void
.end method

.method public shouldDeviceBePutToSleep(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFoldSettingProvider:Lcom/android/server/utils/FoldSettingProvider;

    invoke-virtual {p0}, Lcom/android/server/utils/FoldSettingProvider;->getFoldSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "stay_awake_on_fold_key"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldDeviceBeWoken(Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;ZZ)Z
    .locals 2

    const/16 p0, 0xa

    filled-new-array {p0}, [I

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperties([I)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0xe

    invoke-virtual {p1, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p2, p1}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    if-nez p0, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final transitionToPendingStateLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(IIZ)V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:Landroid/hardware/devicestate/DeviceState;

    sget-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    return-void
.end method

.method public updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v2, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayListenerPerformanceImprovementsFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->state:I

    iget v3, p1, Landroid/view/DisplayInfo;->state:I

    if-eq v2, v3, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mCommittedStateSeparateEvent:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget p0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget p1, p1, Landroid/view/DisplayInfo;->committedState:I

    if-eq p0, p1, :cond_2

    or-int/lit16 p0, v0, 0x800

    return p0

    :cond_2
    return v0
.end method

.method public updateLogicalDisplays()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLogicalDisplaysLocked(IZ)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v5, 0x0

    :goto_0
    const-string/jumbo v11, "LogicalDisplayMapper"

    if-ltz v2, :cond_3c

    iget-object v12, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    iget-object v13, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/LogicalDisplay;

    iget-object v14, v13, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v14, :cond_0

    move v15, v3

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x0

    if-nez v15, :cond_1

    move/from16 v20, v2

    move/from16 v19, v5

    move/from16 v22, v12

    goto/16 :goto_15

    :cond_1
    iget-object v15, v14, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget v15, v13, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v15}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v10

    if-eqz v6, :cond_2

    iget-object v7, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object/from16 v4, v16

    :goto_2
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayGroup;

    iget-object v9, v13, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v8

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mSeparateTimeouts:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    move/from16 v19, v3

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    move-object/from16 v20, v4

    const-string/jumbo v4, "secondary_mode"

    if-eqz v19, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c

    iget v9, v8, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    move/from16 v19, v5

    iget-boolean v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    if-eqz v5, :cond_3

    move/from16 v21, v5

    const/4 v5, 0x1

    if-ne v9, v5, :cond_4

    :cond_3
    move-object/from16 v21, v6

    goto :goto_4

    :cond_4
    if-eqz v21, :cond_7

    invoke-virtual {v3, v13, v9}, Lcom/android/server/display/DisplayGroupAllocator;->isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    if-eqz v5, :cond_5

    iget v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mExternalDesktopMode:I

    move-object/from16 v21, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    goto :goto_3

    :cond_5
    move-object/from16 v21, v6

    :cond_6
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v21, v6

    :goto_3
    iget-boolean v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    if-eqz v5, :cond_8

    invoke-virtual {v3, v13, v9}, Lcom/android/server/display/DisplayGroupAllocator;->isDesktopModeSupportedOnDisplayLocked(Lcom/android/server/display/LogicalDisplay;I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    goto :goto_5

    :cond_8
    const/4 v5, 0x3

    goto :goto_5

    :goto_4
    const/4 v5, 0x0

    :goto_5
    iput v5, v3, Lcom/android/server/display/DisplayGroupAllocator;->mReason:I

    const-string v6, ""

    if-eqz v5, :cond_9

    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    :cond_9
    move-object v9, v6

    goto :goto_6

    :cond_a
    move-object v9, v4

    :goto_6
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    move-object/from16 v22, v14

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v6, :cond_d

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v23, v6

    move-object/from16 v6, v17

    check-cast v6, Lcom/android/server/display/DisplayGroup;

    iget-object v6, v6, Lcom/android/server/display/DisplayGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    goto :goto_8

    :cond_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v23

    goto :goto_7

    :cond_c
    move/from16 v19, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v14

    :cond_d
    const/4 v5, -0x1

    :goto_8
    iget v6, v8, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v6, 0x1

    :goto_a
    if-eqz v10, :cond_10

    const/4 v14, 0x1

    goto :goto_b

    :cond_10
    const/4 v14, 0x0

    :goto_b
    if-nez v6, :cond_11

    if-eqz v21, :cond_11

    move/from16 v17, v5

    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    move/from16 v17, v5

    const/4 v5, 0x0

    :goto_c
    move-object/from16 v23, v9

    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v10, v9, :cond_12

    const/4 v9, 0x1

    goto :goto_d

    :cond_12
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_13

    if-eqz v5, :cond_13

    move/from16 v20, v2

    const/4 v2, -0x1

    goto :goto_e

    :cond_13
    move/from16 v20, v2

    move/from16 v2, v17

    :goto_e
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/DisplayDevice;->shouldOnlyMirror()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/DisplayDevice;->getDisplayIdToMirrorLocked()I

    move-result v1

    move/from16 v22, v12

    const/4 v12, 0x1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/DisplayManager;->isExternalDesktopDisplay(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, v4

    :goto_f
    const/4 v12, -0x1

    goto :goto_10

    :cond_14
    move/from16 v22, v12

    :cond_15
    move-object/from16 v1, v23

    goto :goto_f

    :goto_10
    if-eq v10, v12, :cond_16

    if-ne v14, v6, :cond_16

    if-ne v9, v5, :cond_16

    if-eq v2, v12, :cond_1e

    :cond_16
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v10, 0x2

    goto :goto_12

    :cond_17
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->CARLIFE_DISPLAY_GROUP:Z

    if-eqz v4, :cond_18

    iget v4, v8, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v8, -0x80000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_18

    const/4 v10, 0x4

    goto :goto_12

    :cond_18
    iget-object v4, v13, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    const/4 v12, -0x1

    if-eq v2, v12, :cond_1a

    :cond_19
    :goto_11
    move v10, v2

    goto :goto_12

    :cond_1a
    if-eqz v5, :cond_1b

    if-eqz v21, :cond_1b

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-nez v2, :cond_19

    iget v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceDisplayGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_11

    :cond_1b
    if-nez v6, :cond_1c

    const/4 v10, 0x0

    goto :goto_12

    :cond_1c
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1d

    iget v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupIdsByName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_11

    :cond_1e
    :goto_12
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayGroup;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v2, v10}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    iput-object v1, v2, Lcom/android/server/display/DisplayGroup;->mGroupName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v10, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1f
    if-eq v7, v2, :cond_24

    if-eqz v7, :cond_20

    iget v1, v7, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    const/16 v18, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v1, v7, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_20
    iget-object v1, v2, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget v1, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v1, v2, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_21
    const/4 v5, 0x1

    :goto_13
    iget v1, v13, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq v10, v1, :cond_22

    iput v10, v13, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput-boolean v5, v13, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_22
    const-string/jumbo v1, "Setting new display group "

    const-string v2, " for display "

    const-string v4, ", from previous group: "

    invoke-static {v10, v15, v1, v2, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_23

    iget v2, v7, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_14

    :cond_23
    const-string/jumbo v2, "null"

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", for reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/android/server/display/DisplayGroupAllocator;->mReason:I

    invoke-static {v1, v2, v11}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_24
    :goto_15
    iget-boolean v1, v13, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v13, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mSyntheticModeManager:Lcom/android/server/display/mode/SyntheticModeManager;

    invoke-virtual {v13, v2, v3}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V

    invoke-virtual {v13}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    move/from16 v5, v22

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v6, 0x1

    goto :goto_16

    :cond_25
    move v6, v4

    :goto_16
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    iget-boolean v8, v13, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    iget-object v9, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v12, 0x1

    invoke-virtual {v10, v2, v12}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v10

    sget-boolean v12, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v12, :cond_28

    iget-object v14, v2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v14, v14

    if-lez v14, :cond_26

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v14

    goto :goto_17

    :cond_26
    move-object/from16 v14, v16

    :goto_17
    iget-object v15, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, v15, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v4, v4

    if-lez v4, :cond_27

    invoke-virtual {v15}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v16

    :cond_27
    move-object/from16 v4, v16

    if-eqz v14, :cond_28

    if-eqz v4, :cond_28

    invoke-virtual {v4, v14}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v4

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    iget-object v14, v13, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v14, :cond_38

    if-nez v6, :cond_29

    or-int/lit16 v1, v9, 0x80

    move v2, v1

    const/16 v19, 0x1

    :goto_19
    move/from16 v1, p1

    goto/16 :goto_1f

    :cond_29
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v14, v2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v6, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Swapping new display: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v1, v9, 0x8

    :goto_1a
    move v2, v1

    goto :goto_19

    :cond_2a
    if-eq v7, v8, :cond_2d

    iget v6, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2b

    if-eqz v8, :cond_2d

    :cond_2b
    if-eqz v8, :cond_2c

    const/4 v6, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v6, 0x4

    :goto_1b
    or-int v1, v9, v6

    goto :goto_1a

    :cond_2d
    if-eqz v1, :cond_2f

    move/from16 v1, p1

    const/16 v6, 0x10

    if-ne v1, v6, :cond_2e

    :goto_1c
    or-int/lit8 v2, v9, 0x40

    goto :goto_1f

    :cond_2e
    or-int/lit16 v2, v9, 0x602

    goto :goto_1f

    :cond_2f
    move/from16 v1, p1

    if-eqz v10, :cond_30

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v6}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_31

    :cond_30
    const/16 v6, 0x10

    goto :goto_1e

    :cond_31
    const/4 v7, 0x1

    if-ne v3, v7, :cond_32

    or-int/lit8 v2, v9, 0x20

    goto :goto_1f

    :cond_32
    iget-object v2, v13, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    or-int/lit8 v2, v9, 0x10

    if-eqz v12, :cond_37

    if-eqz v4, :cond_37

    or-int/lit8 v2, v9, 0x12

    goto :goto_1f

    :cond_33
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v13, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v7, 0x1

    invoke-virtual {v2, v3, v7}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;Z)Z

    move-result v2

    if-nez v2, :cond_34

    or-int/lit8 v9, v9, 0x2

    :cond_34
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v2

    :goto_1d
    or-int/2addr v2, v9

    goto :goto_1f

    :goto_1e
    if-ne v1, v6, :cond_35

    goto :goto_1c

    :cond_35
    if-nez v10, :cond_36

    or-int/lit8 v9, v9, 0x2

    :cond_36
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->updateAndGetMaskForDisplayPropertyChanges(Landroid/view/DisplayInfo;)I

    move-result v2

    goto :goto_1d

    :cond_37
    :goto_1f
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    move/from16 v3, v20

    :goto_20
    move/from16 v5, v19

    goto :goto_22

    :cond_38
    move/from16 v1, p1

    invoke-virtual {v0, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayGroup;

    if-eqz v2, :cond_39

    const-string/jumbo v3, "Removing display #"

    const-string v4, " from group #"

    invoke-static {v5, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    invoke-static {v3, v4, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v2, v2, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_39
    if-eqz v6, :cond_3b

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplaysEnabledCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    or-int/lit8 v9, v9, 0x4

    move/from16 v3, v20

    const/16 v19, 0x1

    goto :goto_21

    :cond_3a
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    or-int/lit16 v9, v9, 0x100

    move/from16 v3, v20

    goto :goto_21

    :cond_3b
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    move/from16 v3, v20

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Removed display: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_20

    :goto_22
    add-int/lit8 v2, v3, -0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3c
    move/from16 v1, p1

    move/from16 v19, v5

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_23
    if-ltz v2, :cond_42

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    const/4 v12, -0x1

    if-le v5, v12, :cond_3d

    const/4 v5, 0x1

    goto :goto_24

    :cond_3d
    const/4 v5, 0x0

    :goto_24
    iget v6, v4, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    iget-object v4, v4, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz v5, :cond_41

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_26

    :cond_3e
    if-nez v5, :cond_3f

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_25

    :cond_3f
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-eq v4, v6, :cond_40

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_40
    :goto_25
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_41
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    :cond_42
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x400

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    if-eqz v19, :cond_44

    if-eqz p2, :cond_43

    const-string/jumbo v0, "Trying to loop a third time"

    invoke-static {v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_43
    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    :cond_44
    return-void
.end method

.method public final updateLogicalDisplaysLocked$1()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked(IZ)V

    return-void
.end method
