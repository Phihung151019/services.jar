.class public final Lcom/android/server/HsumBootUserInitializer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

.field public final mPms:Lcom/android/server/pm/PackageManagerService;

.field public final mShouldAlwaysHaveMainUser:Z

.field public final mUmi:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/HsumBootUserInitializer$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/HsumBootUserInitializer$1;-><init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/HsumBootUserInitializer;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/HsumBootUserInitializer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    iput-boolean p5, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    return-void
.end method

.method public static createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;
    .locals 6

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/HsumBootUserInitializer;

    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HsumBootUserInitializer;-><init>(Lcom/android/server/pm/UserManagerInternal;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)V

    return-object v0
.end method


# virtual methods
.method public final init(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 8

    const-string v1, "HsumBootUserInitializer"

    const-string/jumbo v0, "init())"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/HsumBootUserInitializer;->mShouldAlwaysHaveMainUser:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "createMainUserIfNeeded"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Found existing MainUser, userId=%d"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "Creating a new MainUser"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/HsumBootUserInitializer;->mUmi:Lcom/android/server/pm/UserManagerInternal;

    const-string/jumbo v4, "android.os.usertype.full.SECONDARY"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x4002

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/UserManagerInternal;->createUserEvenWhenDisallowed(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Landroid/content/pm/UserInfo;

    move-result-object p0

    const-string/jumbo v0, "Successfully created MainUser, userId=%d"

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/UserManager$CheckedUserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "Initial bootable MainUser creation failed"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :cond_1
    return-void
.end method
