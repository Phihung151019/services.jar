.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;
.super Landroid/os/AsyncTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FEATURE_ALLOW:[Ljava/lang/String;

.field public static final FEATURE_DISALLOW:[Ljava/lang/String;


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    const-string/jumbo v0, "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/accounts/AccountManager;->hasFeatures(Landroid/accounts/Account;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-interface {p0, v0, v1, p1}, Landroid/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "DevicePolicyManager"

    const-string p2, "Failed to get account feature"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, [Ljava/lang/Void;

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v7, v5, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    const-class v7, Landroid/accounts/AccountManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accounts/AccountManager;

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    sget-object v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_DISALLOW:[Ljava/lang/String;

    invoke-static {v5, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_0
    sget-object v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->FEATURE_ALLOW:[Ljava/lang/String;

    invoke-static {v5, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->hasAccountFeatures(Landroid/accounts/AccountManager;Landroid/accounts/Account;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$CalculateHasIncompatibleAccountsTask;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasIncompatibleAccounts:Ljava/util/Map;

    const-string p0, "DevicePolicyManager"

    const-string p1, "Finished calculating hasIncompatibleAccountsTask"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
