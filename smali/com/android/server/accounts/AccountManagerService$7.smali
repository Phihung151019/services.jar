.class public final Lcom/android/server/accounts/AccountManagerService$7;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic val$account:Landroid/accounts/Account;

.field public final synthetic val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final synthetic val$authTokenType:Ljava/lang/String;

.field public final synthetic val$callerPkg:Ljava/lang/String;

.field public final synthetic val$callerPkgSigDigest:[B

.field public final synthetic val$callerUid:I

.field public final synthetic val$customTokens:Z

.field public final synthetic val$loginOptions:Landroid/os/Bundle;

.field public final synthetic val$notifyOnAuthFailure:Z

.field public final synthetic val$permissionGranted:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iput-object p9, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    iput-boolean p11, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$permissionGranted:Z

    iput-object p12, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerUid:I

    iput-boolean p14, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    iput-object p15, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkgSigDigest:[B

    move-object/from16 p7, p16

    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    const/4 p7, 0x0

    const/4 p8, 0x0

    const/4 p9, 0x0

    move-object p10, p3

    move-object p11, p4

    move p12, p5

    move-object p14, p6

    move/from16 p16, p7

    move p13, p8

    move p15, p9

    move-object p7, p0

    move-object p8, p1

    move-object p9, p2

    invoke-direct/range {p7 .. p16}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    if-eqz p1, :cond_8

    const-string/jumbo v1, "authTokenLabelKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerUid:I

    new-instance v6, Landroid/accounts/AccountAuthenticatorResponse;

    invoke-direct {v6, p0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService$7;->onResult(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string/jumbo v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    if-eqz v3, :cond_6

    const-string/jumbo v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "accountType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo p1, "incorrect account type"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :cond_2
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    const-string/jumbo v1, "android.accounts.expiry"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-object v4, v2

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkgSigDigest:[B

    move-object v9, v4

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v2, v9}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v10

    invoke-virtual {v1, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    iget-object v10, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountTokenCaches:Lcom/android/server/accounts/TokenCache;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    const-string/jumbo p1, "the type and name should not be empty"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    const-string/jumbo v1, "intent"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    if-eqz v6, :cond_8

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$customTokens:Z

    if-nez v1, :cond_8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo p1, "invalid intent in bundle returned"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void

    :cond_7
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    const-string/jumbo v0, "authFailedMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "android"

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$accounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget v8, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    invoke-static/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->-$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public final run()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$permissionGranted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/accounts/IAccountAuthenticator;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$callerPkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toDebugString(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", getAuthToken, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$account:Landroid/accounts/Account;

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", authTokenType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$authTokenType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", loginOptions "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$loginOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notifyOnAuthFailure "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/accounts/AccountManagerService$7;->val$notifyOnAuthFailure:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
