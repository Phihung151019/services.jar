.class public final Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;
.super Landroid/companion/IOnTransportsChangedListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-direct {p0}, Landroid/companion/IOnTransportsChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransportsChanged(Ljava/util/List;)V
    .locals 14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v1, v1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mConnectedAssociations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "CrossDeviceSyncController"

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v7, v7, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-virtual {v5, v3, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    invoke-virtual {v5, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "No callback to report new transport"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v5, v6, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v3, v3, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "New association was blocked from context syncing"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v7, v2

    :cond_6
    :goto_1
    if-ge v7, v1, :cond_f

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/companion/AssociationInfo;

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_2

    :cond_7
    move-object v9, v5

    :goto_2
    if-eqz v9, :cond_8

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    goto :goto_3

    :cond_8
    const-string/jumbo v9, "No callback to report removed transport"

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    goto :goto_1

    :cond_a
    invoke-static {v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlocked(Landroid/companion/AssociationInfo;)Z

    move-result v9

    iget-object v10, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->isAssociationBlockedLocal(I)Z

    move-result v10

    if-eq v10, v9, :cond_6

    iget-object v10, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v10, v10, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mInCallServiceCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;

    goto :goto_4

    :cond_b
    move-object v10, v5

    :goto_4
    const-string/jumbo v11, "No callback to report changed transport"

    if-nez v9, :cond_d

    const-string/jumbo v9, "Unblocking existing association for context sync"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v10, :cond_c

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v9

    invoke-virtual {v10, v9, v4}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    invoke-virtual {v10, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->requestCrossDeviceSync(Landroid/companion/AssociationInfo;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    iget-object v10, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v10, v11, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallUpdateMessage(Ljava/util/Collection;I)[B

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    goto/16 :goto_1

    :cond_d
    const-string v9, "Blocking existing association for context sync"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    iget-object v9, v9, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mBlocklist:Ljava/util/Set;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_e

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v9

    invoke-virtual {v10, v9, v2}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncControllerCallback;->updateNumberOfActiveSyncAssociations(IZ)V

    goto :goto_5

    :cond_e
    invoke-static {v6, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v10

    new-instance v11, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v11}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v12, 0x10500000001L

    invoke-virtual {v11, v12, v13, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->syncMessageToDevice(I[B)V

    iget-object v9, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$1;->this$0:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->-$$Nest$mclearInProgressCalls(Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;I)V

    goto/16 :goto_1

    :cond_f
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
