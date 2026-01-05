.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/UserInfo;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/UserInfo;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string/jumbo v0, "handleNewUserCreated(): ignoring for user "

    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v1, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/lang/Object;I)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :goto_0
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPendingUserCreatedCallbackTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "DevicePolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " due to token "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPendingUserCreatedCallbackTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    move-result-object v3

    const-string p0, "DevicePolicyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Automatically setting profile owner ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") on new user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->manageUserUnchecked(Landroid/content/ComponentName;Landroid/content/ComponentName;ILandroid/os/PersistableBundle;Z)V

    return-void

    :cond_4
    const-string p0, "DevicePolicyManager"

    const-string/jumbo v0, "User %d added on DO mode; setting ShowNewUserDisclaimer"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p0, "needed"

    invoke-virtual {v2, v5, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setShowNewUserDisclaimer(ILjava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
