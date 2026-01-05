.class Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
.super Landroid/app/IAppTraceRetriever$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/app/IAppTraceRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "getTraceFileDescriptor"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p2, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v7, "getTraceFileDescriptor"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p2, p2, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "getTraceFileDescriptor"

    invoke-virtual {p2, v4, v3, p1, v0}, Lcom/android/server/am/ActivityManagerService;->enforceDumpPermissionForPackage(IILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(IILjava/lang/String;)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    if-nez p0, :cond_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v2

    return-object v1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 p3, 0x10000000

    :try_start_1
    invoke-static {p0, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    goto :goto_1

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
