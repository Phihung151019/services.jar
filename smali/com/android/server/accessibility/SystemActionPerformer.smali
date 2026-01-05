.class public Lcom/android/server/accessibility/SystemActionPerformer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDisplayUpdateCallBack:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mListener:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mRegisteredSystemActions:Ljava/util/Map;

.field public final mScreenshotHelperSupplier:Ljava/util/function/Supplier;

.field public final mSystemActionLock:Ljava/lang/Object;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iput-object p4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104018e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040185

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040197

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040192

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040196

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040195

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104018f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1040198

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x9

    invoke-direct {p2, p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final addLegacySystemActions(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getSystemActions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->addLegacySystemActions(Ljava/util/List;)V

    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final performSystemAction(I)Z
    .locals 8

    const-string v0, "Invalid action id: "

    const-string/jumbo v1, "canceled PendingIntent for global action "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-boolean v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    iget v7, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    if-eq v6, v7, :cond_0

    iget-object v5, v5, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->moveDisplayToTopIfAllowed(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    const/16 p0, 0xe

    if-ne p1, p0, :cond_1

    :try_start_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v5}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :goto_0
    :try_start_6
    const-string/jumbo p1, "SystemActionPerformer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_2
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v1, 0x4

    const/16 v4, 0x301

    const/16 v5, 0x101

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    :try_start_8
    const-string/jumbo p0, "SystemActionPerformer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :pswitch_1
    const/16 p1, 0x55

    :try_start_9
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_2
    const/16 p1, 0x52

    :try_start_a
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_3
    const/16 p1, 0x17

    :try_start_b
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_4
    const/16 p1, 0x16

    :try_start_c
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_5
    const/16 p1, 0x15

    :try_start_d
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_6
    const/16 p1, 0x14

    :try_start_e
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_7
    const/16 p1, 0x13

    :try_start_f
    invoke-virtual {p0, p1, v4}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_8
    :try_start_10
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x4f

    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_9
    :try_start_11
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/ScreenshotHelper;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    move-object p0, p1

    :goto_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_a
    :try_start_12
    iget-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x7

    invoke-virtual {p1, v0, v1, v4, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_b
    :try_start_13
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_c
    :try_start_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "statusbar"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :try_start_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_2
    move-exception p0

    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "statusbar"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_3
    move-exception p0

    :try_start_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    :try_start_1b
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    if-nez v0, :cond_5

    :try_start_1c
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto :goto_2

    :cond_5
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/statusbar/StatusBarManagerService$2;->toggleRecentApps()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    move v6, v7

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_4
    move-exception v0

    :try_start_1f
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_f
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_10
    :try_start_20
    invoke-virtual {p0, v1, v5}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(II)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :goto_3
    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :try_start_22
    throw p0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public registerSystemAction(ILandroid/app/RemoteAction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/AccessibilityManagerService;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final sendDownAndUpKeyEvents(II)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v5, 0x0

    move-wide v9, v7

    move-object v3, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIIJJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIIJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendKeyEventIdentityCleared(IIIJJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mDisplayUpdateCallBack:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v14, v1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v15, 0x0

    move/from16 v7, p1

    move/from16 v6, p2

    move/from16 v13, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public unregisterSystemAction(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/AccessibilityManagerService;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySystemActionsChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
