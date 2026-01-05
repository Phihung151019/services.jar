.class public final Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 10

    const-string v0, "AccountManagerService"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v3, p1, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-string/jumbo v6, "android"

    invoke-virtual {p1, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsOrEmptyArray(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p1, v8, p2, v9}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-static {v2, v8, v1, v9}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(ILandroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v8

    invoke-virtual {p1, v8, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Can\'t read accounts database"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance p2, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;-><init>(Landroid/content/Context;)V

    iput-object p2, p1, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    invoke-static {}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->getInstance()Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$OnInterestingAppOpChangedListener;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mBackupController:Lcom/samsung/android/server/pm/rescueparty/AccountManagerBackupController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/server/pm/rescueparty/SystemFileBackupManager;->registerController(Lcom/samsung/android/server/pm/rescueparty/AbstractBackupController;)V

    const-string p0, "Account Backup Controller is registered"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_1
    :goto_4
    return-void
.end method
