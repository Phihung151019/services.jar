.class public final Lcom/android/server/RCPManagerService;
.super Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sContext:Landroid/content/Context;


# instance fields
.field public final KNOX_DEBUG:Z

.field public knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

.field public mBridgeHandler:Landroid/os/Handler;

.field public final mBridgeProxyAliveList:Ljava/util/HashMap;

.field public final mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

.field public final mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

.field public final mContext:Landroid/content/Context;

.field public mInputManagerService:Lcom/android/server/input/InputManagerService;

.field public mIsInitialized:Z

.field public mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mRCPInterfaceMap:Ljava/util/HashMap;

.field public mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ISemRemoteContentManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/RCPManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$1;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

    new-instance v0, Lcom/android/server/RCPManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/RCPManagerService$2;-><init>(Lcom/android/server/RCPManagerService;)V

    iput-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

    const-string/jumbo v0, "RCPManagerService"

    const-string/jumbo v1, "start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "Context is null(). Failed to start service"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/RCPManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "RCPManagerService"

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred while pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] in [RCPManagerService] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    throw v0
.end method

.method public static isPackageDataRelatedPath(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "/data/data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "RCPManagerService"

    if-nez v1, :cond_2

    const-string v1, "/data/user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/data/user_de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "not a package path: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    const-string/jumbo v0, "package path detected: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static processImeRequest(Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "keyEvent"

    const-string/jumbo v1, "commitText"

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v3, "InputMethodManagerService"

    const/16 v4, 0x270f

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v5, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    invoke-direct {v5, v4}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    const/4 v6, 0x1

    invoke-interface {v2, v5, v1, v6}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v2, "commitText failed due to remote exception"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/view/KeyEvent;

    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance v1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    invoke-direct {v1, v4}, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;-><init>(I)V

    invoke-interface {v0, v1, p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_5
    const-string/jumbo v0, "sendKeyEvent failed due to remote exception"

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final cancelCopyChunks(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to cancelCopyChunks"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "cancelCopyChunks"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "RCPManagerService"

    const-string/jumbo v1, "P_OS_RCP cancelCopyChunks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "RCPManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cancelCopyChunks() sessionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo v0, "cancelCopyChunks"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v2, v0, p1, p2}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public final copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 17

    move/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v4, p3

    move-object/from16 v1, p4

    move/from16 v3, p7

    move/from16 v5, p10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v6

    const/4 v12, -0x1

    if-nez v6, :cond_0

    const-string/jumbo v0, "RCPManagerService"

    const-string/jumbo v1, "failed to copyChunks"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_0
    const-string/jumbo v6, "copyChunks"

    invoke-static {v6}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v6, "RCPManagerService"

    const-string/jumbo v7, "P_OS_RCP copyChunks"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "RCPManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "copyChunks() srcContainerId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; srcFilePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; destContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; destFilePath="

    const-string v9, "; offset="

    invoke-static {v7, v8, v1, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v8, p5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; length="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; sessionId="

    const-string v11, "; deleteSrc="

    move-wide/from16 v13, p8

    invoke-static {v7, v10, v13, v14, v11}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v6, v7, v5}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    move-object/from16 v6, p0

    iget-object v6, v6, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v15

    const-string/jumbo v6, "copyChunks"

    invoke-virtual {v15, v6}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v6, :cond_1

    const/16 v0, -0x13

    return v0

    :cond_1
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    :cond_2
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v15, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v15, v4}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eqz v2, :cond_5

    const-string v6, "/storage/emulated"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "/storage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "/mnt/user/"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "EnterprisePartitionManager"

    const-string/jumbo v7, "srcRealPath : "

    invoke-static {v7, v0, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    const-string v6, "/storage/emulated"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "/storage"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "/mnt/user/"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "EnterprisePartitionManager"

    const-string/jumbo v7, "dstRealPath : "

    invoke-static {v7, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v6, v15, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v15, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v5, :cond_8

    const/16 v5, 0x24

    goto :goto_0

    :cond_8
    const/16 v5, 0x20

    :goto_0
    sget-object v16, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v16

    :try_start_0
    sget-object v6, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    int-to-long v10, v3

    invoke-virtual {v6}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    move v0, v12

    goto :goto_1

    :cond_9
    :try_start_1
    iget-object v3, v6, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v13

    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/16 v1, 0xc9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    :goto_2
    move v12, v2

    goto :goto_3

    :cond_a
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_b

    :try_start_2
    iget-object v0, v15, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mSessionIdDstPath:Ljava/util/Hashtable;

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_b
    move v12, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_3
    :try_start_3
    monitor-exit v16

    return v12

    :goto_4
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_c
    :goto_5
    const/4 v0, -0x2

    return v0
.end method

.method public final copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "RCPManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "failed to copyFile"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "copyFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "copyFile  getRCPInterface not NULL "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string/jumbo p0, "copyFile  getRCPInterface NULL "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "RCPManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "failed to copyFileInternal"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "copyFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "copyFile() srcContainerId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; srcFilePath="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; destContainerId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; destFilePath="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v0, :cond_1

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const-string/jumbo v3, "com.samsung.android.bbc.bbcagent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "copyPackageData"

    const-string/jumbo v4, "failed to copyPackageData"

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    const/4 v3, 0x3

    move v1, p1

    move-object v4, p2

    move v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    move v5, v1

    move v1, p1

    move p1, v5

    move-object v5, v4

    move-object v4, p2

    move-object p2, v2

    move v2, p3

    move-object p3, v5

    move-object v5, p4

    invoke-static {v4}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    invoke-static {v5}, Lcom/android/server/RCPManagerService;->isPackageDataRelatedPath(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    const-string/jumbo p0, "copy"

    invoke-virtual {v0, p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_6
    :goto_1
    const-string/jumbo p4, "TAG"

    const-string/jumbo v0, "Package data related copy; calling proper delegation method"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result p4

    if-nez p4, :cond_7

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_7
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->copy(IIILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteAllPersonaData(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "----- unregisterBridgeProxy : for user - "

    const-string v1, " -----"

    const-string/jumbo v2, "RCPManagerService"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/bridge/BridgeProxy;

    if-eqz v0, :cond_1

    const-string v0, "BridgeProxy"

    const-string v1, "----- stop called -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final deleteFile(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to deleteFile"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "deleteFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "RCPManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteFile() containerId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; path="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo p2, "deleteFile"

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object p2, p2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p2, p1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_3
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_2
    return v1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string/jumbo p1, "No of Personas : "

    const-string/jumbo p3, "RCPManagerService"

    const-string/jumbo v0, "RCP DumpState Started"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial: can\'t dump RCPManagerService from from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/server/bridge/operations/RCPDumpState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    sput-object v2, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    :cond_1
    sget-object p1, Lcom/android/server/bridge/operations/RCPDumpState;->mRCPDumpState:Lcom/android/server/bridge/operations/RCPDumpState;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PersonaId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , isKnoxId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , isUserRunning : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++++++++FileOpsTable of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "++++++++++++++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p2}, Lcom/android/server/bridge/operations/RCPDumpState;->dumpStateFileOpsTable(ILjava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    const-string/jumbo p0, "No of Personas : Zero"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo v0, "exchangeData() return false for input param is not valid"

    const-string v1, "ERROR | exchange Data | from "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo p1, "RCPManagerService"

    const-string/jumbo p2, "failed to exchangeData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    const-string/jumbo v2, "exchangeData"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    if-gez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_7

    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_7

    const-string v2, "ImeReq"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Lcom/android/server/RCPManagerService;->processImeRequest(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_2
    const-string/jumbo v2, "updateKnoxCaptureFilter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string/jumbo p1, "input"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService;

    iput-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string/jumbo p1, "add"

    invoke-virtual {p3, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object p2, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :cond_4
    :try_start_3
    const-string/jumbo v2, "updateInputDeviceId"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p1, "add"

    invoke-virtual {p3, p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    const-string/jumbo p2, "deviceId"

    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget-object p3, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p3, Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p1, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;

    const-string/jumbo p2, "deviceId"

    invoke-virtual {p3, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget-object p1, p1, Lcom/android/server/KnoxCaptureInputFilter;->scannerDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    :goto_1
    monitor-exit p0

    return-object v3

    :cond_7
    :try_start_4
    const-string/jumbo p3, "RCPManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", to user id : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_8
    :goto_2
    :try_start_5
    const-string/jumbo p1, "RCPManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to getFileInfo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    const-string/jumbo v2, "getFileInfo"

    invoke-static {v2}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v2, "RCPManagerService"

    const-string/jumbo v3, "P_OS_RCP getFileInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "RCPManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getFileInfo() containerId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; path="

    invoke-static {v3, v4, p1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo v2, "getFileInfo"

    invoke-virtual {p0, v2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "/storage/emulated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/storage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/mnt/user/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EnterprisePartitionManager"

    const-string/jumbo v2, "getFileInfo - realath : "

    invoke-static {v2, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v3}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v4

    if-nez v4, :cond_3

    new-array p1, v0, [J

    const-wide/16 v3, -0x1

    aput-wide v3, p1, v1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v3, v3, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v3, p1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_2
    aget-wide v3, v2, v1

    long-to-int p1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    const/4 p1, -0x1

    :goto_2
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    if-nez p1, :cond_5

    aget-wide v3, v2, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const/4 p2, 0x2

    aget-wide v5, v2, p2

    const/4 p2, 0x3

    aget-wide v7, v2, p2

    const-wide/16 v9, 0x1

    cmp-long p2, v7, v9

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    move v0, v1

    move-wide v5, v3

    :goto_3
    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "last_modified_date"

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "file_size"

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "is_dir"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :goto_4
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_6
    :goto_5
    const/4 p1, -0x2

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to getFiles"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-string/jumbo v0, "getFiles"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "RCPManagerService"

    const-string/jumbo v1, "P_OS_RCP getFiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "RCPManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getFiles() containerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; path="

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo p2, "getFiles"

    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    const/4 p2, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v4}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, v4, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v4, p1, v0, v1, p0}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    throw p2
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    :goto_0
    :try_start_3
    monitor-exit v2

    if-eqz v3, :cond_3

    move-object p2, p0

    :cond_3
    return-object p2

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-object p2
.end method

.method public final getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    const-string/jumbo v0, "getRCPInterface"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getRCPInterface My Context is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RCPManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getRCPInterface getting User Id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IRCPInterface;

    return-object p0

    :cond_0
    const-string/jumbo v3, "getRCPInterfaceMap.get(userId) is null. Calling scanAndStartBridgeProxy"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/RCPManagerService;->scanAndStartBridgeProxy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IRCPInterface;

    return-object p0
.end method

.method public final initService()Z
    .locals 12

    const-string/jumbo v0, "ms elapsed"

    const-string/jumbo v1, "initService End, "

    const-string/jumbo v2, "RCPManagerService"

    const-string/jumbo v3, "initService Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const-string/jumbo p0, "initService is already done"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const-string/jumbo v5, "initService is doing ... "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    const-string/jumbo v7, "initService, failed to getContext"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    sub-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception v5

    move v7, v6

    goto/16 :goto_2

    :catch_0
    move-exception v7

    goto/16 :goto_1

    :cond_1
    :try_start_1
    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    if-nez v7, :cond_2

    const-string/jumbo v7, "initService, failed to get USER_SERVICE"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_3

    const-string/jumbo v7, "initService, failed to get SEM_PERSONA_SERVICE"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    if-nez v7, :cond_4

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->mBridgeHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mBridgeRunnable:Lcom/android/server/RCPManagerService$2;

    const-wide/16 v9, 0x2710

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v7, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContainerstateReceiver:Lcom/android/server/RCPManagerService$1;

    invoke-static {v7, v8}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    new-instance v7, Lcom/android/server/KnoxCaptureInputFilter;

    iget-object v8, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/KnoxCaptureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/RCPManagerService;->knoxCaptureInputFilter:Lcom/android/server/KnoxCaptureInputFilter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v3

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :goto_1
    :try_start_4
    const-string/jumbo v8, "initService is not completed due to... "

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_1
    move-exception v7

    move-object v11, v7

    move v7, v5

    move-object v5, v11

    :goto_2
    if-eqz v7, :cond_5

    iput-boolean v6, p0, Lcom/android/server/RCPManagerService;->mIsInitialized:Z

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v6, v3

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method

.method public final isFileExist(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to isFileExist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string/jumbo v1, "isFileExist"

    invoke-static {v1}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v1, "RCPManagerService"

    const-string/jumbo v3, "P_OS_RCP isFileExist"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "RCPManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isFileExist() containerId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; path="

    invoke-static {v3, v4, p1, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo v1, "isFileExist"

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "/storage/emulated"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "/storage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "/mnt/user/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p0, "EnterprisePartitionManager"

    const-string/jumbo p2, "getFileInfo - realath : "

    invoke-static {p2, p1, p0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {p2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_3

    new-array p1, v0, [J

    const-wide/16 v3, -0x1

    aput-wide v3, p1, v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object p2, p2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {p2, p1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    aget-wide p1, p1, v2

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    :goto_2
    :try_start_3
    monitor-exit p0

    return v2

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_5
    :goto_4
    return v2
.end method

.method public final moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 10

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo p1, "failed to moveFile"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "moveFile"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "RCPManagerService"

    const-string/jumbo v2, "P_OS_RCP moveFile"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "RCPManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "moveFile() srcContainerId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; srcFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; destContainerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; destFilePath="

    invoke-static {v2, v3, p4, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/EnterprisePartitionManager;

    move-result-object p0

    const-string/jumbo v0, "move"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "move"

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    if-nez v0, :cond_1

    const/16 p0, -0x13

    return p0

    :cond_1
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/EnterprisePartitionManager;->isUserUnlocked(I)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/knox/dar/EnterprisePartitionManager;->mPackageTasker:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v4, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/16 v9, 0x24

    move v6, p1

    move-object v5, p2

    move v8, p3

    move-object v7, p4

    invoke-interface/range {v4 .. v9}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_6

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
    :cond_6
    :goto_1
    :try_start_3
    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_7
    :goto_3
    const/4 p0, -0x2

    return p0
.end method

.method public final moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string/jumbo v3, "RCPManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "failed to moveFilesForAppEx"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    const-string/jumbo v0, "moveFilesForApp"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "moveFilesForAppEx  getRCPInterface not NULL "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveFilesForAppEx(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-string/jumbo p0, "moveFilesForAppEx  getRCPInterface NULL "

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final moveUnlimitedFiles(ILandroid/net/Uri;II)J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const-wide/16 v1, -0x1

    const-string/jumbo v3, "RCPManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "failed to moveUnlimitedFiles"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v0, "moveFilesForAppEx moveFiles(>500) getRCPInterface not NULL "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/IRCPInterface;->moveUnlimitedFilesForApp(ILandroid/net/Uri;II)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-string/jumbo p0, "moveFiles(>500) getRCPInterface NULL "

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public final registerRCPInterface(Landroid/content/IRCPInterface;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/RCPManagerService;->initService()Z

    move-result v0

    const-string/jumbo v1, "RCPManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "failed to registerRCPInterface"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "registerRCPInterface"

    invoke-static {v0}, Lcom/android/server/RCPManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerRCPInterface My Context is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerRCPInterface  User calling is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/RCPManagerService;->mRCPInterfaceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final scanAndStartBridgeProxy(I)V
    .locals 5

    const-string/jumbo v0, "bindToBridgeProxy : started BridgeProxy for user - "

    const-string v1, " Returning...BridgeProxy already active for user - "

    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "RCPManagerService"

    const-string v3, " scanAndStartBridgeProxy called for "

    invoke-static {p1, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "RCPManagerService"

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-static {p1, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, p1, :cond_2

    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "RCPManagerService"

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for persona - "

    invoke-static {p1, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mUm:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "RCPManagerService"

    const-string/jumbo v3, "scanAndStartBridgeProxy : starting BridgeProxy for owner - "

    invoke-static {p1, v3, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_5

    const-string/jumbo p0, "RCPManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v2

    return-void

    :cond_6
    new-instance v1, Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {v1, p1}, Lcom/android/server/bridge/BridgeProxy;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/server/bridge/BridgeProxy;->start(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_7

    const-string/jumbo p0, "RCPManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "RCPManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No need to start BridgeProxy for user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_8
    :goto_3
    iget-boolean p0, p0, Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z

    if-eqz p0, :cond_9

    const-string/jumbo p0, "RCPManagerService"

    const-string/jumbo v0, "scanAndStartBridgeProxy: NOT starting Bridge Proxy for user = "

    const-string v1, "; because it doesn\'t have personas or it is a guest!"

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
