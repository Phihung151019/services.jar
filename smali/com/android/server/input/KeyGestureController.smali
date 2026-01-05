.class public final Lcom/android/server/input/KeyGestureController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static final mUserLock:Ljava/lang/Object;


# instance fields
.field final mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public mAltTabConsumedBySplit:Z

.field public final mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

.field public final mConsumedKeysForDevice:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public mFocusedDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mHasFeatureLeanback:Z

.field public final mHasFeatureWatch:Z

.field public final mInputDataStore:Lcom/android/server/input/InputDataStore;

.field public final mInputGestureManager:Lcom/android/server/input/InputGestureManager;

.field public final mIoHandler:Landroid/os/Handler;

.field public final mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field public final mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

.field public final mKeyGestureHandlerRecords:Landroid/util/SparseArray;

.field public final mLastHandledEvents:Ljava/util/ArrayDeque;

.field public mLastModifierState:I

.field public mPendingCapsLockToggle:Z

.field public mPendingHideRecentSwitcher:Z

.field public mPendingMetaAction:Z

.field public mPowerVolUpBehavior:I

.field public mRingerToggleChord:I

.field public final mSearchKeyBehavior:I

.field public final mSettingsKeyBehavior:I

.field public final mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

.field public final mShortcutMap:Ljava/util/HashMap;

.field public final mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

.field public final mSystemPid:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mVisibleBackgroundUsersEnabled:Z

