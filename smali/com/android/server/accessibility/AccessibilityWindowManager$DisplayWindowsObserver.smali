.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# instance fields
.field public final mA11yWindowInfoById:Landroid/util/SparseArray;

.field public final mCachedWindowInfos:Ljava/util/List;

.field public final mDisplayId:I

.field public mHasWatchOutsideTouchWindow:Z

.field public mIsProxy:Z

.field public mProxyDisplayAccessibilityFocusedWindow:I

.field public mTrackingWindows:Z

.field public final mWindowInfoById:Landroid/util/SparseArray;

.field public mWindows:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final cacheWindows(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final createWindowInfoListLocked(Landroid/graphics/Point;Ljava/util/List;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    new-instance v7, Landroid/graphics/Region;

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-direct {v7, v9, v9, v8, v0}, Landroid/graphics/Region;-><init>(IIII)V

    move-object/from16 v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v11, v8, :cond_15

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    iget-object v14, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInWindow:Landroid/graphics/Region;

    invoke-virtual {v3, v14}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v14, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mWindowInfo:Landroid/view/WindowInfo;

    iget-object v15, v14, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v15, :cond_0

    invoke-virtual {v5, v6, v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v15

    goto :goto_1

    :cond_0
    const/4 v15, -0x1

    :goto_1
    iget-boolean v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    const/16 p1, 0x1

    const/16 v12, 0x7f2

    if-eqz v9, :cond_1

    :goto_2
    move/from16 v9, p1

    goto/16 :goto_8

    :cond_1
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    if-eq v9, v12, :cond_4

    iget-boolean v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsPIPMenu:Z

    if-nez v9, :cond_4

    :cond_3
    :goto_3
    const/4 v9, 0x0

    goto :goto_8

    :cond_4
    :goto_4
    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-nez v9, :cond_5

    :goto_5
    const/4 v9, 0x0

    goto :goto_6

    :cond_5
    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowIdMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    iget-object v12, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHostEmbeddedMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    :goto_6
    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTmpRegion:Landroid/graphics/Region;

    sget-object v12, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v9, v7, v3, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v12, 0x7dd

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7e5

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7ea

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7e0

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7e6

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7e2

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7eb

    if-eq v9, v12, :cond_9

    const/16 v12, 0x3ec

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7df

    if-eq v9, v12, :cond_9

    const/16 v12, 0x7ee

    if-eq v9, v12, :cond_9

    move/from16 v9, p1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_3

    goto :goto_2

    :goto_8
    if-eqz v9, :cond_11

    if-ltz v15, :cond_b

    iget-object v9, v14, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v9, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v9

    iput v9, v14, Landroid/view/WindowInfo;->layer:I

    iget-object v9, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowAttributes:Landroid/util/SparseArray;

    invoke-virtual {v9, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowAttributes;

    if-nez v9, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v14, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowAttributes;->getLocales()Landroid/os/LocaleList;

    move-result-object v9

    iput-object v9, v14, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    :goto_9
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v14, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mInputConfig:I

    and-int/lit8 v12, v9, 0x8

    if-nez v12, :cond_c

    move/from16 v12, p1

    goto :goto_a

    :cond_c
    const/4 v12, 0x0

    :goto_a
    if-nez v12, :cond_e

    iget v12, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v14, 0x7f2

    if-eq v12, v14, :cond_e

    and-int/lit16 v9, v9, 0x100

    if-eqz v9, :cond_d

    move/from16 v9, p1

    goto :goto_b

    :cond_d
    const/4 v9, 0x0

    :goto_b
    if-eqz v9, :cond_e

    :goto_c
    const/4 v9, 0x0

    goto :goto_d

    :cond_e
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v12, 0x7f0

    if-ne v9, v12, :cond_f

    goto :goto_c

    :cond_f
    move/from16 v9, p1

    :goto_d
    if-eqz v9, :cond_10

    iget-object v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v4, v9}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-object v9, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v4, v7, v9}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_10
    iget-boolean v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mIsFocused:Z

    or-int/2addr v10, v9

    goto :goto_f

    :cond_11
    iget v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mType:I

    const/16 v12, 0x7e3

    if-eq v9, v12, :cond_12

    const/4 v9, 0x0

    goto :goto_e

    :cond_12
    iget-object v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mTouchableRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v9}, Landroid/graphics/Region;->isEmpty()Z

    move-result v9

    :goto_e
    if-eqz v9, :cond_13

    iget-object v9, v13, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->mSystemBarInsetFrame:Landroid/graphics/Rect;

    if-eqz v9, :cond_13

    sget-object v12, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v7, v9, v7, v12}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_13
    :goto_f
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz v10, :cond_14

    goto :goto_10

    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_15
    const/16 p1, 0x1

    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x0

    :cond_16
    if-ge v9, v0, :cond_19

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v9, v9, 0x1

    check-cast v3, Landroid/view/WindowInfo;

    iget-object v4, v3, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    :cond_17
    iget-object v4, v3, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_11
    if-ltz v4, :cond_16

    iget-object v5, v3, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, v3, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    :cond_19
    return-object v2
