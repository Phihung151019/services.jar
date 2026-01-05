.class public final Lcom/android/server/appop/AppOpsService$10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$candidates:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$10;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$10;->val$candidates:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$10;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3, v5}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$10;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$10;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$10;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$10;->val$candidates:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$10;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$10;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$10;->val$candidates:Landroid/util/ArraySet;

    iput-object p0, v0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
