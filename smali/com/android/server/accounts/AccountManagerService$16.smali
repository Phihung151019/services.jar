.class public final Lcom/android/server/accounts/AccountManagerService$16;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$callback:Landroid/os/RemoteCallback;

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;ILandroid/accounts/Account;Landroid/os/RemoteCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$uid:I

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleAuthenticatorResponse(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$16;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$account:Landroid/accounts/Account;

    iget v3, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$uid:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-static {v3, v2, v0, v4}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$16;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$16;->handleAuthenticatorResponse(Z)V

    return-void
.end method

.method public final onRequestContinued()V
    .locals 0

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$16;->handleAuthenticatorResponse(Z)V

    return-void
.end method
