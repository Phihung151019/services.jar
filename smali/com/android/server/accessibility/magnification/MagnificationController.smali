.class public Lcom/android/server/accessibility/magnification/MagnificationController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;
.implements Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$MagnificationInfoChangedCallback;
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;


# static fields
.field public static final KEYBOARD_REPEAT_INTERVAL_MS:I = 0x3c


# instance fields
.field public final mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

.field public mActivePanDirections:[Z

.field public mActivePanDisplay:I

.field public mActiveZoomDirection:I

.field public mActiveZoomDisplay:I

.field public final mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

.field public mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public final mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

.field public final mHandler:Landroid/os/Handler;

.field public mInitialKeyboardRepeatIntervalMs:I

.field public final mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

.field public final mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

.field public mLastPannedTime:J

.field public final mLock:Ljava/lang/Object;

.field public mMagnificationCapabilities:I

.field public mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

.field public final mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

.field public final mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

.field public mRepeatKeysEnabled:Z

.field public final mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

.field public final mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

.field public final mSupportWindowMagnification:Z

.field public final mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

.field public final mTempPoint:Landroid/graphics/PointF;

.field public final mTransitionModes:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/MagnificationController;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDirections:[Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActivePanDisplay:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mRepeatKeysEnabled:Z

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDirection:I

    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mActiveZoomDisplay:I

    const/16 v1, 0x190

    iput v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    iput v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    iput-object p5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerInternal;->getAccessibilityController()Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v0, 0x800

    invoke-virtual {p2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_0
    iget-object p4, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-nez p4, :cond_1

    new-instance p4, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    iget-object p6, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p4, p2, p6, p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;-><init>(Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;Landroid/os/Looper;Lcom/android/server/accessibility/magnification/MagnificationController;)V

    iput-object p4, p2, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    invoke-direct {p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    new-instance p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p3, p2, Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAlwaysOnMagnificationFeatureFlag:Lcom/android/server/accessibility/magnification/AlwaysOnMagnificationFeatureFlag;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V

    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2, p5, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;)V

    :try_start_0
    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Accessibility window manager callback already set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTempPoint:Landroid/graphics/PointF;

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
    .locals 10

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    iget-object v8, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityTraceManager;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;Ljava/util/concurrent/Executor;Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda0;)V

    iput-object v2, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v6, p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v6, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getInitialKeyboardRepeatIntervalMs()I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mInitialKeyboardRepeatIntervalMs:I

    return p0
.end method

.method public final getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;
    .locals 8

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    iget-object v7, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleProvider:Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/magnification/MagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationScaleProvider;)V

    iput-object v2, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v5, p0

    :goto_0
    iget-object p0, v5, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isActivated(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-nez p0, :cond_2

    monitor-exit p2

    return v1

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p0

    monitor-exit p2

    return p0

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_3
    return v1
.end method

.method public final isFullScreenMagnificationControllerInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public logMagnificationModeWithIme(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationModeWithImeOn(I)V

    return-void
.end method

.method public final logMagnificationModeWithImeOnIfNeeded(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithIme(I)V

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

.method public logMagnificationUsageState(IJF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationUsageState(IJF)V

    return-void
.end method

.method public final onFullScreenMagnificationActivationState(IZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    const-string/jumbo v1, "onFullscreenMagnificationActivationChanged mConnectionWrapper is null. mConnectionState="

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->waitConnectionWithTimeoutIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MagnificationConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    invoke-static {v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v3, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "MagnificationConnectionWrapper.onFullscreenMagnificationActivationChanged"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    invoke-interface {v0, p1, p2}, Landroid/view/accessibility/IMagnificationConnection;->onFullscreenMagnificationActivationChanged(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v3}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :goto_2
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public final onFullScreenMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->shouldNotifyMagnificationChange(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mUserId:I

    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->onUserMagnificationScaleChanged(IFI)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    :cond_0
    return-void
.end method

.method public final onImeWindowVisibilityChanged(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mIsImeVisibleArray:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_1

    iget-object p2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    :goto_0
    :try_start_2
    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->setTrackingTypingFocusEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    iget-object p2, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-nez v0, :cond_2

    monitor-exit p2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-wide v1, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    sub-long/2addr v1, v5

    sget-object p2, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->SUM_TIME_UPDATER:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p2, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iput-wide v3, v0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mTrackingTypingFocusStartTime:J

    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    return-void

    :goto_3
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method public final onRectangleOnScreenRequested(IIIII)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal$UiChangesForAccessibilityCallbacks;->onRectangleOnScreenRequested(IIIII)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onRequestMagnificationSpec(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

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

.method public final onWindowMagnificationActivationState(IZ)V
    .locals 6

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationModeWithImeOnIfNeeded(I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->setCurrentMagnificationModeAndSwitchDelegate(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v1}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mWindowModeEnabledTimeArray:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v4

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLastActivatedScale:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->logMagnificationUsageState(IJF)V

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->updateMagnificationUIControls(II)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :goto_4
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final panMagnificationByStep(I[Z)V
    .locals 14

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string/jumbo p0, "MagnificationController"

    const-string v0, "Invalid number of panning directions"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-boolean v4, v0, v3

    const/4 v5, 0x1

    aget-boolean v6, v0, v5

    add-int/2addr v4, v6

    const/4 v6, 0x2

    aget-boolean v7, v0, v6

    add-int/2addr v4, v7

    const/4 v7, 0x3

    aget-boolean v8, v0, v7

    add-int/2addr v4, v8

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v8

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v8

    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mPanStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;

    iget-object v10, v9, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseDoubleArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_4

    invoke-virtual {v9, p1}, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->updateForDisplay(I)V

    :cond_4
    iget-object v10, v9, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepSlopes:Landroid/util/SparseDoubleArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v10

    float-to-double v12, v8

    mul-double/2addr v10, v12

    iget-object v9, v9, Lcom/android/server/accessibility/magnification/MagnificationController$DefaultMagnificationPanStepProvider;->mPanStepIntercepts:Landroid/util/SparseDoubleArray;

    invoke-virtual {v9, p1}, Landroid/util/SparseDoubleArray;->get(I)D

    move-result-wide v12

    add-double/2addr v12, v10

    double-to-float v9, v12

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    if-ne v4, v6, :cond_5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Landroid/util/MathUtils;->sqrt(F)F

    move-result v4

    div-float/2addr v9, v4

    :cond_5
    aget-boolean v3, v0, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    sub-float v3, v4, v9

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    aget-boolean v5, v0, v5

    if-eqz v5, :cond_7

    add-float/2addr v3, v9

    :cond_7
    aget-boolean v5, v0, v6

    if-eqz v5, :cond_8

    sub-float/2addr v4, v9

    :cond_8
    aget-boolean v0, v0, v7

    if-eqz v0, :cond_9

    add-float/2addr v4, v9

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result v2

    move v5, v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    add-float/2addr v3, v5

    add-float/2addr v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p1

    move v2, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->moveWindowMagnification(IFF)V

    :goto_3
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSystemClock:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;

    invoke-interface {v0}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastPannedTime:J

    return-void
.end method

.method public final scaleMagnificationByStep(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mScaleStepProvider:Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;->nextScaleStep(FI)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v2

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController$SystemClockImpl;->nextScaleStep(FI)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->setScale(FI)V

    :cond_1
    return-void
.end method

.method public final setCurrentMagnificationModeAndSwitchDelegate(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mCurrentMagnificationModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mAccessibilityCallbacksDelegateArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public final setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldNotifyMagnificationChange(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mFullScreenMagnificationController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isActivated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isWindowMagnifierEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mTransitionModes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-ne p2, v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4

    if-eqz v4, :cond_4

    :cond_3
    if-nez p0, :cond_4

    monitor-exit v0

    return v3

    :cond_4
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez p0, :cond_5

    monitor-exit v0

    return v3

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_6

    monitor-exit v0

    return v3

    :cond_6
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateMagnificationUIControls(II)V
    .locals 8

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    :try_start_0
    iget v5, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-ne v5, v4, :cond_0

    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    move v5, v2

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationCapabilities:I

    if-eq v0, v4, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x80

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz v3, :cond_4

    iget-object v5, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "displayId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ";mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "MagnificationConnectionWrapper.showMagnificationButton"

    invoke-virtual {v5, v7, v0, v1, v6}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    iget-object v3, v3, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    invoke-interface {v3, p1, p2}, Landroid/view/accessibility/IMagnificationConnection;->showMagnificationButton(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    :cond_4
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->removeMagnificationButton(I)V

    :goto_1
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    iget-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionWrapper:Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;

    if-eqz p0, :cond_7

    iget-object v2, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "displayId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MagnificationConnectionWrapper.removeMagnificationSettingsPanel"

    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_6
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionWrapper;->mConnection:Landroid/view/accessibility/IMagnificationConnection;

    invoke-interface {p0, p1}, Landroid/view/accessibility/IMagnificationConnection;->removeMagnificationSettingsPanel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    :cond_7
    :try_start_6
    monitor-exit p2

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_8
    :goto_2
    return-void

    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method