.field public mWindowManagerCallbacks:Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# direct methods
.method public static -$$Nest$mhandleMultiKeyGesture(Lcom/android/server/input/KeyGestureController;[IIII)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "KeyGestureController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/InputDataStore;Lcom/android/server/input/KeyGestureController$Injector;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mFocusedDisplayId:I

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/KeyGestureController;->mShortcutMap:Ljava/util/HashMap;

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mLastModifierState:I

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-direct {v2, p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    new-instance v3, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-direct {p2, p3, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    new-instance p2, Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p2, v2}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance p3, Lcom/android/server/input/KeyGestureController$SettingsObserver;

    invoke-direct {p3, p0, v2}, Lcom/android/server/input/KeyGestureController$SettingsObserver;-><init>(Lcom/android/server/input/KeyGestureController;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    new-instance p3, Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-direct {p3, p1}, Lcom/android/server/input/AppLaunchShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    new-instance p3, Lcom/android/server/input/InputGestureManager;

    invoke-direct {p3}, Lcom/android/server/input/InputGestureManager;-><init>()V

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p3, p1, v2, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    const-class p3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/display/DisplayManager;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p4, p0, Lcom/android/server/input/KeyGestureController;->mInputDataStore:Lcom/android/server/input/InputDataStore;

    const-class p3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/UserManagerInternal;

    iput-object p3, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string/jumbo p4, "android.hardware.type.watch"

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    const-string/jumbo p4, "android.software.leanback"

    invoke-virtual {p3, p4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x10e0166

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p4

    iput p4, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    if-ltz p4, :cond_0

    const/4 p5, 0x1

    if-le p4, p5, :cond_1

    :cond_0
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    :cond_1
    const p4, 0x10e0169

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    if-ltz p3, :cond_2

    const/4 p4, 0x2

    if-le p3, p4, :cond_3

    :cond_2
    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    :cond_3
    new-instance p3, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-virtual {v2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1110191

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean p1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureWatch:Z

    if-eqz p1, :cond_5

    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x3

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_5
    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x4

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean p1, p0, Lcom/android/server/input/KeyGestureController;->mHasFeatureLeanback:Z

    if-eqz p1, :cond_6

    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_6
    new-instance p1, Lcom/android/server/input/KeyGestureController$3;

    const/4 p3, 0x6

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/KeyGestureController$3;-><init>(Lcom/android/server/input/KeyGestureController;I)V

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :goto_0
    const/16 p1, 0x1e

    const-string/jumbo p2, "app_shortcuts_command_b"

    const/16 p3, 0x1f

    const-string/jumbo p4, "app_shortcuts_command_c"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x20

    const-string/jumbo p2, "app_shortcuts_command_d"

    const/16 p3, 0x21

    const-string/jumbo p4, "app_shortcuts_command_e"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x22

    const-string/jumbo p2, "app_shortcuts_command_f"

    const/16 p3, 0x24

    const-string/jumbo p4, "app_shortcuts_command_h"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x25

    const-string/jumbo p2, "app_shortcuts_command_i"

    const/16 p3, 0x26

    const-string/jumbo p4, "app_shortcuts_command_j"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x27

    const-string/jumbo p2, "app_shortcuts_command_k"

    const/16 p3, 0x29

    const-string/jumbo p4, "app_shortcuts_command_m"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x2b

    const-string/jumbo p2, "app_shortcuts_command_o"

    const/16 p3, 0x2c

    const-string/jumbo p4, "app_shortcuts_command_p"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x2e

    const-string/jumbo p2, "app_shortcuts_command_r"

    const/16 p3, 0x2f

    const-string/jumbo p4, "app_shortcuts_command_s"

    invoke-static {p1, v1, p2, p3, p4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 p1, 0x36

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "app_shortcuts_command_z"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/input/KeyGestureController;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-void
.end method

.method public static createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;
    .locals 1

    new-instance v0, Landroid/hardware/input/AidlKeyGestureEvent;

    invoke-direct {v0}, Landroid/hardware/input/AidlKeyGestureEvent;-><init>()V

    iput p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iput-object p1, v0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_COMBINATION_SCREENSHOT_SIDE_KEY:Z

    if-eqz p0, :cond_0

    iput-object p2, v0, Landroid/hardware/input/AidlKeyGestureEvent;->eventTimes:[J

    :cond_0
    iput p3, v0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iput p4, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iput p5, v0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iput p6, v0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iput p7, v0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-eqz p8, :cond_4

    instance-of p0, p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz p0, :cond_1

    check-cast p8, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    return-object v0

    :cond_1
    instance-of p0, p8, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz p0, :cond_2

    check-cast p8, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    return-object v0

    :cond_2
    instance-of p0, p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz p0, :cond_3

    check-cast p8, Landroid/hardware/input/AppLaunchData$ComponentData;

    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p8}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppLaunchData type is invalid!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 6

    const-string/jumbo v0, "mCurrentUserId = "

    const-string v1, "KeyGestureController:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v1, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSystemPid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSystemPid:I

    const-string/jumbo v2, "mPendingMetaAction = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingMetaAction:Z

    const-string/jumbo v2, "mPendingCapsLockToggle = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingCapsLockToggle:Z

    const-string/jumbo v2, "mPendingHideRecentSwitcher = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mPendingHideRecentSwitcher:Z

    const-string/jumbo v2, "mSearchKeyBehavior = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/devicepolicy/DeviceStateCacheImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSearchKeyBehavior:I

    const-string/jumbo v2, "mSettingsKeyBehavior = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mSettingsKeyBehavior:I

    const-string/jumbo v2, "mRingerToggleChord = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    const-string/jumbo v2, "mPowerVolUpBehavior = "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyGestureEventListenerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureEventListenerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, ", "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_2
    const-string/jumbo v0, "mKeyGestureHandlerRecords = {"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    const-string v4, ", "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSupportedKeyGestures = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "Last handled KeyGestureEvents: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mLastHandledEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyGestureEvent;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AppLaunchShortcutManager:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "InputGestureManager:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v0, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "System Shortcuts:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    :catchall_2
    move-exception p0

    goto/16 :goto_a

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Blocklisted Triggers:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputGestureData$Trigger;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "Custom Gestures:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_8
    if-ge v2, v1, :cond_9

    iget-object v3, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/input/InputGestureManager;->mCustomInputGestures:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputGestureData;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :goto_a
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_b
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_c
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method public handleKeyGesture(I[IIIIILandroid/os/IBinder;ILandroid/hardware/input/AppLaunchData;)V
    .locals 10

    const/4 v0, 0x0

    new-array v3, v0, [J

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    move-object/from16 p2, p7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    return-void
.end method

.method public final handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "Key gesture: "

    iget-boolean v1, p0, Lcom/android/server/input/KeyGestureController;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-eqz v1, :cond_0

    iget v2, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget-object v3, p0, Lcom/android/server/input/KeyGestureController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v1

    sget-object v3, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v1, :cond_0

    invoke-static {v2}, Landroid/hardware/input/KeyGestureEvent;->isVisibleBackgrounduserAllowedGesture(I)Z

    move-result v3

    if-nez v3, :cond_0

    sget-boolean p0, Lcom/android/server/input/KeyGestureController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "KeyGestureController"

    const-string p1, "Ignored gesture event ["

    const-string/jumbo p2, "] for visible background user ["

    const-string/jumbo v0, "]"

    invoke-static {v2, v1, p1, p2, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    iget v3, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    const-string p0, "KeyGestureController"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, v0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v2, p1, p2}, Landroid/hardware/input/IKeyGestureHandler;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send key gesture to process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyGestureController"

    invoke-static {v3, v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->binderDied()V

    :goto_0
    iget-object p2, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyGestureController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    :cond_2
    return-void

    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final initBehaviorsFromSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/input/KeyGestureController;->mRingerToggleChord:I

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string/jumbo v2, "key_chord_power_volume_up"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/KeyGestureController;->mPowerVolUpBehavior:I

    return-void
.end method

.method public final onKeyGestureHandlerRemoved(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mKeyGestureHandlerRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/server/input/KeyGestureController;->mSupportedKeyGestureToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final systemRunning()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mSettingsObserver:Lcom/android/server/input/KeyGestureController$SettingsObserver;

    iget-object v4, v0, Lcom/android/server/input/KeyGestureController$SettingsObserver;->this$0:Lcom/android/server/input/KeyGestureController;

    iget-object v4, v4, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volume_hush_gesture"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v5, "key_chord_power_volume_up"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "AppShortcutManager"

    :try_start_0
    iget-object v8, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1170007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    const-string/jumbo v9, "bookmarks"

    invoke-static {v8, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    :goto_0
    invoke-static {v8}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    if-ne v9, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v9, "bookmark"

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v0, "TAG_BOOKMARK not found"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move/from16 v18, v2

    const/high16 v16, 0x10000

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move/from16 v18, v2

    const/high16 v16, 0x10000

    goto/16 :goto_6

    :cond_1
    const-string/jumbo v9, "package"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "class"

    invoke-interface {v8, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "category"

    invoke-interface {v8, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "shift"

    invoke-interface {v8, v10, v13}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "role"

    invoke-interface {v8, v10, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "shortcut"

    invoke-interface {v8, v10, v15}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v16, 0x10000

    :try_start_1
    sget-object v5, Lcom/android/internal/R$styleable;->Bookmark:[I

    invoke-virtual {v10, v8, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v5, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v10, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v18, v2

    :try_start_4
    new-array v2, v3, [C

    aput-char v5, v2, v18

    invoke-virtual {v6, v2}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v5, v2

    const/4 v3, 0x2

    if-ne v5, v3, :cond_3

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move/from16 v18, v2

    goto/16 :goto_6

    :cond_2
    move/from16 v18, v2

    :cond_3
    :goto_2
    const-string v2, " modifierState="

    if-nez v10, :cond_5

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keycode required for bookmark with category="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " className="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " role="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " shiftName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " shortcut="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    move/from16 v2, v18

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v7, :cond_7

    if-eqz v13, :cond_6

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    move/from16 v3, v18

    :goto_4
    or-int v7, v3, v16

    :cond_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v9, v11}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    goto :goto_5

    :cond_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v12}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForCategory(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v14}, Landroid/hardware/input/AppLaunchData;->createLaunchDataForRole(Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v3

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "adding shortcut "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keycode="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {v2}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    invoke-static {v10, v7}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v2

    const/16 v5, 0x33

    invoke-virtual {v2, v5}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move/from16 v18, v2

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    const-string v2, "Got exception parsing bookmarks."

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mInputGestureManager:Lcom/android/server/input/InputGestureManager;

    iget-object v2, v1, Lcom/android/server/input/KeyGestureController;->mAppLaunchShortcutManager:Lcom/android/server/input/AppLaunchShortcutManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/input/AppLaunchShortcutManager;->mBookmarks:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0x11

    new-array v4, v4, [Landroid/hardware/input/InputGestureData;

    const/16 v5, 0x1d

    const/4 v6, 0x5

    move/from16 v7, v16

    invoke-static {v5, v7, v6}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    aput-object v5, v4, v18

    const/16 v5, 0x24

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0x42

    invoke-static {v5, v7, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v9

    const/16 v17, 0x2

    aput-object v9, v4, v17

    const/16 v8, 0x25

    const/4 v9, 0x7

    invoke-static {v8, v7, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v4, v10

    const/16 v8, 0x28

    const/16 v11, 0x20

    invoke-static {v8, v7, v11}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v12

    const/4 v13, 0x4

    aput-object v12, v4, v13

    const v12, 0x10001

    const/16 v13, 0x3ea

    invoke-static {v8, v12, v13}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v8

    aput-object v8, v4, v6

    const/16 v6, 0x2a

    const/16 v8, 0x8

    invoke-static {v6, v7, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/4 v13, 0x6

    aput-object v6, v4, v13

    const/16 v6, 0x2f

    const v13, 0x11000

    const/16 v14, 0xa

    invoke-static {v6, v13, v14}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v15

    aput-object v15, v4, v9

    invoke-static {v6, v12, v14}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    aput-object v6, v4, v8

    const/16 v6, 0x6f

    invoke-static {v6, v7, v10}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v4, v7

    const/16 v6, 0x13

    const/16 v7, 0x35

    invoke-static {v6, v13, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    aput-object v6, v4, v14

    const/16 v6, 0x14

    const/16 v7, 0x34

    invoke-static {v6, v13, v7}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v4, v7

    const/16 v6, 0x15

    const/high16 v8, 0x10000

    invoke-static {v6, v8, v10}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v9

    const/16 v8, 0xc

    aput-object v9, v4, v8

    const/16 v9, 0x1b

    invoke-static {v6, v13, v9}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v9, 0xd

    aput-object v6, v4, v9

    const/16 v6, 0x16

    const/16 v12, 0x1c

    invoke-static {v6, v13, v12}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v12, 0xe

    aput-object v6, v4, v12

    const/16 v6, 0x4c

    const/high16 v12, 0x10000

    invoke-static {v6, v12, v8}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v15, 0xf

    aput-object v6, v4, v15

    const/16 v6, 0x3d

    const/4 v15, 0x2

    invoke-static {v6, v12, v15}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    const/16 v12, 0x10

    aput-object v6, v4, v12

    invoke-static {v4}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v4, "1"

    const-string/jumbo v6, "ro.debuggable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x43

    if-eqz v4, :cond_b

    const/16 v4, 0x1f

    invoke-static {v6, v13, v4}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const/16 v4, 0x3e

    invoke-static {v11, v13, v4}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/window/DesktopModeFlags;->ENABLE_TASK_RESIZING_KEYBOARD_SHORTCUTS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v4}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x47

    const/16 v11, 0x44

    const/high16 v12, 0x10000

    invoke-static {v4, v12, v11}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x48

    const/16 v13, 0x45

    invoke-static {v11, v12, v13}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x46

    invoke-static {v11, v12, v4}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v12, v11}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const v4, 0x10002

    const/16 v11, 0x41

    invoke-static {v14, v4, v11}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-static {v7, v4, v6}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const/16 v6, 0x40

    invoke-static {v8, v4, v6}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v4, v5}, Lcom/android/server/input/InputGestureManager;->createKeyGesture(III)Landroid/hardware/input/InputGestureData;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, v18

    :goto_8
    if-ge v6, v5, :cond_e

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/16 v19, 0x1

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/hardware/input/InputGestureData;

    iget-object v8, v0, Lcom/android/server/input/InputGestureManager;->mSystemShortcuts:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v9

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_e
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    sget-object v2, Lcom/android/server/input/InputGestureManager;->mGestureLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v18

    :goto_9
    if-ge v5, v4, :cond_f

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/16 v19, 0x1

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/hardware/input/InputGestureData;

    iget-object v7, v0, Lcom/android/server/input/InputGestureManager;->mBlockListedTriggers:Ljava/util/Set;

    invoke-virtual {v6}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v6

    check-cast v7, Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_f
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v0, v1, Lcom/android/server/input/KeyGestureController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/android/server/input/KeyGestureController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/KeyGestureController;)V

    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    sget-object v3, Lcom/android/server/input/KeyGestureController;->mUserLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget v0, v1, Lcom/android/server/input/KeyGestureController;->mCurrentUserId:I

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v1, v1, Lcom/android/server/input/KeyGestureController;->mIoHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :goto_a
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :goto_b
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method