.end method

.method public final getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    if-ge v3, v4, :cond_0

    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final setAccessibilityFocusedWindowLocked(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final shouldUpdateWindowsLocked(Ljava/util/List;)Z
    .locals 9

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_16

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    if-ne v3, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    iget v5, v3, Landroid/view/WindowInfo;->type:I

    iget v6, v4, Landroid/view/WindowInfo;->type:I

    if-eq v5, v6, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-boolean v5, v3, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v6, v4, Landroid/view/WindowInfo;->focused:Z

    if-eq v5, v6, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object v5, v3, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v5, :cond_7

    iget-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v5, :cond_8

    goto/16 :goto_1

    :cond_7
    iget-object v6, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_1

    :cond_8
    iget-object v5, v3, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v5, :cond_9

    iget-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v5, :cond_a

    goto/16 :goto_1

    :cond_9
    iget-object v6, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_1

    :cond_a
    iget-object v5, v3, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v5, :cond_b

    iget-object v5, v4, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v5, :cond_c

    goto :goto_1

    :cond_b
    iget-object v6, v4, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-interface {v5, v6}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_c
    iget-object v5, v3, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v6, v4, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_1

    :cond_d
    iget-object v5, v3, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v5, :cond_e

    iget-object v6, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v6, :cond_e

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_1

    :cond_e
    iget-object v5, v3, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_1

    :cond_f
    iget-wide v5, v3, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v7, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_10

    goto :goto_1

    :cond_10
    iget-boolean v5, v3, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v6, v4, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v5, v6, :cond_11

    goto :goto_1

    :cond_11
    iget-boolean v5, v3, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v6, v4, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v5, v6, :cond_12

    goto :goto_1

    :cond_12
    iget v5, v3, Landroid/view/WindowInfo;->displayId:I

    iget v6, v4, Landroid/view/WindowInfo;->displayId:I

    if-eq v5, v6, :cond_13

    goto :goto_1

    :cond_13
    iget v5, v3, Landroid/view/WindowInfo;->taskId:I

    iget v6, v4, Landroid/view/WindowInfo;->taskId:I

    if-eq v5, v6, :cond_14

    goto :goto_1

    :cond_14
    iget-object v3, v3, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object v4, v4, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_15

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_16
    return v2
.end method

.method public final startTrackingWindowsLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "displayId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";callback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "setWindowsForAccessibilityCallback"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    :cond_1
    return-void
.end method

.method public final stopTrackingWindowsLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->traceWMEnabled()Z

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "displayId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";callback=null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "setWindowsForAccessibilityCallback"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->logTraceWM(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v4, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    iput v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final updateWindowsLocked(ILjava/util/List;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iput-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v7, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    iget v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    if-ne v9, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    iget v10, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedDisplayId:I

    const/4 v11, -0x1

    if-eq v9, v10, :cond_4

    iget-boolean v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v10, :cond_3

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    move v10, v4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-eqz v7, :cond_6

    if-lez v5, :cond_5

    iget-object v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowToken:Landroid/os/IBinder;

    invoke-virtual {v6, v1, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v12

    iput v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    goto :goto_4

    :cond_5
    iput v11, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    :goto_4
    iget-boolean v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v12, :cond_6

    iput v11, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    :cond_6
    iget-boolean v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    if-eqz v12, :cond_7

    iget v12, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    goto :goto_5

    :cond_7
    iget v12, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityFocusedWindowId:I

    :goto_5
    if-eqz v10, :cond_8

    if-eq v12, v11, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    move v13, v4

    :goto_6
    if-lez v5, :cond_1b

    iget-boolean v15, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v15, :cond_15

    move v15, v4

    const/16 v16, 0x1

    :goto_7
    if-ge v15, v5, :cond_16

    move-object/from16 v4, p2

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Landroid/view/WindowInfo;

    iget-object v14, v11, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v1, v14}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v14

    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    iget v4, v11, Landroid/view/WindowInfo;->type:I

    move/from16 v19, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    const/4 v5, 0x4

    if-eq v4, v5, :cond_c

    const/16 v5, 0x3ed

    if-eq v4, v5, :cond_c

    const/16 v5, 0x7e1

    if-eq v4, v5, :cond_b

    const/16 v5, 0x7e8

    if-eq v4, v5, :cond_b

    const/16 v5, 0x7f0

    if-eq v4, v5, :cond_a

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_9

    const/16 v5, 0x7f4

    if-eq v4, v5, :cond_b

    const/16 v5, 0x8b2

    if-eq v4, v5, :cond_b

    const/16 v5, 0x96b

    if-eq v4, v5, :cond_b

    const/16 v5, 0xa49

    if-eq v4, v5, :cond_b

    const/16 v5, 0x7e3

    if-eq v4, v5, :cond_b

    const/16 v5, 0x7e4

    if-eq v4, v5, :cond_b

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    const/4 v4, -0x1

    goto :goto_8

    :pswitch_0
    const/4 v4, 0x6

    goto :goto_8

    :pswitch_1
    const/4 v4, 0x2

    goto :goto_8

    :cond_9
    const/4 v4, 0x5

    goto :goto_8

    :cond_a
    const/4 v4, 0x4

    goto :goto_8

    :cond_b
    :pswitch_2
    const/4 v4, 0x3

    goto :goto_8

    :cond_c
    :pswitch_3
    const/4 v4, 0x1

    :goto_8
    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    iget v4, v11, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->semSetRawType(I)V

    iget v4, v11, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    iget-boolean v4, v11, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    iget-object v4, v11, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    iget-object v4, v11, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    iget-wide v4, v11, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v8, v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    iget-boolean v4, v11, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    iget v4, v11, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    iget v4, v11, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    iget-object v4, v11, Landroid/view/WindowInfo;->locales:Landroid/os/LocaleList;

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLocales(Landroid/os/LocaleList;)V

    iget-object v4, v11, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v4

    if-ltz v4, :cond_d

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    :cond_d
    iget-object v4, v11, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v4, :cond_f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_f

    move/from16 v20, v4

    iget-object v4, v11, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v6, v1, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v4

    if-ltz v4, :cond_e

    invoke-virtual {v8, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v20

    goto :goto_9

    :cond_f
    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    goto :goto_a

    :cond_10
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    iget-object v14, v11, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v5, v14}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTransitionTimeMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    goto :goto_a

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTransitionTimeMillis(J)V

    :goto_a
    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v4

    sub-int/2addr v5, v4

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v7, :cond_13

    iget-boolean v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-nez v5, :cond_12

    iput v4, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_b

    :cond_12
    iget v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v4, v5, :cond_13

    const/16 v16, 0x0

    :cond_13
    :goto_b
    iget-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v5, :cond_14

    iget-boolean v5, v11, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    :cond_14
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v11}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v19

    const/4 v4, 0x0

    const/4 v11, -0x1

    goto/16 :goto_7

    :cond_15
    const/16 v16, 0x1

    :cond_16
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v7, :cond_19

    iget-boolean v4, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    if-eqz v4, :cond_17

    if-eqz v16, :cond_17

    iget v4, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    iput v4, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    :cond_17
    const/4 v4, 0x0

    :goto_c
    if-ge v4, v1, :cond_19

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    iget v8, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mActiveWindowId:I

    if-ne v7, v8, :cond_18

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_19
    if-eqz v10, :cond_1b

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v1, :cond_1b

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    if-ne v7, v12, :cond_1a

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    const/4 v13, 0x0

    goto :goto_e

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1b
    :goto_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_1d

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    iget-object v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1c

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v9, v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    const/4 v8, 0x2

    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1d
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_20

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v8, :cond_1e

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v9, v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1e
    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v7

    invoke-static {v9, v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(III)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_21

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    iget-object v5, v6, Lcom/android/server/accessibility/AccessibilityWindowManager;->mAccessibilityEventSender:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_22
    if-eqz v13, :cond_23

    invoke-virtual {v6, v12}, Lcom/android/server/accessibility/AccessibilityWindowManager;->clearAccessibilityFocusLocked(I)V

    :cond_23
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d5
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
