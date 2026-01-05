.class public final Lcom/android/server/accessibility/AccessibilityUserState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mA11yActivityToTileService:Ljava/util/Map;

.field public final mA11yServiceToTileService:Ljava/util/Map;

.field public final mA11yTilesInQsPanel:Ljava/util/LinkedHashSet;

.field public mAlwaysOnMagnificationEnabled:Z

.field public mBindInstantServiceAllowed:Z

.field public final mBindingServices:Ljava/util/Set;

.field public final mBoundServices:Ljava/util/ArrayList;

.field public final mComponentNameToServiceMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mCrashedServices:Ljava/util/Set;

.field public final mEnabledServices:Ljava/util/Set;

.field public mFocusColor:I

.field public final mFocusColorDefaultValue:I

.field public mFocusStrokeWidth:I

.field public final mFocusStrokeWidthDefaultValue:I

.field public final mInstalledServices:Ljava/util/List;

.field public final mInstalledShortcuts:Ljava/util/List;

.field public mInteractiveUiTimeout:I

.field public mIsAMEnabled:Z

.field public mIsAudioDescriptionByDefaultRequested:Z

.field public mIsAutoActionEnabled:Z

.field public mIsAutoclickEnabled:Z

.field public mIsBounceKeysEnabled:Z

.field public mIsCornerActionEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsGestureNaviBar:Z

.field public mIsMagnificationSingleFingerTripleTapEnabled:Z

.field public mIsPerformGesturesEnabled:Z

.field public mIsSlowKeysEnabled:Z

.field public mIsStickyKeysEnabled:Z

.field public mIsTapDurationEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchBlockingEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mLastSentClientState:I

.field public mMagnificationCapabilities:I

.field public mMagnificationFollowTypingEnabled:Z

.field public final mMagnificationModes:Landroid/util/SparseIntArray;

.field public mMagnificationTwoFingerTripleTapEnabled:Z

.field public mMouseKeysEnabled:Z

.field public mNonInteractiveUiTimeout:I

.field public mRequestMultiFingerGestures:Z

.field public mRequestTwoFingerPassthrough:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

.field public final mServiceDetectsGestures:Landroid/util/SparseArray;

.field public mServiceHandlesDoubleTap:Z

.field public final mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mShortcutTargets:Ljava/util/HashMap;

.field public mSoftKeyboardShowMode:I

.field public final mSupportWindowMagnification:Z

.field public mTargetAssignedToAccessibilityButton:Ljava/lang/String;

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;

.field public final mUserClients:Landroid/os/RemoteCallbackList;

.field public final mUserId:I

.field public mUserInteractiveUiTimeout:I

