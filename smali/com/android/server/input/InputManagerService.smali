.class public Lcom/android/server/input/InputManagerService;
.super Landroid/hardware/input/IInputManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DEBUG:Z

.field public static final IS_TABLET_DEVICE:Z

.field public static SEP_FULL:Z

.field public static final mHighHysteresis:[F

.field public static final mLowHysteresis:[F

.field public static final mMultiFingerGestureEnable:Z


# instance fields
.field public final mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

.field public mAddingPogoKeyboardIntentPending:Z

.field public final mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

.field public final mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

.field public final mAssociationsLock:Ljava/lang/Object;

.field public mBackKeyDownAdjusted:Z

.field public final mBatteryController:Lcom/android/server/input/BatteryController;

.field public mBlockDeviceMode:I

.field public final mBlockTkeyCallerList:Ljava/util/Vector;

.field public final mBlockTspCallerList:Ljava/util/Vector;

.field public mBootCompleted:Z

.field public final mBroadcastReceiver:Lcom/android/server/input/InputManagerService$2;

.field public final mContext:Landroid/content/Context;

.field public final mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

.field public mCurrentFourTapBehavior:I

.field public mCurrentThreeTapBehavior:I

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public mDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mDefaultPointerIconChanged:Z

.field public mDesktopModeDisplayState:I

.field public final mDeviceBlockReceiver:Lcom/android/server/input/InputManagerService$2;

.field public final mDeviceTypeAssociations:Ljava/util/Map;

.field public final mDexLock:Ljava/lang/Object;

.field public mDisplayIdForPointerIcon:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDoubleTouchGestureEnableFile:Ljava/io/File;

.field public final mFallbackActions:Landroid/util/SparseArray;

.field public mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final mFocusEventDebugViewLock:Ljava/lang/Object;

.field public final mFoldingAngleListener:Lcom/android/server/input/InputManagerService$10;

.field public mFoldingState:I

.field public mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

.field public mForcedDefaultPointerIconChanged:Z

.field public final mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

.field public final mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

.field public mImeTargetDisplayIdForExternalDesktop:I

.field public mInputDevices:[Landroid/view/InputDevice;

.field public final mInputDevicesChangedListeners:Landroid/util/SparseArray;

.field public mInputDevicesChangedPending:Z

.field public final mInputDevicesLock:Ljava/lang/Object;

.field public mInputFilter:Landroid/view/IInputFilter;

.field public mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

.field public final mInputFilterLock:Ljava/lang/Object;

.field public final mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

.field public mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

.field public final mInputMonitors:Ljava/util/Map;

.field public final mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

.field public mIsKidsMode:Z

.field public final mIsVibrating:Landroid/util/SparseBooleanArray;

.field public final mKeyEventActivityListenersToNotify:Ljava/util/List;

.field public final mKeyEventActivityLock:Ljava/lang/Object;

.field public final mKeyGestureController:Lcom/android/server/input/KeyGestureController;

.field public final mKeyRemapper:Lcom/android/server/input/KeyRemapper;

.field public final mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

.field public final mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

.field public final mKeyboardLayoutAssociations:Ljava/util/Map;

.field public final mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

.field public final mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

.field public final mKidsModeReceiver:Lcom/android/server/input/InputManagerService$2;

.field public mLastLidEventTime:J

.field public mLastPointerIcon:Landroid/view/PointerIcon;

.field public mLastPointerIconType:I

.field public mLastWacomMode:I

.field public final mLidStateChangedListeners:Landroid/util/SparseArray;

.field public final mLidStateLock:Ljava/lang/Object;

.field public final mLidSwitchCallbacks:Ljava/util/List;

.field public final mLidSwitchLock:Ljava/lang/Object;

.field public final mLightLock:Ljava/lang/Object;

.field public final mLightSessions:Landroid/util/ArrayMap;

.field public final mMultiFingerGestureListeners:Landroid/util/SparseArray;

.field public final mMultiFingerGestureLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

.field public mNextVibratorTokenValue:I

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mNotifyPogoKeyboardNotMatchPending:Z

.field public mPaperCoverNotificationPending:Z

.field public mPogoKeyboardConnected:Z

.field public final mPointerIconCache:Lcom/android/server/input/PointerIconCache;

.field public final mPointerIconChangedListeners:Landroid/util/SparseArray;

.field public final mPointerIconLock:Ljava/lang/Object;

.field public final mRuntimeAssociations:Ljava/util/Map;

.field public mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

.field public final mSensorAccuracyListenersToNotify:Ljava/util/List;

.field public final mSensorEventListeners:Landroid/util/SparseArray;

.field public final mSensorEventListenersToNotify:Ljava/util/List;

.field public final mSensorEventLock:Ljava/lang/Object;

.field public final mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

.field public mSharedKeyReferenceCount:I

.field public final mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mShowKeyPresses:Z

.field public mShowRotaryInput:Z

.field public final mShowingTouchSensitivityNotiActionReceiver:Lcom/android/server/input/InputManagerService$2;

.field public mShowingTouchSensitivityNotiCount:I

.field public mShowingTouchSensitivityNotiCountOld:I

.field public mSpenControlToken:Landroid/os/IBinder;

.field public mSpenCoverAttached:Z

.field public mSpenDeviceId:I

.field public final mStaticAssociations:Ljava/util/Map;

.field public final mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

.field public final mSubFoldingAngleListener:Lcom/android/server/input/InputManagerService$10;

.field public mSubFoldingState:I

.field public final mSwitchEventChangedListeners:Landroid/util/SparseArray;

.field public final mSwitchEventChangedLock:Ljava/lang/Object;

.field public final mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

.field public mSystemReady:Z

.field public final mTabletModeChangedListeners:Landroid/util/SparseArray;

.field public final mTabletModeLock:Ljava/lang/Object;

.field public final mTempGamePads:Ljava/util/ArrayList;

.field public final mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

.field public final mTempLidStateChangedListenersToNotify:Ljava/util/List;

.field public final mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

.field public final mTempPointerIconChangedListenersToNotify:Ljava/util/List;

.field public final mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

.field public final mTempTabletModeChangedListenersToNotify:Ljava/util/List;

.field public final mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

.field public final mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mToolTypeForDefaultPointerIcon:I

.field public mToolTypeForForcedDefaultPointerIcon:I

.field public final mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

.field public mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

.field public final mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

.field public final mUniqueIdAssociationsByPort:Ljava/util/Map;

.field public final mUseDevInputEventForAudioJack:Z

.field public final mVelocityTrackerStrategy:Ljava/lang/String;

.field public final mVibratorLock:Ljava/lang/Object;

.field public final mVibratorStateListeners:Landroid/util/SparseArray;

.field public final mVibratorTokens:Ljava/util/Map;

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

.field public final mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

.field public final mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

.field public final mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$monBootPhase(Lcom/android/server/input/InputManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService;->onBootPhase(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserSwitching(Lcom/android/server/input/InputManagerService;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "InputManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/input/InputManagerService;->mHighHysteresis:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/input/InputManagerService;->mLowHysteresis:[F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    return-void

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x43200000    # 160.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x43160000    # 150.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/android/server/input/InputManagerService$Injector;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/input/InputManagerService$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V

    const-class v1, Landroid/os/PermissionEnforcer;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PermissionEnforcer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/input/InputManagerService;-><init>(Lcom/android/server/input/InputManagerService$Injector;Landroid/os/PermissionEnforcer;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/InputManagerService$Injector;Landroid/os/PermissionEnforcer;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Landroid/hardware/input/IInputManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    new-instance v2, Lcom/android/server/input/PersistentDataStore;

    new-instance v3, Lcom/android/server/input/PersistentDataStore$Injector;

    invoke-direct {v3}, Lcom/android/server/input/PersistentDataStore$Injector;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/server/input/PersistentDataStore;-><init>(Lcom/android/server/input/PersistentDataStore$Injector;)V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/view/InputDevice;

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/input/InputKeyCounter;

    invoke-direct {v4}, Lcom/android/server/input/InputKeyCounter;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    const/4 v5, 0x2

    iput v5, v0, Lcom/android/server/input/InputManagerService;->mFoldingState:I

    iput v5, v0, Lcom/android/server/input/InputManagerService;->mSubFoldingState:I

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    const/4 v5, 0x4

    iput v5, v0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    const/4 v6, 0x1

    iput v6, v0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    iput-object v7, v0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/input/InputManagerService;->mDexLock:Ljava/lang/Object;

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mBackKeyDownAdjusted:Z

    const/4 v9, -0x1

    iput v9, v0, Lcom/android/server/input/InputManagerService;->mImeTargetDisplayIdForExternalDesktop:I

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    new-instance v10, Lcom/android/server/input/InputManagerService$5;

    invoke-direct {v10, v0}, Lcom/android/server/input/InputManagerService$5;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v7, v0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    iput v9, v0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    iput v9, v0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    new-instance v9, Lcom/android/server/input/InputManagerService$2;

    const/4 v10, 0x5

    invoke-direct {v9, v0, v10}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v9, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiActionReceiver:Lcom/android/server/input/InputManagerService$2;

    iput v3, v0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    new-instance v10, Lcom/android/server/input/InputManagerService$10;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v10, v0, Lcom/android/server/input/InputManagerService;->mFoldingAngleListener:Lcom/android/server/input/InputManagerService$10;

    new-instance v10, Lcom/android/server/input/InputManagerService$10;

    const/4 v11, 0x1

    invoke-direct {v10, v0, v11}, Lcom/android/server/input/InputManagerService$10;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v10, v0, Lcom/android/server/input/InputManagerService;->mSubFoldingAngleListener:Lcom/android/server/input/InputManagerService$10;

    new-instance v13, Lcom/android/server/input/InputManagerService$2;

    const/4 v10, 0x1

    invoke-direct {v13, v0, v10}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v13, v0, Lcom/android/server/input/InputManagerService;->mDeviceBlockReceiver:Lcom/android/server/input/InputManagerService$2;

    new-instance v10, Lcom/android/server/input/InputManagerService$2;

    const/4 v11, 0x2

    invoke-direct {v10, v0, v11}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v10, v0, Lcom/android/server/input/InputManagerService;->mBroadcastReceiver:Lcom/android/server/input/InputManagerService$2;

    iput-boolean v3, v0, Lcom/android/server/input/InputManagerService;->mIsKidsMode:Z

    new-instance v11, Lcom/android/server/input/InputManagerService$2;

    const/4 v12, 0x3

    invoke-direct {v11, v0, v12}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iput-object v11, v0, Lcom/android/server/input/InputManagerService;->mKidsModeReceiver:Lcom/android/server/input/InputManagerService$2;

    invoke-static {}, Lcom/android/server/input/InputManagerService;->loadStaticInputPortAssociations()Ljava/util/Map;

    move-result-object v12

    iput-object v12, v0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    iget-object v15, v1, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v15, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v14, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v12, v0, v14}, Lcom/android/server/input/InputManagerService$InputManagerHandler;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V

    iput-object v12, v0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v14, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-direct {v14, v0, v3}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)V

    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    new-instance v3, Lcom/android/server/input/InputSettingsObserver;

    invoke-direct {v3, v15, v12, v0, v14}, Lcom/android/server/input/InputSettingsObserver;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService$InputManagerHandler;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager;

    move/from16 v20, v6

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v15, v14, v2, v6}, Lcom/android/server/input/KeyboardLayoutManager;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    new-instance v3, Lcom/android/server/input/debug/TouchpadDebugViewController;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v15, v6, v0}, Lcom/android/server/input/debug/TouchpadDebugViewController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/InputManagerService;)V

    iput-object v3, v0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    move-object/from16 v16, v14

    new-instance v14, Lcom/android/server/input/BatteryController;

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    new-instance v5, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-direct {v5, v15, v3}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/input/BatteryController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V

    move-object/from16 v3, v16

    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    new-instance v5, Lcom/android/server/input/SysfsNodeMonitor;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    iget-object v14, v1, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/InputManagerService$1;

    invoke-direct {v5, v15, v3, v6, v14}, Lcom/android/server/input/SysfsNodeMonitor;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Landroid/os/Looper;Lcom/android/server/input/InputManagerService$1;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

    new-instance v5, Lcom/android/server/input/KeyboardBacklightController;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    new-instance v7, Lcom/android/server/input/KeyboardBacklightController$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct {v5, v6, v3, v14, v7}, Lcom/android/server/input/KeyboardBacklightController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/KeyboardBacklightController$AnimatorFactory;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    new-instance v5, Lcom/android/server/input/StickyModifierStateController;

    invoke-direct {v5}, Lcom/android/server/input/StickyModifierStateController;-><init>()V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    new-instance v18, Lcom/android/server/input/InputDataStore;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/input/InputDataStore;-><init>()V

    new-instance v14, Lcom/android/server/input/KeyGestureController;

    iget-object v5, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    new-instance v19, Lcom/android/server/input/KeyGestureController$Injector;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/input/KeyGestureController$Injector;-><init>()V

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v19}, Lcom/android/server/input/KeyGestureController;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V

    iput-object v14, v0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    new-instance v5, Lcom/android/server/input/KeyboardLedController;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v15, v6, v3}, Lcom/android/server/input/KeyboardLedController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/input/NativeInputManagerService$NativeImpl;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    new-instance v5, Lcom/android/server/input/KeyRemapper;

    iget-object v6, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v15, v3, v2, v6}, Lcom/android/server/input/KeyRemapper;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    new-instance v5, Lcom/android/server/input/KeyboardGlyphManager;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v5, v15, v1}, Lcom/android/server/input/KeyboardGlyphManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    new-instance v1, Lcom/android/server/input/PointerIconCache;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v1, v15, v3, v5}, Lcom/android/server/input/PointerIconCache;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    new-instance v1, Lcom/android/server/input/GamePadRemapper;

    invoke-direct {v1, v2}, Lcom/android/server/input/GamePadRemapper;-><init>(Lcom/android/server/input/PersistentDataStore;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Initializing input manager, mUseDevInputEventForAudioJack="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104035d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mDoubleTouchGestureEnableFile:Ljava/io/File;

    const-string/jumbo v1, "input_native_boot"

    const-string/jumbo v2, "velocitytracker_strategy"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    new-instance v1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-direct {v1, v0}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    const-class v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v2, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v15, v10, v1, v2, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v14, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v16, v12

    move-object v12, v15

    const-string/jumbo v15, "com.samsung.android.permission.SEM_SET_DEVICE_BLOCK"

    const/16 v17, 0x4

    invoke-virtual/range {v12 .. v17}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-object v15, v12

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    const/16 v19, 0x4

    move-object v14, v15

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object v15, v11

    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-object v15, v14

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v15, v9, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/input/ToastDialog;

    invoke-direct {v1, v15}, Lcom/android/server/input/ToastDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    new-instance v2, Lcom/android/server/input/ControlWakeKey;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string v3, "/sys/power/volkey_wakeup"

    const-string v5, "/sys/class/sec/ap_pmic/volkey_wakeup"

    const-string v6, "116,172"

    iput-object v15, v2, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v2, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    move/from16 v9, v20

    invoke-virtual {v2, v6, v9}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(Ljava/lang/String;Z)V

    const-string v6, "114"

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "115"

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    invoke-static {v3, v9}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    invoke-static {v5, v9}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    sget-boolean v2, Lcom/android/server/input/InputManagerService;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {v2, v15, v0, v1, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const-string/jumbo v1, "power"

    invoke-virtual {v15, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "InputManager.mSharedKeyWakeLock"

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput v2, v0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    :cond_3
    monitor-enter v8

    :try_start_0
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v15, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static flatten(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getExcludedDeviceNames()[Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    aput-object v5, v2, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v2, v3

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "etc/excluded-input-devices.xml"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v8

    const-string/jumbo v9, "devices"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "device"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v7

    goto :goto_2

    :cond_1
    :try_start_3
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not parse \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputManager"

    invoke-static {v7, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getKeyboardLayoutAssociations()[Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$dump$4(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  port: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  layout: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$5(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  port: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  display: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$6(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  port: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  display: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$7(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  port: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  uniqueId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$8(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  descriptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  uniqueId: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$dumpAssociations$9(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  port: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "  type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$flatten$12(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$setMouseScalingEnabled$2(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .locals 0

    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    return-void
.end method

.method public static synthetic lambda$setPointerIconVisible$3(ZLcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;)V
    .locals 0

    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method

.method public static synthetic lambda$unregisterKeyEventActivityListenerInternal$10(Landroid/hardware/input/IKeyEventActivityListener;Landroid/hardware/input/IKeyEventActivityListener;)Z
    .locals 0

    invoke-interface {p1}, Landroid/hardware/input/IKeyEventActivityListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0}, Landroid/hardware/input/IKeyEventActivityListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadStaticInputPortAssociations()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "etc/input-port-associations.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/android/server/input/ConfigurationProcessor;->processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private onBootPhase(I)V
    .locals 1

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUserSwitching from="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InputManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final addCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/hardware/input/InputGestureData;

    invoke-direct {v0, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/input/InputGestureManager;->addCustomInputGesture(ILandroid/hardware/input/InputGestureData;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return p2
.end method

.method public final addDeviceWirelessKeyboardShare(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "addDeviceWirelessKeyboardShare : called by not allowed app"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->addDevice(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "InputManager"

    const-string/jumbo v0, "addDeviceWirelessKeyboardShare"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    const-string v2, "%s,%s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final addPortAssociation(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "addPortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addUniqueIdAssociationByDescriptor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "addUniqueIdAssociationByDescriptor()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "addUniqueIdAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final buildTurnOnAction(I)Landroid/app/Notification$Action;
    .locals 3

    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040ee3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->createPendingIntentAction(I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public final canDispatchToDisplay(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->canDispatchToDisplay(II)Z

    move-result p0

    return p0
.end method

.method public final cancelCurrentTouch()V
    .locals 2

    const-string/jumbo v0, "android.permission.MONITOR_INPUT"

    const-string/jumbo v1, "cancelCurrentTouch()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->cancelCurrentTouch()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Requires MONITOR_INPUT permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final cancelVibrate(ILandroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget v0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    iget v1, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->cancelVibrate(II)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final changeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "changeDeviceWirelessKeyboardShare : called by not allowed app"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->changeHIDDevice(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "InputManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "changeDeviceWirelessKeyboardShare : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    if-eqz p3, :cond_3

    const-class p3, Landroid/app/ActivityManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManagerInternal;

    const-string v0, "ActivityManagerInternal should not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_0
    const-string/jumbo p0, "Permission Denial: "

    const-string p3, " from pid="

    invoke-static {p0, p2, p3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkInputFeature()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const-string v1, "InputManager"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "checkInputFeature: system not ready, return 0. caller="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemInputDeviceManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getTspSupportFeature(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "0x%X"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "checkInputFeature: features = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final checkSystemSignature(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match signature of system uid :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final clearAllModifierKeyRemappings()V
    .locals 2

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->clearAllModifierKeyRemappings_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final closeLightSession(ILandroid/os/IBinder;)V
    .locals 5

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LightSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string/jumbo v4, "not registered"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    new-instance v4, Landroid/hardware/lights/LightState;

    invoke-direct {v4, v2}, Landroid/hardware/lights/LightState;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    iget-object v1, v1, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/InputManagerService$LightSession;

    iget-object v1, p2, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    iget-object p2, p2, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V

    const-string p0, "InputManager"

    const-string/jumbo p1, "connectByBtDevice"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final controlSpenWithToken(Landroid/os/IBinder;Z)V
    .locals 8

    const-string/jumbo v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string/jumbo v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "spenContolToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v0, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    const-string/jumbo v7, "sec_e-pen"

    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v5, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    const-string v3, "InputManager"

    if-ne v0, v2, :cond_2

    const-string/jumbo p0, "not find spen device"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "call controlSpenWithToken by pid "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->enableInputDevice(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    return-void

    :cond_3
    const-string/jumbo p0, "disable spen by other or already enabled or call first time after booting"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_0
    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/input/InputManagerService;)V

    invoke-interface {p1, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget p2, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    invoke-virtual {p0, p2}, Lcom/android/server/input/InputManagerService;->disableInputDevice(I)V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    return-void

    :catch_0
    const-string p0, "Client died before control spen"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires DISABLE_INPUT_DEVICE permission spen"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createInputChannel(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const v0, 0xffff

    invoke-interface {p0, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    const-string v0, ":settings:fragment_args_key"

    const-string/jumbo v1, "increse_touch_sensetivity"

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/high16 v2, 0x4000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final createPendingIntentAction(I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.action.SHOWING_TOUCH_SENSITIVITY_NOTI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "channelId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;IIII)Landroid/view/InputChannel;
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p2, p7}, Lcom/android/server/input/NativeInputManagerService;->createInputChannel(Ljava/lang/String;I)Landroid/view/InputChannel;

    move-result-object p7

    :try_start_0
    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p7}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    invoke-virtual {p7}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    new-instance p0, Lcom/android/server/input/GestureMonitorSpyWindow;

    move v3, p6

    move-object p6, p3

    move p3, p4

    move p4, p5

    move p5, v3

    invoke-direct/range {p0 .. p7}, Lcom/android/server/input/GestureMonitorSpyWindow;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/view/SurfaceControl;Landroid/view/InputChannel;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Landroid/view/InputChannel;

    invoke-direct {p0}, Landroid/view/InputChannel;-><init>()V

    invoke-virtual {p7, p0}, Landroid/view/InputChannel;->copyTo(Landroid/view/InputChannel;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    const-string p0, "InputManager"

    const-string p1, "Client died before \'"

    const-string p3, "\' could be created."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v3, v3

    mul-int/lit8 v4, v3, 0x2

    new-array v4, v4, [I

    move v5, v1

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v5, v3, :cond_6

    iget-object v8, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v8, v8, v5

    mul-int/lit8 v9, v5, 0x2

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v10

    aput v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v10

    aput v10, v4, v9

    sget-boolean v9, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "InputManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " generation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/view/InputDevice;->getGeneration()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v8}, Landroid/view/InputDevice;->getVendorId()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/InputDevice;->getProductId()I

    move-result v10

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    const/16 v11, 0x4e8

    if-ne v9, v11, :cond_3

    const v9, 0xa035

    if-ne v10, v9, :cond_3

    move v6, v7

    :cond_3
    const/16 v7, 0x401

    invoke-virtual {v8, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "Test)"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-virtual {v8}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/server/input/InputManagerService;->containsInputDeviceWithDescriptor([Landroid/view/InputDevice;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, v1

    :goto_2
    if-ge p1, v2, :cond_7

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    invoke-interface {v3, v4}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Failed to notify process "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " that input devices changed, assuming it died."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "InputManager"

    invoke-static {v8, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->binderDied()V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempInputDevicesChangedListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    if-eq v6, p1, :cond_9

    iput-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0, v6}, Lcom/android/server/input/InputManagerService;->wakeUpWhenPogoConnected(Z)V

    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    goto :goto_4

    :cond_8
    iput-boolean v7, p0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v0, v1

    :goto_5
    if-ge v0, p1, :cond_b

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-virtual {v2}, Landroid/view/InputDevice;->getVendorId()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/InputDevice;->getProductId()I

    move-result v2

    check-cast v3, Lcom/android/server/wm/InputManagerCallback;

    iget-object v3, v3, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "com.samsung.android.game.gametools"

    const-string/jumbo v6, "PhoneWindowManagerExt"

    :try_start_2
    iget-object v7, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v7, :cond_a

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "start service game TOOLS: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.game.gametools.GAMEPAD_INTENTSERVICE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "DEVICE_VID"

    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "DEVICE_PID"

    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "CONNECTED"

    const-string v4, "DEVICE_ACTION"

    invoke-virtual {v6, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_6

    :cond_a
    const-string v2, "GameBooster is disabled"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GameBooster is not installed, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_b
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTempGamePads:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void

    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final deliverLidStateChanged(JZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempLidStateChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/ISemLidStateChangedListener;->onLidStateChanged(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that lid state changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final deliverMultiFingerGesture(II)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempMultiFingerGestureListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mListener:Landroid/hardware/input/IMultiFingerGestureListener;

    invoke-interface {v3, p1, p2}, Landroid/hardware/input/IMultiFingerGestureListener;->onMultiFingerGesture(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that multi finge gesture was made, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final deliverPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempPointerIconChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mListener:Landroid/hardware/input/IPointerIconChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/hardware/input/IPointerIconChangedListener;->onPointerIconChanged(ILandroid/view/PointerIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that pointer icon changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final deliverSwitchEventChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempSwitchEventChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mListener:Landroid/hardware/input/ISwitchEventChangedListener;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/input/ISwitchEventChangedListener;->onSwitchEventChanged(IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that switch event changed was made, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final deliverTabletModeChanged(JZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempTabletModeChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mListener:Landroid/hardware/input/ITabletModeChangedListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/ITabletModeChangedListener;->onTabletModeChanged(JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that tablet mode changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    iput v1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mTempWirelessKeyboardShareChangedListenersToNotify:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v4, p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mListener:Landroid/hardware/input/IWirelessKeyboardShareChangedListener;

    invoke-interface {v4, v2, v3, p1, p2}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to notify process "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p3, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " that wireless keyboard share changed, assuming it died."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;->binderDied()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :goto_4
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final disableInputDevice(I)V
    .locals 2

    const-string/jumbo v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string/jumbo v1, "disableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->disableInputDevice(I)V

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    const-string p0, "InputManager"

    const-string/jumbo p1, "disable spen after calling controlSpenWithToken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final disableSensor(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->disableSensor(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dispatchUnhandledKey(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/input/InputManagerService;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v3, v5, v6}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/KeyCharacterMap$FallbackAction;

    :goto_1
    if-nez v3, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit16 v6, v6, 0x400

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    iget v14, v3, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v15

    iget v4, v3, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v20

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v16, v4

    move/from16 v19, v6

    invoke-static/range {v9 .. v22}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v4

    move/from16 v6, p3

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/input/InputManagerService;->interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/KeyEvent;->recycle()V

    const/4 v4, 0x0

    :cond_5
    if-eqz v7, :cond_6

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v4

    :cond_6
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_7

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v3}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    :cond_7
    return-object v4
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string p3, "InputManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p3, "INPUT MANAGER (dumpsys input)\n"

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p3}, Lcom/android/server/input/NativeInputManagerService;->dump()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string p3, "Input Manager Service (Java) State:"

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpAssociations(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Listeners: "

    const-string/jumbo v1, "State: Polling = "

    new-instance v2, Landroid/util/IndentingPrintWriter;

    invoke-direct {v2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p3, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "BatteryController:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p3, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Interactive = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " battery listeners"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Monitors: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " monitors"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v1, v0

    :goto_1
    iget-object v4, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KbdBacklightController: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyboard backlights"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v0

    :goto_2
    iget-object v3, p3, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p3, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklights:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyboardLedController: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " keyboard mic mute lights"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v0

    :goto_3
    iget-object v4, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-string v5, ": "

    const-string v6, " "

    if-ge v2, v4, :cond_5

    iget-object v4, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithMicMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/input/KeyboardLedController;->getKeyboardMicMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/lights/Light;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keyboard volume mute lights"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v0

    :goto_4
    iget-object v3, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p3, Lcom/android/server/input/KeyboardLedController;->mKeyboardsWithVolumeMuteLed:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/input/KeyboardLedController;->getKeyboardVolumeMuteLight(Landroid/view/InputDevice;)Landroid/hardware/lights/Light;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/lights/Light;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {p3}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMapDataList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyboardGlyphManager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " glyph maps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_7
    :goto_5
    if-ge v0, v2, :cond_8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    sget-boolean v4, Lcom/android/server/input/KeyboardGlyphManager;->DEBUG:Z

    if-eqz v4, :cond_7

    invoke-virtual {p3, v3}, Lcom/android/server/input/KeyboardGlyphManager;->loadGlyphMap(Lcom/android/server/input/KeyboardGlyphManager$KeyGlyphMapData;)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p3, p1}, Lcom/android/server/input/KeyGestureController;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p3, p1}, Lcom/android/server/input/KeyboardLayoutManager;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "Keyboard layout Associations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :cond_9
    :goto_6
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p3, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p3}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "Key Remapping:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    monitor-enter p0

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mBlockDeviceMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_b

    const-string p1, "      TSP blocked by:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :catchall_2
    move-exception p1

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_c

    const-string p1, "      TKEY blocked by:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "          "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    monitor-exit p0

    return-void

    :goto_a
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :goto_b
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_c
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final dumpAssociations(Landroid/util/IndentingPrintWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Static Associations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "Runtime Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Unique Id Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Unique Id Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "Type Associations:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_4
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpDisplayInputPropertiesValues(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "mAdditionalDisplayInputProperties:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "<none>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mouseScalingEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pointerIconVisible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final dumpSpyWindowGestureMonitors(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "Gesture Monitors (implemented as spy windows):"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/GestureMonitorSpyWindow;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/server/input/GestureMonitorSpyWindow;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enableInputDevice(I)V
    .locals 2

    const-string/jumbo v0, "android.permission.DISABLE_INPUT_DEVICE"

    const-string/jumbo v1, "enableInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableInputDevice(I)V

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ne p0, p1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "enable spen after calling controlSpenWithToken"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires DISABLE_INPUT_DEVICE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enableSensor(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->enableSensor(IIII)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforceManageKeyGesturePermission()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_0

    const-wide/32 v2, 0x100000

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.MANAGE_KEY_GESTURES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Managing Key Gestures requires the following permission: android.permission.MANAGE_KEY_GESTURES"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final filterInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0, p1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final filterPointerMotion(FFFFI)[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "filterCursor is invoked but no callback is registered."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final flushSensor(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->flushSensor(II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final forceFadeIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->forceFadeIcon(I)V

    return-void
.end method

.method public final getAppLaunchBookmarks()[Landroid/hardware/input/AidlInputGestureData;
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/input/AidlInputGestureData;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;
    .locals 6

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onPoll(J)V

    invoke-virtual {v3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentSwitchEventState(IZ)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move p2, v1

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    shl-int v2, v0, v1

    and-int v3, p1, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 v4, -0x1

    const/16 v5, -0x100

    invoke-interface {v3, v4, v5, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v3

    if-ne v3, v0, :cond_0

    or-int/2addr p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    return p0

    :cond_3
    return v1
.end method

.method public final getCustomInputGestures(II)[Landroid/hardware/input/AidlInputGestureData;
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Landroid/hardware/input/InputGestureData$Filter;->of(I)Landroid/hardware/input/InputGestureData$Filter;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputGestureManager;->getCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/hardware/input/AidlInputGestureData;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object v0

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getDefaultPointerIcon()Landroid/view/PointerIcon;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    return-object p0
.end method

.method public final getDeviceAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceTypeAssociations()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getDisplayIdForDex()I
    .locals 5

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getDisplayIdForPointerIcon()I
    .locals 0

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    return p0
.end method

.method public final getDoubleTapTimeout()I
    .locals 0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    return p0
.end method

.method public final getForcedDefaultPointerIcon()Landroid/view/PointerIcon;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    return-object p0
.end method

.method public final getGamePadRemapButtonAxisPolicy(Ljava/lang/String;I)I
    .locals 6

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return p2

    :cond_3
    iget-object v3, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    const/16 v0, 0x80b

    const/16 v4, 0x801

    const/16 v5, 0x800

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_4

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :pswitch_0
    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_6

    if-eq p2, v0, :cond_5

    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x80f

    goto :goto_1

    :cond_5
    :pswitch_2
    move v2, v0

    goto :goto_1

    :cond_6
    move v2, v5

    :goto_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/PersistentDataStore;->getStickForGamePadProfiles(II)I

    move-result p0

    :goto_2
    monitor-exit v3

    return p0

    :goto_3
    monitor-exit v3
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

    :pswitch_data_0
    .packed-switch 0x80e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80e
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getGamepadProfile(I)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    const-string/jumbo v0, "getProfile"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iget-object v2, v2, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v3, v3, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iget-boolean v3, v3, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    const-string/jumbo v4, "ProfileName"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ProfileUsed"

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "true"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    const-string/jumbo v3, "false"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    iget-object v5, v5, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iget-object v5, v5, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    invoke-interface {v5, v3, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v4, v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ButtonCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ToCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/input/PersistentDataStore;->getStickForGamePadProfiles(II)I

    move-result v4

    if-eq v3, v4, :cond_5

    and-int/lit16 v5, v4, 0xfff

    const v6, 0x8000

    and-int v7, v4, v6

    if-ne v7, v6, :cond_6

    const-string/jumbo v6, "true"

    goto :goto_3

    :cond_6
    const-string/jumbo v6, "false"

    :goto_3
    and-int/lit16 v7, v4, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_7

    const-string/jumbo v7, "true"

    goto :goto_4

    :cond_7
    const-string/jumbo v7, "false"

    :goto_4
    and-int/lit16 v4, v4, 0x1000

    const/16 v8, 0x1000

    if-ne v4, v8, :cond_8

    const-string/jumbo v4, "true"

    goto :goto_5

    :cond_8
    const-string/jumbo v4, "false"

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "StickCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ToCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " h="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " v="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " r="

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_9
    monitor-exit v0

    goto :goto_7

    :goto_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_a
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    const-string p1, "InputManager-GamePadRemapper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Json getProfile error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "{}"

    :goto_8
    const-string p1, "InputManager"

    const-string/jumbo v0, "getProfile "

    invoke-static {v0, p0, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getGamepadProfileIds()[I
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [I

    return-object p0

    :cond_0
    const-string/jumbo v0, "getGamepadProfileIds"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p0, v1, [I

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    if-eqz p0, :cond_3

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x5

    new-array v2, p0, [I

    :goto_0
    if-ge v1, p0, :cond_4

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-array v2, v1, [I

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getGamepadProfileIds "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getGlobalMetaState(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getGlobalMetaState(I)I

    move-result p0

    return p0
.end method

.method public final getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getHostUsiVersion(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object p0

    return-object p0
.end method

.method public final getHoverTapSlop()I
    .locals 0

    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapSlop()I

    move-result p0

    return p0
.end method

.method public final getHoverTapTimeout()I
    .locals 0

    invoke-static {}, Landroid/view/ViewConfiguration;->getHoverTapTimeout()I

    move-result p0

    return p0
.end method

.method public final getInboundQueueLength()I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getInboundQueueLength()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceBluetoothAddress_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBluetoothAddress(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The Bluetooth address of input device "

    const-string v2, " should not be invalid: address="

    invoke-static {p1, v1, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getInputDeviceIds()[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    array-length v1, v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInputDevicePath(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "getInputDevicePath : signature not match"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getInputDevicePath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getInputDevices()[Landroid/view/InputDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInputGesture(ILandroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/AidlInputGestureData;
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-static {p2}, Landroid/hardware/input/InputGestureData;->createTriggerFromAidlTrigger(Landroid/hardware/input/AidlInputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isSystemKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-virtual {p0, p2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    monitor-exit v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    if-eqz v1, :cond_3

    monitor-exit v0

    move-object p0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_4

    monitor-exit v0

    move-object p0, v2

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputGestureData;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData;->getAidlData()Landroid/hardware/input/AidlInputGestureData;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getInputPortAssociations()[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mStaticAssociations:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getInputUniqueIdAssociationsByDescriptor()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getInputUniqueIdAssociationsByPort()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->flatten(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .locals 3

    const-string/jumbo v0, "layoutDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    aget-object v1, v0, p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    invoke-static {p0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object p0, v0, p0

    invoke-static {p1, p0}, Landroid/view/KeyCharacterMap;->load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyCodeForKeyLocation(II)I
    .locals 1

    if-lez p2, :cond_1

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeForKeyLocation(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getKeyCodeState(III)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getKeyCodeState(III)I

    move-result p0

    return p0
.end method

.method public final getKeyGlyphMap(I)Landroid/hardware/input/KeyGlyphMap;
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    iget-object v0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyGlyphMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardGlyphManager;->getKeyGlyphMapInternal(I)Landroid/hardware/input/KeyGlyphMap;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/input/KeyboardGlyphManager;->mGlyphMapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p0

    sget-boolean p3, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getKeyboardLayoutForInputDevice() "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subtype = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyboardLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object p0
.end method

.method public final getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    new-instance p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public final getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object p2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    const-string p3, "KeyboardLayoutManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Overlay KLD="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    new-instance p3, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    aget-object p0, p1, p0

    if-nez p0, :cond_2

    const-string p0, "KeyboardLayoutManager"

    const-string p1, "Could not get keyboard layout with descriptor \'"

    const-string p3, "\'."

    invoke-static {p1, p2, p3, p0}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public final getLastLidEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    return-wide v0
.end method

.method public final getLidState()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v0, -0x100

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final getLightState(II)Landroid/hardware/lights/LightState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v1, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightColor(II)I

    move-result v1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->getLightPlayerId(II)I

    move-result p0

    new-instance p1, Landroid/hardware/lights/LightState;

    invoke-direct {p1, v1, p0}, Landroid/hardware/lights/LightState;-><init>(II)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLights(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLoadedPointerIcon(II)Landroid/view/PointerIcon;
    .locals 8

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->getContextForDisplayLocked(I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    invoke-static {v4}, Landroid/view/PointerIcon;->vectorFillStyleToResource(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    invoke-static {v4}, Landroid/view/PointerIcon;->vectorStrokeStyleToResource(I)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    iget-object v5, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v5

    double-to-float p1, v5

    mul-float/2addr v4, p1

    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iget-boolean p0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    invoke-static {p1, p2, p0, v4}, Landroid/view/PointerIcon;->getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLongPressTimeout()I
    .locals 0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    return p0
.end method

.method public final getModifierKeyRemapping()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->getModifierKeyRemapping_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getMousePointerSpeed()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->getMousePointerSpeed()I

    move-result p0

    return p0
.end method

.method public final getMultiFingerGestureBehavior(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "InputManager"

    const-string/jumbo v1, "getMultiFingerGestureBehavior: "

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v2, 0x6

    if-le p0, v2, :cond_1

    :cond_0
    move p0, p2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get settings "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method

.method public final getParentSurfaceForPointers(I)J
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    const-string v0, "Failed to get parent surface for pointers on display "

    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - DisplayContent not found."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :goto_0
    if-nez p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    iget-wide p0, p0, Landroid/view/SurfaceControl;->mNativeObject:J

    return-wide p0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final getPointerIconType()I
    .locals 0

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    return p0
.end method

.method public final getPointerLayer()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->getPointerLayer()I

    move-result p0

    return p0
.end method

.method public final getScanCodeState(III)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "getScanCodeState : signature not match"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getScanCodeState(III)I

    move-result p0

    return p0
.end method

.method public final getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportButtonNStick()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const-string/jumbo v1, "{}"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "getSupportButtonNStick"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "BUTTON_START"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string v2, "BUTTON_END"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "STICK_START"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/input/GamePadRemapper;->getButtonString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "STICK_END"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Json getSupportButtonNStick error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InputManager-GamePadRemapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const-string/jumbo p0, "getSupportButtonNStick "

    const-string v0, "InputManager"

    invoke-static {p0, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getSwitchState(III)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final getToolTypeForDefaultPointerIcon()I
    .locals 0

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return p0
.end method

.method public final getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 1

    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    if-nez p0, :cond_0

    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object p0, p0, p2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "InputManager"

    const-string p2, "Cannot get touch calibration."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    :cond_1
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getTouchSensitivity()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string/jumbo v2, "auto_adjust_touch"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getTouchSensitivityNotiCount()I
    .locals 1

    const-string/jumbo p0, "persist.service.touchsensitivity.noticount"

    const-string/jumbo v0, "null"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getTouchpadHardwareProperties(I)Lcom/android/server/input/TouchpadHardwareProperties;

    move-result-object p0

    return-object p0
.end method

.method public final getVelocityTrackerStrategy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object p0
.end method

.method public final getVibratorIds(I)[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getVibratorIds(I)[I

    move-result-object p0

    return-object p0
.end method

.method public final getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/input/InputManagerService$VibratorToken;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mNextVibratorTokenValue:I

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/InputManagerService$VibratorToken;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p2, v1, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getVirtualKeyQuietTimeMillis()I
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0191

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public final handleCurrentUserChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v5

    const/16 v6, 0x19

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_0

    const/16 v0, 0x1f4

    packed-switch v5, :pswitch_data_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Received a key gesture "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " that was not registered by this handler"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    if-eqz v1, :cond_4

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v4

    invoke-static {p0, p1}, Landroid/hardware/input/InputSettings;->setAccessibilityMouseKeysEnabled(Landroid/content/Context;Z)V

    return-void

    :pswitch_1
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-static {p0, v3}, Landroid/hardware/input/InputSettings;->setAccessibilitySlowKeysThreshold(Landroid/content/Context;I)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-static {p0, v3}, Landroid/hardware/input/InputSettings;->setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V

    return-void

    :pswitch_3
    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    xor-int/2addr p1, v4

    invoke-static {p0, p1}, Landroid/hardware/input/InputSettings;->setAccessibilityStickyKeysEnabled(Landroid/content/Context;Z)V

    return-void

    :pswitch_4
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    iget-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_5
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    iget-object p1, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->toggleCapsLock(I)V

    :cond_4
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final hasKeys(II[I[Z)Z
    .locals 2

    const-string/jumbo v0, "keyCodes must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "keyExists must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p4

    array-length v1, p3

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/input/NativeInputManagerService;->hasKeys(II[I[Z)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "keyExists must be at least as large as keyCodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final increaseTouchSensitivityNotiCount()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivityNotiCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    const-string/jumbo p0, "persist.service.touchsensitivity.noticount"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final initKeyGestures()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method public final initTspCmdForSpay()V
    .locals 2

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.service.tspcmd.spay"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->isSpayFullAppInstalled()Z

    move-result v0

    sget-object v1, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/InputManagerService;->setTspEnabled(IZ)Z

    :cond_0
    return-void
.end method

.method public final injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result p0

    return p0
.end method

.method public final injectInputEventToTarget(Landroid/view/InputEvent;II)Z
    .locals 14

    move/from16 v4, p2

    move/from16 v3, p3

    const-string/jumbo v0, "android.permission.INJECT_EVENTS"

    const-string/jumbo v2, "injectInputEvent()"

    const/4 v9, 0x1

    invoke-virtual {p0, v0, v2, v9}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    if-eq v4, v0, :cond_1

    if-ne v4, v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "mode is invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const/4 v0, -0x1

    const/4 v12, 0x0

    if-eq v3, v0, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v12

    :goto_1
    :try_start_0
    instance-of v7, p1, Landroid/view/KeyEvent;

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Landroid/view/KeyEvent;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/4 v13, 0x4

    if-ne v8, v13, :cond_5

    iget-boolean v8, p0, Lcom/android/server/input/InputManagerService;->mBackKeyDownAdjusted:Z

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/server/input/InputManagerService;->mImeTargetDisplayIdForExternalDesktop:I

    if-eq v8, v0, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_3
    :goto_2
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mImeTargetDisplayIdForExternalDesktop:I

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->setDisplayId(I)V

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_3

    :cond_4
    move v0, v12

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mBackKeyDownAdjusted:Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v7, 0x7530

    const/high16 v8, 0x8000000

    move-object v1, p1

    invoke-interface/range {v0 .. v8}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_9

    if-eq p0, v9, :cond_7

    const/4 v0, 0x3

    const-string v1, "Input event injection from pid "

    const-string v2, "InputManager"

    if-eq p0, v0, :cond_6

    const-string p0, " failed."

    invoke-static {v5, v1, p0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_6
    const-string p0, " timed out."

    invoke-static {v5, v1, p0, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_7
    if-nez v2, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Injection should not result in TARGET_MISMATCH when it is not targeted into to a specific uid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "Targeted input event injection from pid "

    const-string v1, " was not directed at a window owned by uid "

    const-string v2, "."

    invoke-static {v5, v3, v0, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return v9

    :goto_4
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Injecting input events requires the caller (or the source of the instrumentation, if any) to have the INJECT_EVENTS permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final interceptFallback(Landroid/os/IBinder;Landroid/view/KeyEvent;I)Z
    .locals 7

    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/InputManagerService;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-nez p3, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/InputManagerService;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v1

    const-wide/16 v14, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/input/InputManagerService;->shouldInterceptShortcuts(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-wide v14

    :cond_1
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v5

    const-wide/16 v16, -0x1

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v5, v11}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    move-object/from16 v8, p1

    move-wide/from16 v28, v14

    goto/16 :goto_21

    :cond_2
    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, v1, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v6, v2}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    sub-long v16, v6, v4

    goto :goto_0

    :cond_3
    iget-object v4, v1, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v1, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    const v8, 0x11003

    and-int v21, v7, v8

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_5

    move v7, v13

    goto :goto_1

    :cond_5
    move v7, v12

    :goto_1
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v24

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v18

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    move v6, v13

    goto :goto_2

    :cond_6
    move v6, v12

    :goto_2
    iget-boolean v10, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v10, :cond_7

    invoke-static {v5}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v10

    if-nez v10, :cond_7

    iput-boolean v12, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    :cond_7
    iget-boolean v10, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v10, :cond_8

    invoke-static {v5}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v5}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v10

    if-nez v10, :cond_8

    iput-boolean v12, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    :cond_8
    invoke-virtual {v11}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/server/policy/SystemKeyManager;->getInstance()Lcom/android/server/policy/SystemKeyManager;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/server/policy/SystemKeyManager;->hasMetaKeyPass()Z

    move-result v10

    goto :goto_3

    :cond_9
    move v10, v12

    :goto_3
    if-eqz v10, :cond_a

    const-string v5, "KeyGestureController"

    const-string/jumbo v6, "requested hasMetaKeyPass"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p1

    move/from16 v30, v12

    move-wide/from16 v28, v14

    move v12, v2

    move v14, v3

    move-object v15, v4

    goto/16 :goto_20

    :cond_a
    iget-object v10, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v27, v8

    const/16 v8, 0x54

    if-eqz v19, :cond_b

    sget-object v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    move-wide/from16 v28, v14

    goto/16 :goto_9

    :cond_b
    move-wide/from16 v28, v14

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v14

    if-ne v14, v8, :cond_e

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-nez v14, :cond_c

    iput-boolean v13, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    iput-boolean v12, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    goto :goto_4

    :cond_c
    iput-boolean v12, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    iget-boolean v14, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    if-eqz v14, :cond_d

    iput-boolean v12, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    sget-object v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->CONSUME_KEY:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    goto/16 :goto_9

    :cond_d
    :goto_4
    sget-object v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_f

    sget-object v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->DO_NOTHING:Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    goto/16 :goto_9

    :cond_f
    new-instance v14, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v19

    and-int v8, v19, v27

    iget-boolean v12, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    if-eqz v12, :cond_11

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12, v15}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v12

    if-eqz v12, :cond_10

    iput-boolean v13, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mConsumeSearchKeyUp:Z

    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mSearchKeyShortcutPending:Z

    goto :goto_7

    :cond_10
    :goto_5
    move-object/from16 v8, v20

    :goto_6
    const/4 v12, 0x0

    goto :goto_8

    :cond_11
    if-nez v8, :cond_13

    sget-object v8, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyRoles:Landroid/util/SparseArray;

    invoke-virtual {v8, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/android/server/input/AppLaunchShortcutManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    invoke-static {v8}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v8

    goto :goto_6

    :cond_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {v10}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v8

    goto :goto_6

    :cond_13
    :goto_7
    if-nez v15, :cond_14

    goto :goto_5

    :cond_14
    iget-object v10, v10, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-static {v15, v8}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v8

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/input/InputGestureData;

    if-nez v8, :cond_15

    goto :goto_5

    :cond_15
    invoke-virtual {v8}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v8

    goto :goto_6

    :goto_8
    invoke-direct {v14, v12, v8}, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;-><init>(ZLandroid/hardware/input/AppLaunchData;)V

    move-object v10, v14

    :goto_9
    iget-boolean v8, v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->consumed:Z

    if-eqz v8, :cond_16

    move-object/from16 v8, p1

    move v12, v2

    move v14, v3

    move-object v15, v4

    :goto_a
    move/from16 v30, v13

    goto/16 :goto_20

    :cond_16
    iget-object v10, v10, Lcom/android/server/input/AppLaunchShortcutManager$InterceptKeyResult;->appLaunchData:Landroid/hardware/input/AppLaunchData;

    if-eqz v10, :cond_17

    move v8, v3

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x33

    const/4 v6, 0x2

    const/4 v9, 0x0

    move v12, v2

    move-object v15, v4

    move v14, v8

    move/from16 v2, v18

    move/from16 v4, v21

    move/from16 v7, v24

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_a

    :cond_17
    move-object/from16 v8, p1

    move v12, v2

    move v14, v3

    move-object v15, v4

    move/from16 v2, v18

    move/from16 v4, v21

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    const/high16 v18, 0x10000

    and-int v10, v10, v18

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v18

    if-nez v18, :cond_19

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v18

    if-eqz v18, :cond_18

    goto :goto_b

    :cond_18
    const/16 v18, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    move/from16 v18, v13

    :goto_c
    iget-object v13, v1, Lcom/android/server/input/KeyGestureController;->mShortcutMap:Ljava/util/HashMap;

    move/from16 v19, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v18, :cond_1a

    iget-object v2, v1, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v13, v1, Lcom/android/server/input/KeyGestureController;->mShortcutMap:Ljava/util/HashMap;

    move/from16 v21, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v32, v6

    const-string v6, ""

    invoke-virtual {v13, v4, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "shortcutValue= "

    const-string v6, " / "

    const-string v13, "KeyGestureController"

    invoke-static {v10, v3, v4, v6, v13}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    if-eqz v10, :cond_1b

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    const/4 v2, 0x1

    goto :goto_d

    :cond_1a
    move/from16 v21, v4

    move/from16 v32, v6

    :cond_1b
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_1d

    if-eqz v7, :cond_1c

    const-string v2, "KeyGestureController"

    const-string v3, "KeyCode= "

    const-string v4, " don\'t consumed by KeyGestureController"

    invoke-static {v5, v3, v4, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_e
    const/16 v30, 0x0

    goto/16 :goto_20

    :cond_1d
    if-eqz v32, :cond_1f

    iget-object v2, v1, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_f

    :cond_1e
    sget-object v4, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int v6, v6, v27

    iget-object v2, v2, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-static {v3, v6}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/hardware/input/InputGestureData;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_f
    if-eqz v20, :cond_1f

    move/from16 v2, v19

    filled-new-array {v5}, [I

    move-result-object v19

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x1

    new-array v6, v5, [J

    const/16 v30, 0x0

    aput-wide v3, v6, v30

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v26

    const/16 v23, 0x2

    const/16 v25, 0x0

    move/from16 v18, v2

    move-object/from16 v20, v6

    invoke-static/range {v18 .. v26}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    :goto_10
    const/16 v30, 0x1

    goto/16 :goto_20

    :cond_1f
    move/from16 v2, v19

    goto :goto_11

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_11
    const/16 v3, 0x75

    const/16 v4, 0x3d

    const/16 v6, 0x39

    if-eq v5, v6, :cond_41

    const/16 v10, 0x3a

    if-eq v5, v10, :cond_41

    if-eq v5, v4, :cond_3d

    const/16 v10, 0xb0

    if-eq v5, v10, :cond_3b

    const/16 v10, 0xbb

    if-eq v5, v10, :cond_34

    const/16 v10, 0xcc

    if-eq v5, v10, :cond_32

    const/16 v10, 0xe7

    if-eq v5, v10, :cond_31

    const/16 v10, 0x11c

    if-eq v5, v10, :cond_30

    const/16 v10, 0x13e

    if-eq v5, v10, :cond_2f

    const/16 v10, 0x142

    if-eq v5, v10, :cond_2e

    const/16 v10, 0x47

    if-eq v5, v10, :cond_2d

    const/16 v10, 0x48

    if-eq v5, v10, :cond_2d

    const/16 v10, 0x53

    if-eq v5, v10, :cond_2c

    const/16 v10, 0x54

    if-eq v5, v10, :cond_2a

    if-eq v5, v3, :cond_26

    const/16 v10, 0x76

    if-eq v5, v10, :cond_26

    const/16 v3, 0x144

    if-eq v5, v3, :cond_25

    const/16 v3, 0x145

    if-eq v5, v3, :cond_24

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    :cond_20
    :goto_12
    const/4 v7, 0x0

    goto/16 :goto_1d

    :pswitch_0
    if-eqz v32, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_21
    :goto_13
    move-object/from16 v8, p1

    goto :goto_10

    :pswitch_1
    const-string v2, "KeyGestureController"

    const-string v3, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_2
    if-nez v7, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x11

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_13

    :pswitch_3
    if-eqz v7, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0xf

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_13

    :pswitch_4
    if-eqz v7, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_13

    :pswitch_5
    if-eqz v7, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v4, 0xdd

    if-ne v5, v4, :cond_22

    const/16 v4, 0xd

    :goto_14
    move v5, v4

    goto :goto_15

    :cond_22
    const/16 v4, 0xe

    goto :goto_14

    :goto_15
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_13

    :pswitch_6
    const-string v2, "KeyGestureController"

    const-string v3, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_7
    if-nez v7, :cond_20

    filled-new-array {v5}, [I

    move-result-object v19

    const/4 v3, 0x0

    new-array v4, v3, [J

    const/16 v22, 0x19

    const/16 v23, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v18, v2

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v26}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    move/from16 v2, v18

    goto/16 :goto_12

    :pswitch_8
    move/from16 v18, v2

    if-nez v7, :cond_23

    iget-boolean v2, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    filled-new-array {v4}, [I

    move-result-object v3

    const/16 v5, 0x36

    const/4 v6, 0x2

    const/16 v4, 0x1000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v2, v18

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :cond_24
    move/from16 v7, v24

    if-eqz v32, :cond_21

    filled-new-array {v3}, [I

    move-result-object v3

    const/16 v5, 0x35

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_25
    move/from16 v7, v24

    if-eqz v32, :cond_21

    filled-new-array {v3}, [I

    move-result-object v3

    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_26
    if-eqz v7, :cond_28

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto/16 :goto_13

    :cond_27
    const/4 v4, 0x1

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    iput-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto/16 :goto_13

    :cond_28
    const/4 v7, 0x0

    iget-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_29

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const/16 v5, 0x19

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_29
    iget-boolean v3, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v3, :cond_21

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-nez v9, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x15

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_2a
    move/from16 v7, v24

    if-eqz v32, :cond_2b

    iget v3, v1, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x16

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :cond_2b
    move/from16 v24, v7

    goto/16 :goto_12

    :cond_2c
    if-nez v7, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_2d
    if-nez v7, :cond_20

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v2, "KeyGestureController"

    const-string v3, "KEYCODE_LEFT_BRACKET/KEYCODE_RIGHT_BRACKET does not need to be handled here."

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_2e
    if-eqz v32, :cond_21

    filled-new-array {v10}, [I

    move-result-object v3

    const/16 v5, 0x4b

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_2f
    move/from16 v7, v24

    if-eqz v32, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_30
    move/from16 v7, v24

    if-eqz v32, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x15

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_31
    const-string v2, "KeyGestureController"

    const-string v3, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_32
    move/from16 v7, v24

    if-eqz v32, :cond_33

    filled-new-array {v5}, [I

    move-result-object v3

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    const/16 v5, 0x17

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_33
    :goto_16
    move-object/from16 v8, p1

    goto/16 :goto_e

    :cond_34
    if-eqz v32, :cond_35

    filled-new-array {v5}, [I

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_17

    :cond_35
    if-nez v7, :cond_36

    filled-new-array {v5}, [I

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_17

    :cond_36
    if-eqz v7, :cond_37

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_37

    filled-new-array {v5}, [I

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_37
    :goto_17
    iget-object v2, v1, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v2, Lcom/android/server/wm/InputManagerCallback;

    iget-object v2, v2, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->canDispatchingSystemKeyEvent(I)Z

    move-result v4

    const-string/jumbo v5, "PhoneWindowManagerExt"

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_38

    const-string/jumbo v2, "interceptSamsungKeyBeforeDispatching, system key requested, keyCode="

    invoke-static {v3, v2, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_18
    move-wide v2, v6

    goto :goto_1a

    :cond_38
    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v8, v4

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v8, :cond_3a

    aget v10, v4, v9

    iget-object v13, v2, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v13, v10, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v10

    if-eqz v10, :cond_39

    const-string/jumbo v2, "interceptSamsungKeyBeforeDispatching, keyCustomization requested, keyCode="

    invoke-static {v3, v2, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_39
    const/16 v31, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_3a
    move-wide/from16 v2, v28

    :goto_1a
    cmp-long v2, v2, v6

    if-nez v2, :cond_21

    goto/16 :goto_16

    :cond_3b
    move/from16 v7, v24

    if-eqz v32, :cond_21

    iget v3, v1, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-nez v3, :cond_3c

    filled-new-array {v5}, [I

    move-result-object v3

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_3c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_13

    :cond_3d
    move/from16 v7, v24

    if-eqz v32, :cond_2b

    iget-boolean v3, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-nez v3, :cond_2b

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, -0xc2

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    const/16 v4, 0x1002

    invoke-static {v3, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_3e
    iget-object v3, v1, Lcom/android/server/input/KeyGestureController;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTopFocusedDisplayId()I

    move-result v4

    if-nez v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v4

    :try_start_2
    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v3}, Lcom/android/server/wm/MultiTaskingController;->handleAltTabKeyIfNeededLocked()Z

    move-result v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    move/from16 v30, v3

    goto :goto_1b

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_3f
    const/16 v30, 0x0

    :goto_1b
    if-eqz v30, :cond_40

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mAltTabConsumedBySplit:Z

    move-object/from16 v8, p1

    move/from16 v30, v4

    goto/16 :goto_20

    :cond_40
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    filled-new-array {v5}, [I

    move-result-object v3

    const/16 v5, 0x36

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :cond_41
    if-eqz v7, :cond_43

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    if-eqz v3, :cond_42

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto/16 :goto_1d

    :cond_42
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    goto/16 :goto_1d

    :cond_43
    const/4 v7, 0x0

    iget-boolean v8, v1, Lcom/android/server/input/KeyGestureController;->mAltTabConsumedBySplit:Z

    if-eqz v8, :cond_45

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mAltTabConsumedBySplit:Z

    iget-object v7, v1, Lcom/android/server/input/KeyGestureController;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v7, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8

    :try_start_4
    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-object v9, v7, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_44

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "releaseAltTabKeyStateLocked:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "MultiTaskingController"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v7, Lcom/android/server/wm/MultiTaskingController;->mFocusableTaskIds:Ljava/util/Queue;

    check-cast v7, Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V

    :cond_44
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1c

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_45
    :goto_1c
    iget-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v7, :cond_46

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    filled-new-array {v4}, [I

    move-result-object v3

    const/16 v5, 0x36

    const/4 v6, 0x2

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :cond_46
    const/4 v7, 0x0

    iget-boolean v4, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v4, :cond_47

    iput-boolean v7, v1, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const/16 v5, 0x19

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :cond_47
    :goto_1d
    iget-object v3, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    and-int v4, v4, v27

    int-to-long v8, v4

    cmp-long v4, v8, v28

    if-nez v4, :cond_48

    goto :goto_1f

    :cond_48
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    move-wide/from16 v18, v8

    int-to-long v7, v4

    const/16 v4, 0x20

    shl-long v9, v18, v4

    or-long v6, v7, v9

    iget-object v4, v3, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IShortcutService;

    if-eqz v4, :cond_49

    :try_start_6
    invoke-interface {v4, v6, v7}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1e

    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Shortcut key service not found, deleting shortcut code: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "AppShortcutManager"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v3, Lcom/android/server/input/AppLaunchShortcutManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    :goto_1e
    const/4 v7, 0x1

    goto :goto_1f

    :cond_49
    const/4 v7, 0x0

    :goto_1f
    if-eqz v7, :cond_4a

    goto/16 :goto_13

    :cond_4a
    if-eqz v32, :cond_33

    sget-object v3, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-object v4, v1, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v6, v1, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v4, v11, v6}, Lcom/android/server/input/InputGestureManager;->getCustomGestureForKeyEvent(Landroid/view/KeyEvent;I)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v4, :cond_4b

    goto/16 :goto_16

    :cond_4b
    filled-new-array {v5}, [I

    move-result-object v3

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v10

    const/4 v6, 0x2

    const/4 v9, 0x0

    move-object/from16 v8, p1

    move/from16 v4, v21

    move/from16 v7, v24

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :goto_20
    if-eqz v30, :cond_4c

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4c

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_4c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4d

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_4e

    :cond_4d
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v1, v1, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->remove(I)V

    :cond_4e
    if-eqz v2, :cond_4f

    goto :goto_21

    :cond_4f
    move-wide/from16 v16, v28

    :goto_21
    cmp-long v1, v16, v28

    if-nez v1, :cond_50

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v0, Lcom/android/server/wm/InputManagerCallback;

    move/from16 v1, p3

    invoke-virtual {v0, v8, v11, v1}, Lcom/android/server/wm/InputManagerCallback;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v16

    :cond_50
    return-wide v16

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_8
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xdb
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x131
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 8

    const-string/jumbo v0, "setNumLockState: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    new-instance v4, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, v3}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v1, Lcom/android/server/wm/InputManagerCallback;

    iget-object v1, v1, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    invoke-virtual {v1, v5, v7, v6}, Lcom/android/server/policy/PhoneWindowManagerExt;->hasRequestedActionBlockKeyEvent(IIZ)I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string/jumbo v5, "PhoneWindowManagerExt"

    const-string/jumbo v6, "interceptSamsungKeyBeforeQueueing, blockKeyPolicy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    return v4

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-boolean v5, v1, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v5

    sget-object v6, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget v7, v1, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v7, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v6

    if-nez v6, :cond_5

    sget-boolean v1, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyGestureController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignored key event ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "] for visible background user ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v4

    goto :goto_5

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_4

    const/high16 v5, 0x20000000

    and-int/2addr v5, p2

    if-eqz v5, :cond_6

    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    iget-object v6, v1, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    iget v7, v1, Lcom/android/server/input/KeyGestureController;->mFocusedDisplayId:I

    if-eqz v7, :cond_7

    iget-object v6, v1, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    :cond_7
    if-nez v6, :cond_8

    move v6, v4

    goto :goto_3

    :cond_8
    invoke-virtual {v6}, Landroid/view/Display;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/view/Display;->isOnState(I)Z

    move-result v6

    :goto_3
    iget-object v1, v1, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    if-eqz v5, :cond_9

    if-eqz v6, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v4

    :goto_4
    iget-object v6, v1, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    invoke-virtual {v1, p1, v5}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    move-result v1

    monitor-exit v6

    goto :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    if-eqz v1, :cond_b

    const/high16 v1, 0x40000

    or-int/2addr v1, p2

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-object v5, v5, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v5}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-object v5, v5, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v5}, Lcom/android/server/policy/KeyCombinationManager;->isKeyPressed()Z

    move-result v5

    if-eqz v5, :cond_a

    const/high16 v1, 0x140000

    or-int/2addr p2, v1

    goto :goto_6

    :cond_a
    move p2, v1

    :cond_b
    :goto_6
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/16 v6, 0x18

    if-eq v1, v6, :cond_c

    const/16 v6, 0x19

    if-eq v1, v6, :cond_c

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_c

    const/16 v6, 0x43a

    if-eq v1, v6, :cond_c

    const/16 v6, 0xbb

    if-eq v1, v6, :cond_c

    const/4 v6, 0x4

    if-eq v1, v6, :cond_c

    const/4 v6, 0x3

    if-ne v1, v6, :cond_d

    :cond_c
    if-nez v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    if-eq v5, v2, :cond_d

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputKeyCounter;->increaseCount(I)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    invoke-virtual {v1}, Lcom/android/server/input/InputKeyCounter;->getAllKeyCount()J

    move-result-wide v1

    const-wide/16 v5, 0x1f4

    cmp-long v1, v1, v5

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance v2, Lcom/android/server/input/InputManagerService$KeyCountRunnable;

    invoke-direct {v2, p0}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x8f

    if-ne v1, v2, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_7

    :cond_e
    move v1, v4

    :goto_7
    const/high16 v2, 0x1000000

    and-int/2addr v2, p2

    if-eqz v2, :cond_f

    move v4, v3

    :cond_f
    if-nez v1, :cond_10

    if-nez v4, :cond_10

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v2

    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iput-boolean v2, v0, Lcom/android/server/input/PersistentDataStore;->mNumLockState:Z

    iput-boolean v3, v0, Lcom/android/server/input/PersistentDataStore;->mDirtyEtc:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededEtc()V

    monitor-exit v1

    goto :goto_9

    :catchall_2
    move-exception p0

    goto :goto_8

    :catchall_3
    move-exception p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededEtc()V

    throw p1

    :goto_8
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_10
    :goto_9
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InputManagerCallback;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result p0

    return p0

    :catchall_4
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method public final interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .locals 7

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/InputManagerCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/InputManagerCallback;->interceptMotionBeforeQueueingNonInteractive(IIIJI)I

    move-result p0

    return p0
.end method

.method public final interceptQuickAccess(Z)Z
    .locals 9

    const-string/jumbo v0, "QuickAccess info: "

    const-string/jumbo v1, "invalid format for QuickAccess: "

    iget-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v3, 0x0

    const-string v4, "InputManager"

    if-nez v2, :cond_0

    const-string/jumbo p0, "QuickAccess: system not ready"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "SemInputDeviceManagerService"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getScrubPosition(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x3

    if-ge v7, v8, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0, v1, v6, v2}, Lcom/android/server/wm/InputManagerCallback;->interceptQuickAccess(IFF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string/jumbo p0, "NPE on QuickAccess: "

    invoke-static {p0, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string/jumbo p0, "NFE on QuickAccess: "

    invoke-static {p0, p1, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public final interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    move v5, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    const/16 v7, 0x36

    if-eq v5, v7, :cond_5

    const/16 v7, 0x3e

    if-eq v5, v7, :cond_4

    const/16 v7, 0x6f

    if-eq v5, v7, :cond_3

    const/16 v4, 0x78

    if-eq v5, v4, :cond_2

    :cond_1
    move-object v7, p2

    goto/16 :goto_1

    :cond_2
    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    filled-new-array {v5}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_3
    move-object v7, p2

    if-eqz v3, :cond_6

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p2

    if-eqz p2, :cond_6

    if-nez v2, :cond_6

    filled-new-array {v5}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3d

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_4
    move-object v7, p2

    if-eqz v3, :cond_6

    if-nez v2, :cond_6

    and-int/lit16 p2, v4, -0xc2

    const/16 v2, 0x1000

    invoke-static {p2, v2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p2

    if-eqz p2, :cond_6

    move p2, v2

    filled-new-array {v5}, [I

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    or-int/2addr v3, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_1

    :cond_5
    move-object v7, p2

    if-eqz v3, :cond_6

    const/16 p2, 0x1002

    invoke-static {v4, p2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p2

    if-eqz p2, :cond_6

    filled-new-array {v5}, [I

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v3, 0x1002

    const/16 v4, 0x3c

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0, p1, v7}, Lcom/android/server/wm/InputManagerCallback;->interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultPointerIconChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    return p0
.end method

.method public final isInTabletMode()I
    .locals 3

    const-string/jumbo v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "isInTabletMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v0, -0x100

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Requires TABLET_MODE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isMicMuted()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v0, -0x100

    const/16 v1, 0xe

    const/4 v2, -0x1

    invoke-interface {p0, v2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result p0

    return p0
.end method

.method public final isPerDisplayTouchModeEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final isSpayFullAppInstalled()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "com.samsung.android.spay"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.samsung.android.spay.is_stub"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final isUidTouched(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isUidTouched(I)Z

    move-result p0

    return p0
.end method

.method public final isVibrating(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->isVibrating(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$controlSpenWithToken$1()V
    .locals 2

    const-string v0, "InputManager"

    const-string/jumbo v1, "mSpenContolToken died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mSpenDeviceId:I

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->enableInputDevice(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/InputManagerService;->mSpenControlToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public final synthetic lambda$createSpyWindowGestureMonitor$0(Landroid/view/InputChannel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    return-void
.end method

.method public final synthetic lambda$initKeyGestures$11(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)V

    return-void
.end method

.method public final synthetic lambda$sendKeyboardWirelessKeyboardShare$13()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public final synthetic lambda$sendKeyboardWirelessKeyboardShare$14()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public final monitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-virtual {v0}, Lcom/android/server/input/BatteryController;->monitor()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {v0}, Lcom/android/server/input/PointerIconCache;->monitor()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->monitor()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0
.end method

.method public final monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;
    .locals 1

    const v0, 0xffff

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/input/InputManagerService;->monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object p0

    return-object p0
.end method

.method public final monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;
    .locals 11

    const-string v8, "Could not create gesture monitor surface on display: "

    const-string/jumbo v2, "android.permission.MONITOR_INPUT"

    const-string/jumbo v3, "monitorGestureInput()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "name must not be null."

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "token must not be null."

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p3, :cond_1

    const-string/jumbo v2, "[Gesture Monitor] "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v1, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/InputManagerCallback;->createSurfaceForGestureMonitor(ILjava/lang/String;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move v4, p3

    move v7, p4

    move-object v3, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/input/InputManagerService;->createSpyWindowGestureMonitor(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/SurfaceControl;IIII)Landroid/view/InputChannel;

    move-result-object v1

    new-instance v2, Landroid/view/InputMonitor;

    new-instance v4, Lcom/android/server/input/InputManagerService$InputMonitorHost;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/input/InputManagerService$InputMonitorHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    new-instance v0, Landroid/view/SurfaceControl;

    const-string v5, "IMS.monitorGestureInput"

    invoke-direct {v0, v3, v5}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v2, v1, v4, v0}, Landroid/view/InputMonitor;-><init>(Landroid/view/InputChannel;Landroid/view/IInputMonitorHost;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "displayId must >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires MONITOR_INPUT permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final monitorInput(Ljava/lang/String;I)Landroid/view/InputChannel;
    .locals 1

    const v0, 0xffff

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 1

    const-string/jumbo v0, "inputChannelName not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-interface {p0, p2, p1, v0, p3}, Lcom/android/server/input/NativeInputManagerService;->createInputMonitor(ILjava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "displayId must >= 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MONITOR_INPUT"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "can only call from system. "

    invoke-static {v1, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object p0

    return-object p0
.end method

.method public final needGamePadRemapping(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyDisplayIdChangedByUser(I)V
    .locals 2

    const-string/jumbo v0, "notifyDisplayIdChangedByUser: "

    const-string v1, "InputManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    :cond_0
    return-void
.end method

.method public final notifyDropWindow(Landroid/os/IBinder;FF)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v1, p1, p0, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyFocusChanged(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final notifyInputChannelBroken(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    const-string/jumbo v0, "WINDOW DIED "

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_2

    const-string/jumbo p1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final notifyInputDevicesChanged([Landroid/view/InputDevice;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedPending:Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputDevices:[Landroid/view/InputDevice;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "notifyConfigurationChanged"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object p1

    new-instance v3, Landroid/util/SparseIntArray;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback;->mLastInputConfigurationSources:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    array-length v7, p1

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, p1, v8

    invoke-virtual {v9}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/InputDevice;->getSources()I

    move-result v11

    mul-int/lit8 v11, v11, 0x1f

    invoke-virtual {v9}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v12, v12, 0x1f

    invoke-virtual {v9}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v11

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x1f

    invoke-virtual {v9}, Landroid/view/InputDevice;->isExternal()Z

    move-result v12

    add-int/2addr v12, v11

    mul-int/lit8 v12, v12, 0x1f

    invoke-virtual {v9}, Landroid/view/InputDevice;->isEnabled()Z

    move-result v9

    add-int/2addr v9, v12

    invoke-virtual {v3, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz v4, :cond_3

    if-nez v6, :cond_3

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-eq v10, v9, :cond_3

    move v6, v2

    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eq p1, v4, :cond_5

    move v6, v2

    :cond_5
    iput-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mLastInputConfigurationSources:Landroid/util/SparseIntArray;

    if-nez v6, :cond_6

    iget-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_1
    const-string/jumbo v3, "inputDeviceConfigChanged"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean p1, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    if-nez p1, :cond_8

    iput-boolean v2, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReady:Z

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_8
    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_6
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final notifyKeyActivityListeners(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    return-void
.end method

.method public final notifyMultiFingerGesture(II)I
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    sget-boolean v3, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureEnable:Z

    const-string v4, "InputManager"

    if-eqz v3, :cond_4

    const-string/jumbo v3, "notifyMultiFingerGesture: "

    const-string v5, " "

    invoke-static {p1, v2, v3, v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "Not support multi finger gesture 170000 0"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/input/InputManagerService;->sendMultiFingerGesture(II)V

    if-ne v2, v0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final notifyNoFocusedWindowAnr(Landroid/view/InputApplicationHandle;)V
    .locals 13

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    const-string v1, "Application does not have a focused window"

    invoke-static {v0, v1}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchNoFocusedWindow(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Blamed "

    const-string v2, "ANR in "

    const-string v3, "App is in stopped state:"

    const-string/jumbo v4, "Unknown app appToken:"

    :try_start_0
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveStarted()V

    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowStarted()V

    invoke-virtual {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->preDumpIfLockTooSlowEnded()V

    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockStarted()V

    iget-object v5, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v6}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockEnded()V

    iget-object v6, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    invoke-static {v6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo p0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping notifyNoFocusedWindowAnr request"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    :cond_0
    :goto_1
    iget-object p0, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveEnded()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :try_start_2
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v4, :cond_2

    const-string/jumbo p0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping notifyNoFocusedWindowAnr request"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v4, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-object v4, v4, Lcom/android/server/wm/InputMonitor;->mInputFocus:Landroid/os/IBinder;

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    invoke-interface {v7}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    iget-wide v11, p1, Lcom/android/server/wm/InputMonitor;->mInputFocusRequestTimeMillis:J

    sub-long/2addr v9, v11

    iget-object p1, v7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-object v11, Lcom/android/server/wm/ActivityTaskManagerService;->sIsPip2ExperimentEnabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez p1, :cond_5

    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    :goto_3
    int-to-long v11, p1

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v11

    goto :goto_5

    :cond_6
    :goto_4
    sget p1, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    goto :goto_3

    :goto_5
    cmp-long p1, v9, v11

    if-ltz p1, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_7
    move-object v7, v3

    :cond_8
    :goto_6
    if-nez v8, :cond_9

    const-string/jumbo p1, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".  Reason: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v8, :cond_a

    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Lcom/android/internal/os/TimeoutRecord;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using pending focus request. Focused activity: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_1
    move-exception p0

    goto :goto_9

    :cond_a
    const/4 p1, -0x1

    invoke-virtual {v6, p1, v0}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(ILcom/android/internal/os/TimeoutRecord;)V

    :goto_7
    if-nez v8, :cond_0

    iget-object p1, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v6, v3, p1}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :goto_8
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_9
    iget-object p1, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyAppUnresponsiveEnded()V

    throw p0
.end method

.method public final notifyPogoKeyboardNotMatch()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mBootCompleted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10410b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mNotifyPogoKeyboardNotMatchPending:Z

    return-void
.end method

.method public final notifyQuickAccess(IFF)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const-string v1, "InputManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "notifyQuickAccess: system not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyQuickAccess: info="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", x="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/InputManagerCallback;->interceptQuickAccess(IFF)V

    :cond_1
    return-void
.end method

.method public final notifySensorAccuracy(III)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorAccuracyChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that sensor accuracy notified, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorAccuracyListenersToNotify:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final notifySensorEvent(IIIJ[F)V
    .locals 11

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    const-string/jumbo v1, "notifySensorEvent: deviceId="

    const-string v2, " sensorType="

    const-string v3, " values="

    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v4, v3, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    move v5, p1

    move v6, p2

    move v7, p3

    move-wide v8, p4

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Landroid/hardware/input/IInputSensorEventListener;->onInputSensorChanged(IIIJ[F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that sensor event notified, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "InputManager"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->binderDied()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListenersToNotify:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final notifySpenCount(II)V
    .locals 0

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->IFW_SPEN_PRESSURE_SA_LOGGING:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "SPENDRAW"

    invoke-static {p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;I)V

    const-string/jumbo p0, "SPENSTPR"

    invoke-static {p0, p2}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final notifyStickyModifierStateChanged(II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    sget-boolean v0, Lcom/android/server/input/StickyModifierStateController;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "ModifierStateController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Sticky modifier state changed, modifierState = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lockedModifierState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v4, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    :try_start_0
    iget-object v0, v4, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    iget-object v0, v4, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v8, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v0, v2, v3}, Landroid/hardware/input/IStickyModifierStateListener;->onStickyModifierStateChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failed to notify process "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " that sticky modifier state changed, assuming it died."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "ModifierStateController"

    invoke-static {v10, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->binderDied()V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget v1, v0, Lcom/android/server/input/KeyGestureController;->mLastModifierState:I

    xor-int/2addr v1, v2

    iput v2, v0, Lcom/android/server/input/KeyGestureController;->mLastModifierState:I

    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x39

    const/16 v7, 0x75

    const/high16 v8, 0x10000

    if-eqz v3, :cond_5

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    and-int v3, v2, v8

    if-eqz v3, :cond_2

    iput-boolean v4, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_2

    :cond_2
    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    goto :goto_2

    :cond_3
    iget-boolean v3, v0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    if-eqz v3, :cond_4

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    const/16 v1, 0x3d

    filled-new-array {v1}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x2

    const/16 v10, 0x36

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_3

    :cond_4
    iget-boolean v3, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v3, :cond_5

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    filled-new-array {v7, v5}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_3

    :cond_5
    :goto_2
    and-int/2addr v1, v8

    if-eqz v1, :cond_9

    and-int v1, v2, v8

    if-eqz v1, :cond_7

    and-int/lit8 v1, v2, 0x2

    if-eqz v1, :cond_6

    iput-boolean v4, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_3

    :cond_6
    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    iput-boolean v4, v0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    goto :goto_3

    :cond_7
    iget-boolean v1, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    if-eqz v1, :cond_8

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    filled-new-array {v7, v5}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x19

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    goto :goto_3

    :cond_8
    iget-boolean v1, v0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    if-eqz v1, :cond_9

    iput-boolean v6, v0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    filled-new-array {v7}, [I

    move-result-object v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x15

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v15}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    :cond_9
    :goto_3
    return-void

    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final notifyStylusGestureStarted(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    iget-object v1, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p1, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onStylusGestureStarted(J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, p3}, Landroid/hardware/display/DisplayManagerInternal;->stylusGestureStarted(J)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final notifySwitch(JII)V
    .locals 8

    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifySwitch: values="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    and-int/lit8 v0, p4, 0x1

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eqz v0, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v6, :cond_1

    move v6, v1

    :goto_1
    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    invoke-interface {v7, v4}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    long-to-int v5, p1

    iput v5, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    shr-long v5, p1, v3

    long-to-int v5, v5

    iput v5, v4, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v5, 0x67

    invoke-virtual {v0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iput-wide p1, p0, Lcom/android/server/input/InputManagerService;->mLastLidEventTime:J

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_4
    const/high16 v0, 0x800000

    and-int/2addr v0, p4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_5
    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_4
    monitor-exit v0

    goto :goto_7

    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_5
    :goto_7
    const/high16 v0, 0x80000

    and-int v4, p4, v0

    if-eqz v4, :cond_7

    and-int/2addr v0, p3

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_8

    :cond_6
    move v0, v1

    :goto_8
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    iget-object v4, v4, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    :cond_7
    const/high16 v0, 0x100000

    and-int v4, p4, v0

    if-eqz v4, :cond_9

    and-int/2addr v0, p3

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    iget-object v4, v4, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, p1, p2, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->notifyPenSwitchChanged(JZZ)V

    :cond_9
    const/high16 v0, 0x40000000    # 2.0f

    and-int v4, p4, v0

    if-eqz v4, :cond_b

    and-int/2addr v0, p3

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    :cond_b
    and-int/lit16 v0, p4, 0x200

    if-eqz v0, :cond_d

    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v1

    :goto_b
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v4, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/InputManagerCallback;->notifyCameraLensCoverSwitchChanged(JZ)V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mUseDevInputEventForAudioJack:Z

    if-eqz v0, :cond_e

    and-int/lit16 v0, p4, 0xd4

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    check-cast v0, Lcom/android/server/WiredAccessoryManager;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(IIZ)V

    :cond_e
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    long-to-int v4, p1

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    shr-long v3, p1, v3

    long-to-int v3, v3

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_c

    :cond_f
    move v3, v1

    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    and-int/lit16 v0, p4, 0x4000

    if-eqz v0, :cond_12

    and-int/lit16 v0, p3, 0x4000

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_d

    :cond_11
    move v0, v1

    :goto_d
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setMicrophoneMuteFromSwitch(Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_12
    const/high16 v0, 0x200000

    and-int v3, p4, v0

    if-eqz v3, :cond_15

    and-int/2addr v0, p3

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_e

    :cond_13
    move v0, v1

    :goto_e
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    if-nez v3, :cond_14

    const-class v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    :cond_14
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {v3, p1, p2, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->notifyCoverSwitchStateChanged(JZ)V

    :cond_15
    const/high16 v0, 0x8000000

    and-int v3, p4, v0

    if-eqz v3, :cond_1f

    and-int/2addr v0, p3

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_f

    :cond_16
    move v0, v1

    :goto_f
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    if-eqz v3, :cond_1d

    check-cast v3, Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.sec.feature.nfc_authentication"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v6, "SAccessoryManager_SAccessoryManager"

    if-nez v5, :cond_17

    const-string/jumbo v5, "com.sec.feature.nfc_authentication_cover"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo p1, "notifyUnverifiedCoverAttachChanged : nfc not supported, so skip authentication"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notifyUnverifiedCoverAttachChanged : whenNanos = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", attached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    const v5, 0x10067

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "SM-F900"

    iget-object v5, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->modelName:Ljava/lang/String;

    if-nez v0, :cond_19

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    move-result-object v5

    if-eqz v5, :cond_18

    array-length v5, v5

    const/16 v7, 0x10

    if-ne v5, v7, :cond_18

    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    const-string/jumbo p1, "auth chip exists. will retry to check after TIME_OUT_DETACH_RETRY"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    const/16 p2, 0xe

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, p2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_12

    :cond_18
    invoke-virtual {v4}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    goto :goto_10

    :cond_19
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v0, :cond_1a

    iget-boolean v4, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->authState:Z

    if-eqz v4, :cond_1a

    const-string p1, "F900, current auth state is true, so skip authentication"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1a
    :goto_10
    iget-object v3, v3, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1b
    :goto_11
    if-ge v5, v4, :cond_1e

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    instance-of v7, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v7, :cond_1b

    check-cast v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-virtual {v6, p1, p2, v0, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    goto :goto_11

    :cond_1c
    const-string/jumbo p1, "notifyUnverifiedCoverAttachChanged : mABCD supported, so skip authentication from hallIC"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_1d
    const-string p1, "InputManager"

    const-string/jumbo p2, "UnVerifiedCoverAttachCallbacks is not registered"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_12
    const-string p1, "InputManager"

    const-string/jumbo p2, "UnVerifiedCoverAttachCallbacks is not registered for DesktopModeService"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/high16 p1, -0x80000000

    and-int p2, p4, p1

    if-eqz p2, :cond_22

    and-int/2addr p1, p3

    if-eqz p1, :cond_20

    move v1, v2

    :cond_20
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    check-cast p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;->this$1:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    if-eqz v1, :cond_21

    iget-object p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    goto :goto_13

    :cond_21
    iget-object p2, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p2, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    :goto_13
    const-string/jumbo p2, "notifyKeyboardCoverBackfolded: backfolded="

    const-string v0, ", keyboardState="

    invoke-static {p2, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->this$0:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget p1, p1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    const-string v0, "InputMethodManagerServicePhysicalKey"

    invoke-static {p2, p1, v0}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_22
    const/high16 p1, 0x20000000

    and-int p2, p4, p1

    if-eqz p2, :cond_23

    and-int/2addr p1, p3

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->showingTouchSensitivityNotificationIfNeeded()V

    :cond_23
    return-void
.end method

.method public final notifyTouchpadGestureInfo(II)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final notifyTouchpadHardwareState(Lcom/android/server/input/TouchpadHardwareState;I)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadDebugViewController;Lcom/android/server/input/TouchpadHardwareState;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final notifyTouchpadThreeFingerTap()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget v2, v0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    monitor-exit v3

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v4

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v9

    const/4 p0, 0x0

    new-array v2, p0, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final notifyUntrustedTouch(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10410b4

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mToastDialog:Lcom/android/server/input/ToastDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyVibratorState(IZ)V
    .locals 3

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyVibratorState: deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenersLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mIsVibrating:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-interface {p2, p0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "InputManager"

    const-string/jumbo p2, "Vibrator state listener failed to call"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifyVibratorStateListenersLocked(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Device "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have vibrator state listener."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IVibratorStateListener;

    invoke-virtual {p0, p1, v3}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyWindowDragStarted()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyWindowDragStarted()V

    return-void
.end method

.method public final notifyWindowResponsive(Landroid/os/IBinder;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    :goto_0
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    iget-object p3, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v0

    if-nez v0, :cond_2

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p0, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to notify that window token="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was responsive."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;IZLjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz p3, :cond_0

    invoke-static {p2}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    :goto_0
    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p4}, Lcom/android/server/wm/InputManagerCallback;->timeoutMessage(Ljava/util/OptionalInt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/os/TimeoutRecord;->forInputDispatchWindowUnresponsive(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAnrController:Lcom/android/server/wm/AnrController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "Failed to notify that window token="

    :try_start_0
    iget-object v0, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveStarted()V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Lcom/android/internal/os/TimeoutRecord;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_1
    iget-object p0, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveEnded()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was unresponsive."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(ILcom/android/internal/os/TimeoutRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iget-object p1, p3, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->notifyWindowUnresponsiveEnded()V

    throw p0
.end method

.method public final onDisplayRemoved(I)V
    .locals 1

    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->displayRemoved(I)V

    return-void
.end method

.method public final onInputDevicesChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onLidStateChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onMultiFingerGestureListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPointerDownOutsideFocus(Landroid/os/IBinder;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPointerDownUpCancelOutsideFocus(Landroid/os/IBinder;III)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object p0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 p1, 0x3e

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onPointerIconChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSensorEventListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/input/InputShellCommand;

    new-instance v1, Lcom/android/server/input/InputShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/input/InputShellCommand;-><init>(Ljava/util/function/BiConsumer;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onSwitchEventChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onTabletModeChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorTokens:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->cancelVibrateIfNeeded(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onWirelessKeyboardShareChangedListenerDied(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    const-string/jumbo v0, "Open light session for "

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string/jumbo v4, "already registered"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    new-instance v2, Lcom/android/server/input/InputManagerService$LightSession;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$LightSession;-><init>(Lcom/android/server/input/InputManagerService;ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p3, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "InputManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " device "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final pilferPointers(Landroid/os/IBinder;)V
    .locals 0

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->pilferPointers_enforcePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->pilferPointers(Landroid/os/IBinder;)V

    return-void
.end method

.method public final registerAccessibilityPointerMotionFilter(Lcom/android/server/input/InputManagerInternal$AccessibilityPointerMotionFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityPointerMotionFilterEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAccessibilityPointerMotionFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityPointerMotionFilterEnabled(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 10

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "Battery listener for pid "

    const-string/jumbo v2, "The battery listener for pid "

    const-string v3, "Cannot register a new battery listener when there is already another registered listener for pid "

    const-string v4, "Battery listener added for pid "

    iget-object v5, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/server/input/BatteryController$ListenerRecord;

    invoke-direct {v6, p0, v0, p2}, Lcom/android/server/input/BatteryController$ListenerRecord;-><init>(Lcom/android/server/input/BatteryController;ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "BatteryController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    const-string p0, "BatteryController"

    const-string p1, "Client died before battery listener could be registered."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :cond_0
    :goto_0
    iget-object v4, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v4}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne v4, p2, :cond_4

    iget-object p2, v6, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    invoke-direct {p2, p0, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    :cond_1
    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "BatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is monitoring deviceId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    invoke-virtual {p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    monitor-exit v5

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is already monitoring deviceId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerFlowPointerSettingObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dex_flow_pointer"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    .locals 4

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IInputDevicesChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputDevicesChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "The calling process has already registered an InputDevicesChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyEventActivityListener_enforcePermission()V

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public final registerKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerKeyGestureHandler([ILandroid/hardware/input/IKeyGestureHandler;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string/jumbo v1, "No key gestures provided for pid = "

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    array-length v3, p1

    if-eqz v3, :cond_4

    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget v5, p1, v4

    iget-object v6, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v7}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v5, "KeyGestureController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "registerKeyGestureHandler: pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " was killed but we didn\'t receive binderDied callback"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Key gesture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered by pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;-><init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    array-length p2, p1

    :goto_2
    if-ge v3, p2, :cond_3

    aget v1, p1, v3

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 4

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerKeyboardBacklightListener_enforcePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;-><init>(Lcom/android/server/input/KeyboardBacklightController;ILandroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    .locals 4

    const-string/jumbo v0, "com.samsung.android.permission.LID_STATE"

    const-string/jumbo v1, "registerLidStateChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ISemLidStateChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidStateChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a LidStateChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires LID_STATE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 v2, 0x0

    const/16 v3, -0x100

    const/4 v4, -0x1

    invoke-interface {v1, v4, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-interface {p1, v2}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 p1, 0x17

    invoke-interface {p0, v4, v3, p1}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$MultiFingerGestureListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IMultiFingerGestureListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mMultiFingerGestureListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a MultiFingerGestureListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerMultiFingerTapBehavior(I)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "three_finger_gesture"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "four_finger_gesture"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Lcom/android/server/input/InputManagerService$7;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v4, 0x2

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/input/InputManagerService$7;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public final registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$PointerIconChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IPointerIconChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a PointerIconChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .locals 5

    const-string/jumbo v0, "The calling process "

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerSensorListener: listener="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " callingPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "listener must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string p0, "InputManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has already registered an InputSensorEventListener."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v4

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputSensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .locals 4

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->registerStickyModifierStateListener_enforcePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;-><init>(Lcom/android/server/input/StickyModifierStateController;ILandroid/hardware/input/IStickyModifierStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final registerSwitchEventChangedListener(Landroid/hardware/input/ISwitchEventChangedListener;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$SwitchEventChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISwitchEventChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ISwitchEventChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSwitchEventChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a SwitchEventChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    .locals 4

    const-string/jumbo v0, "android.permission.TABLET_MODE"

    const-string/jumbo v1, "registerTabletModeChangedListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$TabletModeChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/ITabletModeChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTabletModeChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a TabletModeChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires TABLET_MODE_LISTENER permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 5

    const-string v0, "Could not register vibrator state listener "

    const-string/jumbo v1, "listener must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "InputManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->notifyVibratorStateListenerLocked(ILandroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/InputManagerService$WirelessKeyboardShareChangedListenerRecord;-><init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/hardware/input/IWirelessKeyboardShareChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardShareChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has already registered a WirelessKeyboardShareChangedListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "only system signature can use registerWirelessKeyboardShareChangedListener(), but UID("

    const-string v1, ") has not system signature"

    invoke-static {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reloadDeviceAliases()V
    .locals 2

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    const-string/jumbo v1, "Reloading device names."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadDeviceAliases()V

    return-void
.end method

.method public final reloadPointerIcons()V
    .locals 2

    const-string v0, "InputManager"

    const-string/jumbo v1, "reloadPointerIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void
.end method

.method public final remapModifierKey(II)V
    .locals 2

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->remapModifierKey_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p0, v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/16 p0, 0x6f

    if-ne p1, p0, :cond_1

    const-string/jumbo p0, "persist.service.esc.dialog"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final removeAllCustomInputGestures(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {p2}, Landroid/hardware/input/InputGestureData$Filter;->of(I)Landroid/hardware/input/InputGestureData$Filter;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/input/InputGestureManager;->removeAllCustomInputGestures(ILandroid/hardware/input/InputGestureData$Filter;)V

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeAllDeviceToGamepadProfile()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "removeAllDeviceToGamepadProfile"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "InputManager"

    const-string/jumbo v1, "removeAllDeviceToGamepadProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo v0, "removeAllDeviceToGamepadProfile "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeAllGamepadProfiles()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "removeAllGamepadProfiles"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "InputManager"

    const-string/jumbo v1, "removeAllGamepadProfiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->clearStateGamePadProfiles()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo v0, "removeAllGamepadProfiles "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeCustomInputGesture(ILandroid/hardware/input/AidlInputGestureData;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    new-instance v1, Landroid/hardware/input/InputGestureData;

    invoke-direct {v1, p2}, Landroid/hardware/input/InputGestureData;-><init>(Landroid/hardware/input/AidlInputGestureData;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v2, v0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v2, :cond_0

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputGestureData;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    monitor-exit p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    :goto_0
    if-ne v4, v3, :cond_3

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return v4

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeDeviceToGamepadProfile(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "removeDeviceToGamepadProfile"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "InputManager"

    const-string/jumbo v1, "removeDeviceToGamepadProfile :"

    invoke-static {v1, p1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo p1, "removeDeviceToGamepadProfile : bt addr is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager-GamePadRemapper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeDeviceToGamepadProfile : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeDeviceWirelessKeyboardShare(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "removeDeviceWirelessKeyboardShare : called by not allowed app"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removeHIDDevice(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "InputManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "removeDeviceWirelessKeyboardShare : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final removeGamepadProfile(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "removeGamepadProfile"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "InputManager"

    const-string/jumbo v1, "removeGamepadProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->clearData()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo v0, "removeGamepadProfile : "

    invoke-static {p1, v0, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeInputChannel(Landroid/os/IBinder;)V
    .locals 1

    const-string/jumbo v0, "connectionToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    return-void
.end method

.method public final removeKeyboardLayoutAssociation(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeKeyboardLayoutAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removePortAssociation(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removePortAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mRuntimeAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->notifyPortAssociationsChanged()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSpyWindowGestureMonitor(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputMonitors:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/GestureMonitorSpyWindow;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->removeInputChannel(Landroid/os/IBinder;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p1, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, v1, Lcom/android/server/input/GestureMonitorSpyWindow;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final removeUniqueIdAssociationByDescriptor(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociationByDescriptor()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByDescriptor:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeUniqueIdAssociationByPort(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY"

    const-string/jumbo v1, "removeUniqueIdAssociation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mUniqueIdAssociationsByPort:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeUniqueIdAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestPointerCapture(Landroid/os/IBinder;Z)V
    .locals 1

    const-string/jumbo v0, "inputChannelToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->requestPointerCapture(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final resetLockedModifierState()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->resetLockedModifierState()V

    return-void
.end method

.method public final semGetMotionIdleTimeMillis(Z)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getMotionIdleTimeMillis(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public final sendKeyboardWirelessKeyboardShare(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyKeyboardAciton(II)V

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/InputManagerService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    :cond_1
    iget p1, p0, Lcom/android/server/input/InputManagerService;->mSharedKeyReferenceCount:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    new-instance p2, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/InputManagerService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendMultiFingerGesture(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x69

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendPogoKeyboardStatus(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast v0, Lcom/android/server/wm/InputManagerCallback;

    iget-object v0, v0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setPogoConnected(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v3, v1

    :cond_1
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 p1, 0x6b

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final sendPointerIconChanged(ILandroid/view/PointerIcon;)V
    .locals 3

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PointerIcon type changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PointerIcon changed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLastPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendSwitchWirelessKeyboardShare(I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchRemoteDeviceByKey(Z)Z

    move-result p1

    const-string v1, "InputManager"

    const-string/jumbo v3, "switch device by key"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    move p1, v2

    :goto_1
    if-ne p1, v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    long-to-int v5, v3

    iput v5, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v3, 0x6

    iput v3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string/jumbo v3, "android.policy:WirelessKeyboardShare"

    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v3, 0x6a

    invoke-virtual {p0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x2

    :goto_2
    monitor-exit v0

    return v2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendTouchPadGestureWirelessKeyboardShare(IFFI)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/input/WirelessKeyboardMouseShare;->notifyMouseAction(IFFI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAccessibilityBounceKeysThreshold(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityBounceKeysThreshold(I)V

    return-void
.end method

.method public final setAccessibilityPointerIconScaleFactor(IF)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/PointerIconCache;IFI)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAccessibilitySlowKeysThreshold(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilitySlowKeysThreshold(I)V

    return-void
.end method

.method public final setAccessibilityStickyKeysEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setAccessibilityStickyKeysEnabled(Z)V

    return-void
.end method

.method public final declared-synchronized setBlockDeviceMode(ZIZLjava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "sBDM(): isSet="

    monitor-enter p0

    if-eqz p4, :cond_7

    :try_start_0
    const-string v1, ""

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTspCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mBlockTkeyCallerList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    :cond_6
    const-string v1, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " deviceType="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isForce="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " caller="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " blockMode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget p2, p0, Lcom/android/server/input/InputManagerService;->mBlockDeviceMode:I

    invoke-interface {p1, v2, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputMetaData(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    :try_start_1
    const-string p1, "InputManager"

    const-string/jumbo p2, "sBDM(): caller must be specified!"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setCoverVerify(I)V
    .locals 2

    const-string/jumbo v0, "setCoverVerify = "

    const-string v1, "InputManager"

    invoke-static {p1, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setCoverVerify(I)V

    return-void
.end method

.method public final setCustomPointerIcons(IF)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/PointerIconCache;IFI)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDefaultPointerIcon(ILandroid/view/PointerIcon;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public final setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    iget p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIconChanged:Z

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    return-void
.end method

.method public final setDesktopModeDisplayState(I)V
    .locals 6

    const-string v0, "Dex type : "

    const-string v1, "Dex mode "

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mDexLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    if-eq v3, p1, :cond_2

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getDisplayIdForDex()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string v1, "Entered "

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "Left "

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget v4, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    invoke-interface {v1, v3, v4, p1}, Lcom/android/server/input/NativeInputManagerService;->setDexMode(ZII)V

    invoke-static {v3}, Landroid/view/PointerIcon;->setDexMode(Z)V

    :cond_2
    const-string p1, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/input/InputManagerService;->mDesktopModeDisplayState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDesktopModeServiceCallbacks(Lcom/android/server/input/InputManagerService$DesktopModeServiceCallbacks;)V
    .locals 0

    return-void
.end method

.method public final setDisplayDpi()V
    .locals 3

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->SEP_FULL:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-interface {p0, v1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayDpi(FF)V

    :cond_0
    return-void
.end method

.method public final setDisplayEligibilityForPointerCapture(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setDisplayEligibilityForPointerCapture(IZ)V

    return-void
.end method

.method public final setDisplayIdForPointerIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mDisplayIdForPointerIcon:I

    :cond_0
    return-void
.end method

.method public final setDisplayTopologyInternal(Landroid/hardware/display/DisplayTopologyGraph;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setDisplayTopology(Landroid/hardware/display/DisplayTopologyGraph;)V

    return-void
.end method

.method public final setDisplayViewportsInternal(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->setDisplayDpi()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/display/DisplayViewport;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayViewport;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDisplayViewports([Landroid/hardware/display/DisplayViewport;)V

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    invoke-virtual {p0}, Lcom/android/server/wm/InputManagerCallback;->getPointerDisplayId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->setPointerDisplayId(I)V

    return-void
.end method

.method public final setFocusedApplication(ILandroid/view/InputApplicationHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setFocusedApplication(ILandroid/view/InputApplicationHandle;)V

    return-void
.end method

.method public final setFocusedDisplay(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setFocusedDisplay(I)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iput p1, p0, Lcom/android/server/input/KeyGestureController;->mFocusedDisplayId:I

    return-void
.end method

.method public final setForcedDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDefaultPointerIcon:Landroid/view/PointerIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForDefaultPointerIcon:I

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-object p2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIcon:Landroid/view/PointerIcon;

    if-eqz p2, :cond_1

    iput-boolean v2, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/input/InputManagerService;->mForcedDefaultPointerIconChanged:Z

    iput v3, p0, Lcom/android/server/input/InputManagerService;->mToolTypeForForcedDefaultPointerIcon:I

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->setDefaultPointerIconInternal(ILandroid/view/PointerIcon;)V

    :cond_2
    return-void
.end method

.method public final setGamepadProfileName(ILjava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setGamepadProfileName"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iput-object p2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    iput-boolean v2, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    monitor-exit v0

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const-string p0, "InputManager-GamePadRemapper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setGamepadProfileName : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "InputManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setGamepadProfileName "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final setHostRoleWirelessKeyboardShare()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo v1, "setHostRoleWirelessKeyboardShare : called by not allowed app"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setHostRoleWirelessKeyboardShare()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "InputManager"

    const-string/jumbo v0, "setHostRoleWirelessKeyboardShare"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setImeTargetWindowDisplayIdForExternalDesktop(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mImeTargetDisplayIdForExternalDesktop:I

    return-void
.end method

.method public final setInTouchMode(ZIIZI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/input/NativeInputManagerService;->setInTouchMode(ZIIZI)Z

    move-result p0

    return p0
.end method

.method public final setInputDispatchMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setInputDispatchMode(ZZ)V

    return-void
.end method

.method public final setInputFilter(Landroid/view/IInputFilter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;

    iput-boolean v2, v4, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    iput-object v3, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    if-eqz p1, :cond_2

    :try_start_2
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputFilter:Landroid/view/IInputFilter;

    new-instance v1, Lcom/android/server/input/InputManagerService$InputFilterHost;

    invoke-direct {v1, p0}, Lcom/android/server/input/InputManagerService$InputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;)V

    iput-object v1, p0, Lcom/android/server/input/InputManagerService;->mInputFilterHost:Lcom/android/server/input/InputManagerService$InputFilterHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p1, v1}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_2
    :try_start_4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0, v2}, Lcom/android/server/input/NativeInputManagerService;->setInputFilterEnabled(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final setInputMethodManagerCallbacks(Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    return-void
.end method

.method public final setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutForInputDevice_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    new-instance p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    iget-object p3, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    const-string/jumbo p4, "subtypeHandle must not be null"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "layoutDescriptor:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ",userId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",subtypeHandle:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p5}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->setKeyboardLayoutOverrideForInputDevice_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    invoke-direct {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;)V

    const-string p1, "GLOBAL_OVERRIDE_KEY"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V
    .locals 2

    const-string/jumbo v0, "light does not exist"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setLightStateInternal device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " light "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lightState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getType()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getPlayerId()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightPlayerId(III)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result p2

    invoke-virtual {p3}, Landroid/hardware/lights/LightState;->getColor()I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    return-void
.end method

.method public final setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    .locals 6

    const-string/jumbo v0, "setLightStates for "

    array-length v1, p2

    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string/jumbo v2, "lights and light states are not same length"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mLightLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mLightSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/InputManagerService$LightSession;

    if-eqz p4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string/jumbo v5, "not registered"

    invoke-static {v2, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mDeviceId:I

    if-ne v2, p1, :cond_2

    move v3, v4

    :cond_2
    const-string v2, "Incorrect device ID"

    invoke-static {v3, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mLightIds:[I

    invoke-virtual {p3}, [Landroid/hardware/lights/LightState;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/lights/LightState;

    iput-object v2, p4, Lcom/android/server/input/InputManagerService$LightSession;->mLightStates:[Landroid/hardware/lights/LightState;

    sget-boolean v2, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "InputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p4, Lcom/android/server/input/InputManagerService$LightSession;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " device "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService;->setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setLightStatesInternal(I[I[Landroid/hardware/lights/LightState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->getLights(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/lights/Light;

    invoke-virtual {v4}, Landroid/hardware/lights/Light;->getId()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/lights/Light;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_2

    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, p2, v2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/lights/Light;

    aget-object v3, p3, v2

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/input/InputManagerService;->setLightStateInternal(ILandroid/hardware/lights/Light;Landroid/hardware/lights/LightState;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final setMouseScalingEnabled(ZI)V
    .locals 2

    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(IZ)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final setPointerFillStyle(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/PointerIconCache;II)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/input/NativeInputManagerService;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/PointerIcon;->getType()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/InputManagerService;->sendPointerIconChanged(ILandroid/view/PointerIcon;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setPointerIconVisible(ZI)V
    .locals 2

    new-instance v0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda1;-><init>(IZ)V

    invoke-virtual {p0, p2, v0}, Lcom/android/server/input/InputManagerService;->updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public final setPointerScale(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/PointerIconCache;F)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPointerSpeedUnchecked(I)V
    .locals 1

    const/4 v0, -0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setPointerSpeed(I)V

    return-void
.end method

.method public final setPointerStrokeStyle(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/PointerIconCache;II)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setRemapGamepadButton(III)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setRemapGamepadButton"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    invoke-static {p2}, Lcom/android/server/input/GamePadRemapper;->isValidButton(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p3}, Lcom/android/server/input/GamePadRemapper;->isValidButton(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/input/PersistentDataStore;->mGamePadProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;

    iget-object v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mSimpleButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v3, v1, Lcom/android/server/input/PersistentDataStore$GamePadProfile;->mUsed:Z

    iput-boolean v3, p0, Lcom/android/server/input/PersistentDataStore;->mDirtyGamePadProfiles:Z

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeededGamePadProfiles()V

    :goto_2
    monitor-exit v0

    move v1, v3

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_3
    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo v0, "setRemapGamepadButton : "

    const-string v2, " "

    const-string v3, " "

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "InputManager"

    const-string/jumbo v0, "setRemapGamepadButton "

    const-string v2, " : "

    const-string v3, " "

    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final setRemapGamepadStick(IIIZZZ)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setRemapGamepadStick"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    const/16 v2, 0x80f

    const/16 v3, 0x80b

    const/16 v4, 0x800

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_3

    move v0, v1

    :cond_3
    if-eq p3, v4, :cond_4

    if-eq p3, v3, :cond_4

    if-eq p3, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/input/PersistentDataStore;->updateStickForGamePadProfiles(IIIZZZ)V

    monitor-exit v7

    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    move/from16 v6, p6

    :goto_2
    const-string v0, "InputManager-GamePadRemapper"

    const-string/jumbo v7, "setRemapGamepadStick : "

    const-string v8, " "

    const-string v9, " "

    invoke-static {p1, v7, v8, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    const-string v9, " "

    invoke-static {p2, p3, v8, v9, v7}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v8, " "

    const-string v9, " "

    invoke-static {v7, p4, v8, p5, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "InputManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setRemapGamepadStick "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " : "

    const-string v9, " "

    invoke-static {p1, p2, v8, v9, v7}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p0, " "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final setSecAccessoryManagerCallbacks(Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mSecAccessoryManagerCallbacks:Lcom/android/server/input/InputManagerService$SecAccessoryManagerCallbacks;

    return-void
.end method

.method public final setSensorPrivacy(IZ)V
    .locals 1

    const-class p0, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorPrivacyManagerInternal;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/SensorPrivacyManagerInternal;->setPhysicalToggleSensorPrivacy(IIZ)V

    return-void
.end method

.method public final setShowAllTouches(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->showAllTouches(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "show all touches : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setStartedShutdown(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->IFW_KEY_COUNTER:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mInputKeyCounter:Lcom/android/server/input/InputKeyCounter;

    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter;->mCurrentKeyCount:Lcom/android/server/input/InputKeyCounter$HwKeyCount;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputKeyCounter$HwKeyCount;->mKeyCountMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "persist.service.bgkeycount"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final setSystemUiLightsOut(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOut(Z)V

    return-void
.end method

.method public final setSystemUiLightsOut(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setSystemUiLightsOutForDisplay(ZI)V

    return-void
.end method

.method public final setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3

    const-string/jumbo v0, "android.permission.SET_INPUT_CALIBRATION"

    const-string/jumbo v1, "setTouchCalibrationForInputDevice()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "inputDeviceDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "calibration must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_1

    const/4 v0, 0x3

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1, p1}, Lcom/android/server/input/PersistentDataStore;->getOrCreateInputDeviceState(Ljava/lang/String;)Lcom/android/server/input/PersistentDataStore$InputDeviceState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aget-object v2, v2, p2

    invoke-virtual {p3, v2}, Landroid/hardware/input/TouchCalibration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore$InputDeviceState;->mTouchCalibration:[Landroid/hardware/input/TouchCalibration;

    aput-object p3, p1, p2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    iput-boolean p1, v1, Lcom/android/server/input/PersistentDataStore;->mDirty:Z

    iget-object p1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p1}, Lcom/android/server/input/NativeInputManagerService;->reloadCalibration()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "InputManager"

    const-string p3, "Cannot set touch calibration."

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "surfaceRotation value out of bounds"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires SET_INPUT_CALIBRATION permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTspEnabled(IZ)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const-string v2, "InputManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setTspEnabled: system not ready"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemInputDeviceManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->SPAY:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpayEnable(I)I

    if-eqz p2, :cond_1

    const-string/jumbo p0, "true"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "false"

    :goto_0
    const-string/jumbo p1, "persist.service.tspcmd.spay"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->STYLUS:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setStylusEnable(I)I

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/hardware/input/InputManager$SemTspCommandType;->BRUSH:Landroid/hardware/input/InputManager$SemTspCommandType;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager$SemTspCommandType;->getvalue()I

    move-result v0

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setBrushEnable(I)I

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setEnableTSP cmdtype: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " enable: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "only system signature can use setEnableTSP(), but UID("

    const-string p2, ") has not system signature"

    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setUseLargePointerIcons(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/PointerIconCache;Z)V

    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mControlWakeKey:Lcom/android/server/input/ControlWakeKey;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    return-void
.end method

.method public final setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    return-void
.end method

.method public final shouldInterceptShortcuts(Landroid/os/IBinder;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v2, "android.permission.OVERRIDE_SYSTEM_KEY_BEHAVIOR_IN_FOCUSED_WINDOW"

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final showingTouchSensitivityNotificationIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivity()I

    move-result v0

    const-string/jumbo v1, "showingTouchSensitivityNotificationIfNeeded, mAutoAdjustTouch="

    const-string v2, " count="

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    const-string v3, "InputManager"

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    const-string/jumbo p0, "Notification manager is null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    iget v1, p0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    if-ne v0, v1, :cond_3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v1, 0x1040ee5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const v2, 0x1040ee4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x3

    const-string/jumbo v5, "TouchSensitivityNoti"

    invoke-direct {v3, v5, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080602

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->createPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-array v1, v1, [Landroid/app/Notification$Action;

    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/input/InputManagerService;->buildTurnOnAction(I)Landroid/app/Notification$Action;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->increaseTouchSensitivityNotiCount()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 4

    const-string v0, "InputManager"

    const-string/jumbo v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0}, Lcom/android/server/input/NativeInputManagerService;->start()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->registerFlowPointerSettingObserver()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->registerMultiFingerTapBehavior(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->registerMultiFingerTapBehavior(I)V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/input/InputManagerService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final startDragAndDrop(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;ZZ)Z

    move-result p0

    return p0
.end method

.method public final supportPogoDevice()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const/4 v1, 0x0

    const-string v2, "InputManager"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "supportPogoDevice: system not ready, , caller="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemInputDeviceManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getSupportDevice(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string/jumbo p0, "supportPogoDevice: "

    invoke-static {p0, v2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public final switchDeviceWirelessKeyboardShare(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "switchDeviceWirelessKeyboardShare : called by not allowed app"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->switchDevice(ILjava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "InputManager"

    const-string/jumbo v0, "switchDeviceWirelessKeyboardShare : "

    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final switchWirelessKeyboardShare(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->enableWirelessKeyboardShare(Z)V

    return-void
.end method

.method public final systemRunning()V
    .locals 17

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InputManager"

    const-string/jumbo v2, "System ready."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v0, Lcom/android/server/input/InputManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mSettingsObserver:Lcom/android/server/input/InputSettingsObserver;

    iget-object v2, v1, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v6, v1, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/input/InputSettingsObserver$1;

    invoke-direct {v3, v1}, Lcom/android/server/input/InputSettingsObserver$1;-><init>(Lcom/android/server/input/InputSettingsObserver;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.USER_SWITCHED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/input/InputSettingsObserver;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v6, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/input/InputSettingsObserver;->mObservers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    const-string/jumbo v6, "just booted"

    invoke-interface {v3, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string/jumbo v3, "Setting user activity interval (ms) of "

    const-string v6, "InputManager"

    invoke-static {v2, v3, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/server/input/NativeInputManagerService;->setMinTimeBetweenUserActivityPokes(J)V

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v4, v0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v3, -0x100

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v6}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v2

    move v7, v6

    :goto_2
    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    iget-object v9, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    if-nez v2, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    move v10, v6

    :goto_3
    invoke-interface {v9, v10}, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;->notifyLidSwitchChanged(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v7, 0x17

    invoke-interface {v2, v5, v3, v7}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move v2, v6

    :goto_4
    iget-object v7, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    iget-object v7, v0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v2, 0xe

    invoke-interface {v1, v5, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-virtual {v0, v4, v4}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_6
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v2, 0x9

    invoke-interface {v1, v5, v3, v2}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v4, :cond_7

    invoke-virtual {v0, v2, v4}, Lcom/android/server/input/InputManagerService;->setSensorPrivacy(IZ)V

    :cond_7
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v7, 0x1e

    invoke-interface {v1, v5, v3, v7}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_8

    iput-boolean v4, v0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateWacomMode()V

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getTouchSensitivityNotiCount()I

    move-result v1

    iput v1, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCount:I

    iput v1, v0, Lcom/android/server/input/InputManagerService;->mShowingTouchSensitivityNotiCountOld:I

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v7, 0x1d

    invoke-interface {v1, v5, v3, v7}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    move-result v1

    if-ne v1, v4, :cond_9

    iput-boolean v4, v0, Lcom/android/server/input/InputManagerService;->mPaperCoverNotificationPending:Z

    :cond_9
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/input/InputManagerService$2;

    const/4 v7, 0x4

    invoke-direct {v5, v0, v7}, Lcom/android/server/input/InputManagerService$2;-><init>(Lcom/android/server/input/InputManagerService;I)V

    iget-object v7, v0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v3, v5, v1, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mWiredAccessoryCallbacks:Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;

    if-eqz v1, :cond_a

    check-cast v1, Lcom/android/server/WiredAccessoryManager;

    iget-object v3, v1, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v5, v1, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, v1, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    invoke-virtual {v5, v2, v6, v6, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/WiredAccessoryManager;->mHandler:Lcom/android/server/WiredAccessoryManager$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v3

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->checkInputFeature()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v2, v1}, Lcom/android/server/input/NativeInputManagerService;->setTspFeatures(I)V

    iget-boolean v1, v0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->sendPogoKeyboardStatus(Z)V

    iput-boolean v6, v0, Lcom/android/server/input/InputManagerService;->mAddingPogoKeyboardIntentPending:Z

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->initTspCmdForSpay()V

    iget-object v2, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    :try_start_2
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/input/PersistentDataStore;->getNumLockState()Z

    move-result v1

    iget-object v3, v0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/16 v5, 0x20

    invoke-interface {v3, v5, v1}, Lcom/android/server/input/NativeInputManagerService;->updateInputMetaState(IZ)V

    const-string v3, "InputManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readNumLock : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLayoutManager:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/input/KeyboardLayoutManager$2;

    invoke-direct {v5, v1}, Lcom/android/server/input/KeyboardLayoutManager$2;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    iget-object v7, v1, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v3, v1, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    iget-object v2, v1, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    iget-object v5, v1, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    move v5, v6

    :goto_6
    if-ge v5, v3, :cond_c

    aget v7, v2, v5

    iget-object v9, v1, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    invoke-virtual {v9, v7}, Lcom/android/server/input/BatteryController$1;->onInputDeviceAdded(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mSysfsNodeMonitor:Lcom/android/server/input/SysfsNodeMonitor;

    iget-object v2, v1, Lcom/android/server/input/SysfsNodeMonitor;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v3, v1, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Lcom/android/server/input/SysfsNodeMonitor$1;

    iget-object v5, v1, Lcom/android/server/input/SysfsNodeMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v2, v1, Lcom/android/server/input/SysfsNodeMonitor;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    move v5, v6

    :goto_7
    if-ge v5, v3, :cond_d

    aget v7, v2, v5

    iget-object v9, v1, Lcom/android/server/input/SysfsNodeMonitor;->mInputDeviceListener:Lcom/android/server/input/SysfsNodeMonitor$1;

    invoke-virtual {v9, v7}, Lcom/android/server/input/SysfsNodeMonitor$1;->onInputDeviceAdded(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    iget-object v2, v1, Lcom/android/server/input/KeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/input/KeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, v1, Lcom/android/server/input/KeyboardBacklightController;->mAmbientController:Lcom/android/server/input/AmbientKeyboardBacklightController;

    iget-object v2, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/input/AmbientKeyboardBacklightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyboardLedController:Lcom/android/server/input/KeyboardLedController;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v3, v1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/input/KeyboardLedController;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v9, v1, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/input/KeyboardLedController;->mMicrophoneMuteChangedIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v12, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/input/KeyboardLedController;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/input/KeyboardLedController;->mVolumeMuteIntentReceiver:Lcom/android/server/input/KeyboardLedController$1;

    new-instance v14, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v14, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    move-object/from16 v16, v1

    move-object v13, v11

    move-object v11, v2

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyRemapper:Lcom/android/server/input/KeyRemapper;

    iget-object v1, v1, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mPointerIconCache:Lcom/android/server/input/PointerIconCache;

    iget-object v2, v1, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    iget-object v4, v1, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    :goto_8
    array-length v3, v2

    if-ge v6, v3, :cond_e

    iget-object v3, v1, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Lcom/android/server/input/PointerIconCache$1;

    aget-object v4, v2, v6

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/input/PointerIconCache$1;->onDisplayAdded(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    invoke-virtual {v1}, Lcom/android/server/input/GamePadRemapper;->systemRunning()V

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyboardGlyphManager:Lcom/android/server/input/KeyboardGlyphManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/input/KeyboardGlyphManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/input/KeyboardGlyphManager$1;

    invoke-direct {v4, v1}, Lcom/android/server/input/KeyboardGlyphManager$1;-><init>(Lcom/android/server/input/KeyboardGlyphManager;)V

    iget-object v1, v1, Lcom/android/server/input/KeyboardGlyphManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {v1}, Lcom/android/server/input/KeyGestureController;->systemRunning()V

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->initKeyGestures()V

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_9
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final transferTouch(Landroid/os/IBinder;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "destChannelToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->transferTouch(Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method

.method public final transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;Z)Z
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/server/input/NativeInputManagerService;->transferTouchGesture(Landroid/os/IBinder;Landroid/os/IBinder;ZZ)Z

    move-result p0

    return p0
.end method

.method public final tryPointerSpeed(I)V
    .locals 2

    const-string/jumbo v0, "android.permission.SET_POINTER_SPEED"

    const-string/jumbo v1, "tryPointerSpeed()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x7

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->setPointerSpeedUnchecked(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires SET_POINTER_SPEED permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 7

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mBatteryController:Lcom/android/server/input/BatteryController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "Cannot unregister battery callback: The device is not being monitored for deviceId "

    const-string v2, "Cannot unregister battery callback: The listener is not the one that is registered for pid "

    const-string v3, "Cannot unregister battery callback: No listener registered for pid "

    iget-object v4, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/input/BatteryController$ListenerRecord;

    if-eqz v5, :cond_2

    iget-object v3, v5, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v3}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne v3, p2, :cond_1

    iget-object p2, v5, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/input/BatteryController;->unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterKeyEventActivityListener(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .locals 1

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyEventActivityListener_enforcePermission()V

    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/server/input/InputManagerService;->unregisterKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z

    move-result p0

    return p0
.end method

.method public final unregisterKeyEventActivityListenerInternal(Landroid/hardware/input/IKeyEventActivityListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyEventActivityListenersToNotify:Ljava/util/List;

    new-instance v1, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda13;-><init>(Landroid/hardware/input/IKeyEventActivityListener;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterKeyGestureEventListener(Landroid/hardware/input/IKeyGestureEventListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v3}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has a different registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has no registered KeyGestureEventListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterKeyGestureHandler(Landroid/hardware/input/IKeyGestureHandler;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->enforceManageKeyGesturePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v3}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {p1}, Landroid/hardware/input/IKeyGestureHandler;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyGestureController;->onKeyGestureHandlerRemoved(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has a different registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has no registered KeyGestureHandler."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    .locals 4

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterKeyboardBacklightListener_enforcePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyboardBacklightController:Lcom/android/server/input/KeyboardBacklightController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v3}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightListenerRecord;->mListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {p1}, Landroid/hardware/input/IKeyboardBacklightListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController;->mKeyboardBacklightListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has a different registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has no registered KeyboardBacklightListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mLidSwitchCallbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterSensorListener: listener="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;

    iget-object v2, v2, Lcom/android/server/input/InputManagerService$SensorEventListenerRecord;->mListener:Landroid/hardware/input/IInputSensorEventListener;

    invoke-interface {v2}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/input/IInputSensorEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v2, p1, :cond_1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mSensorEventListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener is not registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterStickyModifierStateListener(Landroid/hardware/input/IStickyModifierStateListener;)V
    .locals 4

    invoke-super {p0}, Landroid/hardware/input/IInputManager$Stub;->unregisterStickyModifierStateListener_enforcePermission()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mStickyModifierStateController:Lcom/android/server/input/StickyModifierStateController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {v3}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v3, p1, :cond_0

    iget-object p1, v2, Lcom/android/server/input/StickyModifierStateController$StickyModifierStateListenerRecord;->mListener:Landroid/hardware/input/IStickyModifierStateListener;

    invoke-interface {p1}, Landroid/hardware/input/IStickyModifierStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/android/server/input/StickyModifierStateController;->mStickyModifierStateListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has a different registered StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has no registered StickyModifierStateListener."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .locals 5

    const-string/jumbo v0, "Vibrator state listener "

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mVibratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string p0, "InputManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mVibratorStateListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return p0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final unsetTypeAssociationInternal(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAssociationsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mDeviceTypeAssociations:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->changeTypeAssociation()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateAdditionalDisplayInputProperties(ILjava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputPropertiesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v3, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    iget-boolean v4, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-eq v3, p2, :cond_1

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v3, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setPointerIconVisibility(IZ)V

    :cond_1
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    if-eq v4, p2, :cond_2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v3, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->setMouseScalingEnabled(IZ)V

    :cond_2
    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->mouseScalingEnabled:Z

    if-ne p2, v2, :cond_3

    iget-boolean p2, v1, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne p2, v2, :cond_3

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mAdditionalDisplayInputProperties:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDeviceToGamepadProfile(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "updateDeviceToGamepadProfile"

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->checkSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "InputManager"

    const-string/jumbo v1, "updateDeviceToGamepadProfile :"

    const-string v2, " "

    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mGamePadRemapper:Lcom/android/server/input/GamePadRemapper;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "InputManager-GamePadRemapper"

    const-string/jumbo p1, "removeDeviceToGamepadProfile : bt addr is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/input/GamePadRemapper;->isValidId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    const-string v0, "InputManager-GamePadRemapper"

    const-string/jumbo v1, "updateDeviceToGamepadProfile : "

    const-string v2, " "

    invoke-static {v1, v2, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFlowPointerSettings()V
    .locals 5

    const-string v0, "InputManager"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dex_flow_pointer"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to get settings SETTINGS_DEX_FLOW_POINTER"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->enableFlowPointer(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateFlowPointerSettings : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateFocusEventDebugViewEnabled()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz v4, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-ne v0, v5, :cond_3

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    new-instance v4, Lcom/android/server/input/debug/FocusEventDebugView;

    iget-object v5, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    new-instance v7, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;I)V

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/android/server/input/debug/FocusEventDebugView;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v4, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_5

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void

    :cond_5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v5, 0x7df

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x118

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "FocusEventDebugView - display "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateMultiFingerTapBehavior(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "three_finger_gesture"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->getMultiFingerGestureBehavior(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentThreeTapBehavior:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "four_finger_gesture"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/InputManagerService;->getMultiFingerGestureBehavior(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/InputManagerService;->mCurrentFourTapBehavior:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string/jumbo p0, "updateMultiFingerTapBehavior : "

    const-string v0, "InputManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updatePointerLocationEnabled(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;

    check-cast p0, Lcom/android/server/wm/InputManagerCallback;

    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/InputManagerCallback;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InputManagerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InputManagerCallback;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplayPolicies(Ljava/util/function/Consumer;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateShowKeyPresses(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowKeyPresses:Z

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateShowRotaryInput(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/InputManagerService;->mShowRotaryInput:Z

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateFocusEventDebugViewEnabled()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugViewLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mFocusEventDebugView:Lcom/android/server/input/debug/FocusEventDebugView;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateTouchpadVisualizerEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {v0, p1}, Lcom/android/server/input/NativeInputManagerService;->setShouldNotifyTouchpadHardwareState(Z)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mTouchpadDebugViewController:Lcom/android/server/input/debug/TouchpadDebugViewController;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadVisualizerEnabled:Z

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/android/server/input/debug/TouchpadDebugViewController;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    :cond_2
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final updateWacomMode()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    const-string v1, "InputManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateWacomMode: system not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mPogoKeyboardConnected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService;->mSpenCoverAttached:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SemInputDeviceManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateWacomMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenCoverType(I)I

    iput v0, p0, Lcom/android/server/input/InputManagerService;->mLastWacomMode:I

    :cond_3
    return-void
.end method

.method public final updateWirelessKeyboardShareStatus()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService;->mInputWirelessKeyboardMouseShareLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mWirelessKeyboardMouseShare:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->updateWirelessKeyboardShareStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;
    .locals 1

    const-string/jumbo v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object p0

    return-object p0
.end method

.method public final vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .locals 7

    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p2

    monitor-enter p2

    const/4 p3, 0x1

    :try_start_0
    iput-boolean p3, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    iget v5, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    iget v6, p2, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .locals 7

    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/InputManagerService;->getVibratorToken(ILandroid/os/IBinder;)Lcom/android/server/input/InputManagerService$VibratorToken;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/os/CombinedVibration$Stereo;

    if-nez v0, :cond_0

    const-string p0, "InputManager"

    const-string/jumbo p1, "Only Mono and Stereo effects are supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mVibrating:Z

    instance-of v0, p2, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/os/CombinedVibration$Mono;

    new-instance v0, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v3, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    iget-object v4, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    iget v5, v0, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    iget v6, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/server/input/NativeInputManagerService;->vibrate(I[J[III)V

    goto :goto_1

    :cond_1
    move v1, p1

    instance-of p1, p2, Landroid/os/CombinedVibration$Stereo;

    if-eqz p1, :cond_5

    check-cast p2, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [J

    new-instance v3, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/high16 v2, -0x80000000

    move v4, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge p2, v5, :cond_4

    new-instance v5, Lcom/android/server/input/InputManagerService$VibrationInfo;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    invoke-direct {v5, v6}, Lcom/android/server/input/InputManagerService$VibrationInfo;-><init>(Landroid/os/VibrationEffect;)V

    array-length v6, v0

    if-nez v6, :cond_2

    iget-object v0, v5, Lcom/android/server/input/InputManagerService$VibrationInfo;->mPattern:[J

    :cond_2
    if-ne v4, v2, :cond_3

    iget v4, v5, Lcom/android/server/input/InputManagerService$VibrationInfo;->mRepeat:I

    :cond_3
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v5, v5, Lcom/android/server/input/InputManagerService$VibrationInfo;->mAmplitudes:[I

    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget v5, p3, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    move-object v2, v0

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/input/NativeInputManagerService;->vibrateCombined(I[JLandroid/util/SparseArray;II)V

    :cond_5
    :goto_1
    monitor-exit p3

    return-void

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final wakeUp(JILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "wakeup -"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final wakeUpWhenPogoConnected(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object p1

    long-to-int v2, v0

    iput v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/16 v0, 0x12

    iput v0, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    const-string/jumbo v0, "android.policy:POGO_CONNECT"

    iput-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mHandler:Lcom/android/server/input/InputManagerService$InputManagerHandler;

    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
