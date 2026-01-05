.class public final Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

.field public mPaymentDefaultPackage:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final deInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "NFCFilter"

    const-string/jumbo v1, "android.app.role.WALLET"

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "role"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo p0, "ROLE_WALLET is not available"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v3
.end method

.method public final init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->setPaymentDefaultPackage(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mOnRoleHoldersChangedListener:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;

    iget p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final setPaymentDefaultPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->mPaymentDefaultPackage:Ljava/lang/String;

    const-string p0, "FILTER 31"

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
