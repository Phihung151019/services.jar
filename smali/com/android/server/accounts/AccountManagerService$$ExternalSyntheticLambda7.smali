.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accounts/AccountManagerService;

.field public final synthetic f$1:Landroid/accounts/Account;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$1:Landroid/accounts/Account;

    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$2:I

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method
