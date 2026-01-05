.class public final Lcom/android/server/app/GameTaskInfoProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

.field public final mGameTaskInfoCache:Landroid/util/LruCache;

.field public final mLock:Ljava/lang/Object;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifierImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    iput-object p1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

    return-void
.end method


# virtual methods
.method public final generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .locals 5

    new-instance v0, Lcom/android/server/app/GameTaskInfo;

    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, v1, Lcom/android/server/app/GameClassifierImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    :catch_0
    :cond_0
    invoke-direct {v0, p1, p2, v4}, Lcom/android/server/app/GameTaskInfo;-><init>(ILandroid/content/ComponentName;Z)V

    iget-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3, v3, v2}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    const-string p0, "GameTaskInfoProvider"

    const-string p1, "Failed to fetch running tasks"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
