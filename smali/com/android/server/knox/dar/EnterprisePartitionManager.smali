.class public Lcom/android/server/knox/dar/EnterprisePartitionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final isKnoxBuildEnabled:Z

.field public static mInstallLock:Ljava/lang/Object;

.field public static mPackageTasker:Lcom/android/server/pm/Installer;

.field public static sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

.field public final mSessionIdDstPath:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "v00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    iget-object p1, p1, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    sget-boolean p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;
    .locals 3

    const-class v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;

    new-instance v2, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-direct {v2, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;-><init>(Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;)V

    sput-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->sInstance:Lcom/android/server/knox/dar/EnterprisePartitionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static setInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isKnoxBuildEnabled:Z

    if-eqz v0, :cond_0

    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    return-void

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    return-void
.end method

.method public static setTestInstaller(Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 0

    sput-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    sput-object p1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "EnterprisePartitionManager"

    invoke-static {v0, v1, p0, v2, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Security Exception Occurred while pid["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] trying to access methodName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] in [EnterprisePartitionManager] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final copy(IIILjava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v0, "copy"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_0

    const/16 p0, -0x13

    return p0

    :cond_0
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move v6, p1

    move v8, p2

    move v9, p3

    move-object v5, p4

    move-object v7, p5

    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_5

    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_1
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_6
    :goto_3
    const/4 p0, -0x2

    return p0
.end method

.method public final isUserUnlocked(I)Z
    .locals 7

    const-string v0, "EnterprisePartitionManager"

    const-string v1, "Failed to check user state... "

    const-string/jumbo v2, "User "

    iget-object v3, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInjector:Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not unlocked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_1
    move-exception p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
