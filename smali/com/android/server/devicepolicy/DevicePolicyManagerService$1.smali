.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Landroid/os/RemoteCallback;

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isNetworkLoggingEnabledInternalLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setNetworkLoggingActiveInternal(Z)V

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    :cond_2
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBugreportCollectionManager:Lcom/android/server/devicepolicy/RemoteBugreportManager;

    iget-object v4, v2, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    const-string/jumbo v5, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-static {v4, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->notify(I)V

    :cond_4
    :goto_1
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;

    invoke-direct {v4, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    const-string/jumbo v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo p1, "android.app.action.USER_ADDED"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybePauseDeviceWideLoggingLocked()V

    monitor-exit v2

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo p1, "android.app.action.USER_REMOVED"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isUserAffiliatedWithDeviceLocked(I)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mdiscardDeviceWideLogsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->areAllUsersAffiliatedWithDeviceLocked()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda159;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda159;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_8
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleUserRemoved(I)V

    goto/16 :goto_5

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_9
    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    const-string/jumbo p2, "android.app.action.USER_STARTED"

    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result p2

    if-ltz p2, :cond_a

    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    goto/16 :goto_5

    :cond_a
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->suspendPersonalAppsInternal(IIZ)V

    goto/16 :goto_5

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_b
    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo p1, "android.app.action.USER_STOPPED"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "DevicePolicyManager"

    const-string/jumbo p2, "Managed profile was stopped"

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo p1, "android.app.action.USER_SWITCHED"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->sendDeviceOwnerUserCommand(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mmaybeSendAdminEnabledBroadcastLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result p1

    if-eqz p1, :cond_20

    const-string p1, "DevicePolicyManager"

    const-string/jumbo p2, "Managed profile became unlocked"

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    goto/16 :goto_5

    :catchall_4
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :cond_e
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string/jumbo v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object p2

    iget-boolean p2, p2, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-nez p2, :cond_12

    goto/16 :goto_5

    :cond_12
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Newly installed package is unsuspendable: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManager"

    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setCrossProfileAppToIgnored(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v1, v3, p2}, Landroid/content/pm/PackageManagerInternal;->setPackagesSuspendedByAdmin(IZ[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_5

    :cond_14
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mhandlePackagesChanged(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda39;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_15
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p0

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    goto/16 :goto_5

    :cond_17
    const-string/jumbo v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_4

    :cond_18
    const-string/jumbo v2, "com.android.server.ACTION_PROFILE_OFF_DEADLINE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string p1, "DevicePolicyManager"

    const-string/jumbo p2, "Profile off deadline alarm was triggered"

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    sget-object p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result p1

    if-ltz p1, :cond_19

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    goto/16 :goto_5

    :cond_19
    const-string p0, "DevicePolicyManager"

    const-string p1, "Got deadline alarm for nonexistent profile"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1a
    const-string/jumbo v2, "com.android.server.ACTION_TURN_PROFILE_ON_NOTIFICATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p2, "DevicePolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requesting to turn on the profile: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    goto :goto_5

    :cond_1c
    const-string/jumbo p1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mnotifyIfManagedSubscriptionsAreUnavailable(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/UserHandle;Z)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v1, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mtriggerPolicyComplianceCheckIfNeeded(ILcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    goto :goto_5

    :cond_1d
    const-string/jumbo p1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->calculateHasIncompatibleAccounts()V

    goto :goto_5

    :cond_1e
    const-string/jumbo p0, "com.android.server.ACTION_ESIM_REMOVED_WITH_MANAGED_PROFILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string/jumbo p0, "com.android.server.EXTRA_ESIM_REMOVED_WITH_MANAGED_PROFILE_SUBSCRIPTION_ID"

    const/4 p1, -0x1

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "DevicePolicyManager"

    const-string p2, "Deleted subscription with ID %d because owning managed profile was removed"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_1f
    :goto_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    sget-object p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateSystemUpdateFreezePeriodsRecord(Z)V

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMainUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    move-result p1

    if-ltz p1, :cond_20

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    :cond_20
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendDeviceOwnerUserCommand(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/ActiveAdmin;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "android.intent.extra.USER"

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
