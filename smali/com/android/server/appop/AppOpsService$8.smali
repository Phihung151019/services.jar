.class public final Lcom/android/server/appop/AppOpsService$8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    return-void
.end method


# virtual methods
.method public final onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    sget-boolean p2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez p2, :cond_0

    const-class p2, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {p2}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageManagerLocal;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    :cond_0
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService;->mPackageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/appop/AppOpsService;->initializeUserUidStatesLocked(ILjava/util/Map;Landroid/util/SparseBooleanArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_1

    :try_start_3
    invoke-interface {p2}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "PackageManagerLocal not loaded"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
