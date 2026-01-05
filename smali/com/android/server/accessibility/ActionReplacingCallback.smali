.class public final Lcom/android/server/accessibility/ActionReplacingCallback;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInteractionId:I

.field public final mLock:Ljava/lang/Object;

.field public mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public final mNodeWithReplacementActionsInteractionId:I

.field public mNodesFromOriginalWindow:Ljava/util/List;

.field public mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

.field public mReplacementNodeIsReadyOrFailed:Z

.field public final mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

.field public mSetFindNodeFromOriginalWindowCalled:Z

.field public mSetFindNodesFromOriginalWindowCalled:Z

.field public mSetPrefetchFromOriginalWindowCalled:Z


# direct methods
.method public constructor <init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V
    .locals 16

    move-object/from16 v5, p0

    move/from16 v0, p3

    invoke-direct {v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    iput-boolean v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    move-object/from16 v1, p1

    iput-object v1, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iput v0, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v13, 0x1

    add-int/lit8 v4, v0, 0x1

    iput v4, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_0
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v0 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;[FLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    iput-boolean v13, v5, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method


# virtual methods
.method public final replaceActionsLocked(Ljava/util/List;)Ljava/util/List;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAllActions()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v1

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContextClickable(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :cond_2
    return-void
.end method

.method public final replaceInfoActionsAndCallServiceIfReady()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsOnInfoLocked(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v4, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    move v0, v3

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v5, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceActionsLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-boolean v3, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_8

    :try_start_5
    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    invoke-interface {v0, v4, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_8
    return-void

    :goto_4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :goto_5
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public final sendAttachOverlayResult(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendAttachOverlayResult(II)V

    return-void
.end method

.method public final sendTakeScreenshotOfWindowError(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->sendTakeScreenshotOfWindowError(II)V

    return-void
.end method

.method public final setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeFromOriginalWindow:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodeFromOriginalWindowCalled:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_1

    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :cond_1
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodesFromOriginalWindow:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetFindNodesFromOriginalWindowCalled:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActionsInteractionId:I

    if-ne p2, v1, :cond_3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iput-object v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mNodeWithReplacementActions:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mReplacementNodeIsReadyOrFailed:Z

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :cond_3
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setPerformAccessibilityActionResult(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mServiceCallback:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    invoke-interface {p0, p1, p2}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V

    return-void
.end method

.method public final setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mInteractionId:I

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mPrefetchedNodesFromOriginalWindow:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/accessibility/ActionReplacingCallback;->mSetPrefetchFromOriginalWindowCalled:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/ActionReplacingCallback;->replaceInfoActionsAndCallServiceIfReady()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p0, "ActionReplacingCallback"

    const-string p1, "Callback with unexpected interactionId"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