.field public mUserNonInteractiveUiTimeout:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledShortcuts:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Ljava/util/LinkedHashSet;

    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMouseKeysEnabled:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1050011

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10600f4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSupportWindowMagnification:Z

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x200

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x20

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x40

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static doesShortcutTargetsStringContain(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "User state["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v0, "     attributes:{id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", mIsTapDurationEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    const-string v3, ", mIsTouchBlockingEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    const-string v3, ", mIsStickyKeysEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    const-string v3, ", mIsBounceKeysEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    const-string v3, ", mIsSlowKeysEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    const-string v3, ", mIsAutoActionEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    const-string v3, ", mIsCornerActionEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    const-string v3, ", mIsAMEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    const-string v3, ", autoActionEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    const-string v3, ", cornerActionEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    const-string v3, ", AmEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    const-string v3, ", touchExplorationEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    const-string v3, ", serviceHandlesDoubleTap="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    const-string v3, ", requestMultiFingerGestures="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    const-string v3, ", requestTwoFingerPassthrough="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    const-string v3, ", sendMotionEventsEnabled"

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    const-string v3, ", displayMagnificationEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    const-string v3, ", autoclickEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    const-string v3, ", nonInteractiveUiTimeout="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", interactiveUiTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", installedServiceCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", magnificationModes="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", magnificationCapabilities="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationCapabilities:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ", audioDescriptionByDefaultEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAudioDescriptionByDefaultRequested:Z

    const-string v3, ", magnificationFollowTypingEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    const-string v3, ", alwaysOnMagnificationEnabled="

    invoke-static {v2, v0, p2, v3}, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticOutline0;->m(ZLjava/io/PrintWriter;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo v0, "}"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "     button mode: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getButtonMode(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x2

    const-string/jumbo v2, "shortcut key"

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string/jumbo v2, "button"

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/16 v1, 0x200

    const-string/jumbo v2, "direct access"

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "     button target:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v1, 0x20

    const-string/jumbo v2, "gesture"

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/16 v1, 0x10

    const-string/jumbo v2, "qs shortcut targets"

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/accessibility/AccessibilityUserState;->dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const-string v1, "     a11y tiles in QS panel:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "     installed services: {"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    const-string v4, "      "

    const-string v5, " : "

    invoke-static {v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "  (A11yTool)"

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "     }"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v1, "     Bound services:{"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    const-string v4, ", "

    if-ge v3, v1, :cond_3

    if-lez v3, :cond_2

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v4, "                     "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Enabled services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Binding services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_4

    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Crashed services:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_5

    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "     Client list info:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    const-string p3, "          Client list "

    invoke-virtual {p1, p2, p3}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p1, "          Registered clients:{"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-ge v2, p1, :cond_7

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    const-string/jumbo p0, "}]"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpShortcutTargets(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "     "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    const-string v0, ":{"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getA11yFeatureToTileService()Ljava/util/Map;
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yActivityToTileService:Ljava/util/Map;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getInstalledServiceInfoLocked(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMagnificationModeLocked(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return v0
.end method

.method public final getSecureIntForUser(ILjava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;
    .locals 7

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget v4, v1, v3

    and-int v5, p1, v4

    if-eq v5, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    if-nez v5, :cond_2

    :cond_1
    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public final getTileServiceToA11yServiceInfoMapLocked()Ljava/util/Map;
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yServiceToTileService:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final isHandlingAccessibilityEventsLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isShortcutMagnificationEnabledLocked()Z
    .locals 6

    sget-object v0, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getShortcutTargetsLocked(I)Ljava/util/LinkedHashSet;

    move-result-object v4

    const-string/jumbo v5, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final onSwitchToAnotherUserLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mLastSentClientState:I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mNonInteractiveUiTimeout:I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInteractiveUiTimeout:I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityUserState$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mA11yTilesInQsPanel:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mTargetAssignedToAccessibilityButton:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationTwoFingerTripleTapEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserNonInteractiveUiTimeout:I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserInteractiveUiTimeout:I

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationModes:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidthDefaultValue:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusStrokeWidth:I

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColorDefaultValue:I

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mFocusColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mMagnificationFollowTypingEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mAlwaysOnMagnificationEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsStickyKeysEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsBounceKeysEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsSlowKeysEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mIsGestureNaviBar:Z

    return-void
.end method

.method public final putSecureIntForUser(IILjava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final reconcileSoftKeyboardModeWithSettingsLocked()V
    .locals 7

    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    const-string/jumbo v4, "accessibility_soft_keyboard_mode"

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v0, v3

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-eq v0, v3, :cond_2

    const-string v0, "AccessibilityUserState"

    const-string/jumbo v3, "Show IME setting inconsistent with internal state. Overwriting"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v6}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final removeDisabledServicesFromTemporaryStatesLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeServiceLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->onRemoved()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/AccessibilityUserState;->setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mComponentNameToServiceMap:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceInfoChangeListener:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onServiceInfoChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    return-void
.end method

.method public final setSoftKeyboardModeLocked(ILandroid/content/ComponentName;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const-string p0, "AccessibilityUserState"

    const-string p1, "Invalid soft keyboard mode"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    if-ne v3, p1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget v4, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    const-string/jumbo v5, "accessibility_soft_keyboard_mode"

    const/high16 v6, 0x20000000

    const-string/jumbo v7, "show_ime_with_hard_keyboard"

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v3

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v3, v8

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v3

    and-int/lit8 v3, v3, 0x3

    if-eq v3, v0, :cond_5

    invoke-virtual {p0, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v3

    const v8, -0x20000001

    and-int/2addr v3, v8

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    or-int v0, v3, v6

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v1, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ne v3, v0, :cond_8

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0, v4, v7}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    :cond_8
    :goto_3
    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->getSecureIntForUser(ILjava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityUserState;->putSecureIntForUser(IILjava/lang/String;)V

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    if-ltz p1, :cond_a

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mSoftKeyboardShowMode:I

    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    iget-boolean v3, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x6

    invoke-virtual {p2, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_a
    :goto_6
    return v1
.end method

.method public final updateShortcutTargetsLocked(ILjava/util/Set;)Z
    .locals 3

    and-int/lit8 v0, p1, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityUserState;->mShortcutTargets:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Tap shortcuts cannot be updated with target sets."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
