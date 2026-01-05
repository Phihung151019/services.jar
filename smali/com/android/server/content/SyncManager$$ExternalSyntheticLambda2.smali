.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public final onAppPermissionChanged(Landroid/accounts/Account;I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/content/SyncManager;

    iget-object p0, v0, Lcom/android/server/content/SyncManager;->mAccountManagerInternal:Landroid/accounts/AccountManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerInternal;->hasAccountAccess(Landroid/accounts/Account;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
