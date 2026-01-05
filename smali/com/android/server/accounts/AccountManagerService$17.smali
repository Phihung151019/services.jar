.class public final Lcom/android/server/accounts/AccountManagerService$17;
.super Landroid/accounts/IAccountManagerResponse$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$response:Landroid/accounts/IAccountManagerResponse;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$response:Landroid/accounts/IAccountManagerResponse;

    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/accounts/IAccountManagerResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Landroid/accounts/Account;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Landroid/accounts/Account;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$response:Landroid/accounts/IAccountManagerResponse;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$opPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method
