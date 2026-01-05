.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;
.super Landroid/content/pm/LauncherApps$Callback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageAdded(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageChanged(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackageRemoved(Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public final onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p2, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object v2, v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mCocktailBarServices:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p3}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->onPackagesSuspendChanged([Ljava/lang/String;Z)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackagesSuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    return-void
.end method

.method public final onPackagesUnsuspended([Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$3;->onPackagesSuspendChanged([Ljava/lang/String;Landroid/os/UserHandle;Z)V

    return-void
.end method
