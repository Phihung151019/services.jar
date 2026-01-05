.class public final Lcom/android/server/content/SyncManager$10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    return-void
.end method


# virtual methods
.method public final onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 11

    check-cast p1, Landroid/content/SyncAdapterType;

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/android/server/content/SyncManager$10;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x3

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    :cond_0
    return-void
.end method
