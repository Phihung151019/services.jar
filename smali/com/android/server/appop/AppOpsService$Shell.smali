.class public final Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public attributionTag:Ljava/lang/String;

.field public final mInterface:Lcom/android/server/appop/AppOpsService;

.field public final mInternal:Lcom/android/server/appop/AppOpsService;

.field public final mToken:Landroid/os/IBinder;

.field public mode:I

.field public modeStr:Ljava/lang/String;

.field public nonpackageUid:I

.field public op:I

.field public opStr:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageUid:I

.field public targetsUid:Z

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$smstrOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method public static strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v0, "Error: Mode "

    const-string v1, " is not valid"

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    const-string v3, "Default mode: "

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v7, "read-settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x5

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :sswitch_1
    const-string/jumbo v7, "start"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "reset"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "stop"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "note"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "set"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "get"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v7, "query-op"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v7, "write-settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    move-result v1

    if-gez v1, :cond_2

    return v1

    :cond_2
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_2d

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return v8

    :pswitch_1
    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    move-result v1

    if-gez v1, :cond_3

    return v1

    :cond_3
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_2d

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string/jumbo v17, "appops start shell command"

    const/16 v20, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-interface/range {v9 .. v20}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    return v8

    :pswitch_2
    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    move-result v1

    if-gez v1, :cond_4

    return v1

    :cond_4
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_2d

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-string/jumbo v15, "appops note shell command"

    const/16 v16, 0x1

    const/4 v14, 0x1

    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    return v8

    :pswitch_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->exists()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService;->mStorageFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v5}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    goto :goto_2

    :cond_5
    iget-object v5, v3, Lcom/android/server/appop/AppOpsService;->mRecentAccessesFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v5}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses(Landroid/util/AtomicFile;)V

    :goto_2
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    const-string v0, "Last settings read."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_4
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    const-string v0, "Current settings written."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    return v8

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_3
    :try_start_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_5
    const/4 v2, -0x2

    move v3, v2

    :goto_4
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v10, "--user"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :cond_6
    if-nez v9, :cond_7

    move-object v9, v7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Unsupported argument: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_8
    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-static {v7, v1}, Lcom/android/server/appop/AppOpsService;->shouldBlockCommand$1(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v0, "blocked."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_9
    if-ne v3, v2, :cond_a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    :cond_a
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    invoke-interface {v0, v3, v9}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    const-string/jumbo v0, "Reset all modes for: "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ne v3, v6, :cond_b

    const-string/jumbo v0, "all users"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string/jumbo v0, "user "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(I)V

    :goto_5
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v9, :cond_c

    const-string/jumbo v0, "all packages"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :cond_c
    const-string/jumbo v0, "package "

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_6
    invoke-virtual {v0, v5}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(Ljava/io/PrintWriter;)I

    move-result v1

    if-gez v1, :cond_d

    return v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_e

    goto :goto_9

    :cond_e
    move v3, v8

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v7

    move v9, v8

    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-ne v11, v12, :cond_f

    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v10

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-ne v10, v11, :cond_f

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    add-int/2addr v9, v2

    goto :goto_7

    :cond_10
    :goto_8
    add-int/2addr v3, v2

    goto :goto_6

    :cond_11
    move v12, v8

    goto/16 :goto_11

    :cond_12
    :goto_9
    const-string/jumbo v0, "No operations."

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v8

    :pswitch_7
    invoke-virtual {v0, v5, v8}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    move-result v1

    if-gez v1, :cond_13

    return v1

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_17

    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v10, v6, :cond_14

    filled-new-array {v10}, [I

    move-result-object v10

    goto :goto_a

    :cond_14
    move-object v10, v9

    :goto_a
    invoke-interface {v5, v7, v10}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_15
    iget-object v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v11, v6, :cond_16

    filled-new-array {v11}, [I

    move-result-object v9

    :cond_16
    invoke-interface {v5, v7, v10, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    :cond_17
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-eq v7, v6, :cond_18

    filled-new-array {v7}, [I

    move-result-object v9

    :cond_18
    invoke-interface {v1, v5, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    move-result-object v1

    :cond_19
    :goto_b
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1b

    :cond_1a
    move v12, v8

    goto/16 :goto_10

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move v3, v8

    :goto_c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_11

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1c

    const-string/jumbo v7, "Uid mode: "

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    move v7, v8

    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_25

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    invoke-static {v12}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    const-wide/16 v13, -0x1

    const/16 v15, 0x1f

    if-nez v12, :cond_20

    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v16

    cmp-long v12, v16, v13

    if-eqz v12, :cond_1d

    const-string v12, "; time="

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v16

    move v12, v8

    move-wide/from16 v18, v9

    sub-long v8, v18, v16

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " ago"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    :cond_1d
    move v12, v8

    move-wide/from16 v18, v9

    :goto_e
    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v8

    cmp-long v8, v8, v13

    if-eqz v8, :cond_1e

    const-string v8, "; rejectTime="

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v8

    sub-long v9, v18, v8

    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " ago"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1f

    const-string v8, " (running)"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1f
    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v8

    cmp-long v8, v8, v13

    if-eqz v8, :cond_24

    const-string v8, "; duration="

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    goto :goto_f

    :cond_20
    move v12, v8

    move-wide/from16 v18, v9

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$AttributedOpEntry;

    if-eqz v8, :cond_24

    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-eqz v9, :cond_21

    const-string v9, "; time="

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v9

    sub-long v9, v18, v9

    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, " ago"

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-eqz v9, :cond_22

    const-string v9, "; rejectTime="

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    move-result-wide v9

    sub-long v9, v18, v9

    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, " ago"

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_23

    const-string v8, " (running)"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v9

    cmp-long v9, v9, v13

    if-eqz v9, :cond_24

    const-string v9, "; duration="

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_24
    :goto_f
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    add-int/2addr v7, v2

    move v8, v12

    move-wide/from16 v9, v18

    goto/16 :goto_d

    :cond_25
    move v12, v8

    move-wide/from16 v18, v9

    add-int/2addr v3, v2

    goto/16 :goto_c

    :goto_10
    const-string/jumbo v1, "No operations."

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-le v1, v6, :cond_26

    const/16 v2, 0xa5

    if-ge v1, v2, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    :goto_11
    return v12

    :pswitch_8
    move v12, v8

    invoke-virtual {v0, v5, v2}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    move-result v1

    if-gez v1, :cond_27

    return v1

    :cond_27
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    const-string v0, "Error: Mode not specified."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_28
    invoke-static {v5, v1}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_29

    goto :goto_13

    :cond_29
    iget v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-static {v3, v2}, Lcom/android/server/appop/AppOpsService;->shouldBlockCommand$1(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v0, "blocked."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v6

    :cond_2a
    iget-boolean v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    if-nez v2, :cond_2b

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2b

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    invoke-interface {v2, v5, v0, v3, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    return v12

    :cond_2b
    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v2, :cond_2c

    :try_start_a
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    return v12

    :cond_2c
    :try_start_b
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/server/appop/AppOpsService;

    iget v3, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    invoke-interface {v2, v3, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    return v12

    :goto_12
    const-string/jumbo v1, "Remote exception: "

    invoke-static {v1, v0, v4}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    :catch_1
    :cond_2d
    :goto_13
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_8
        -0x458a76fa -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1bc62 -> :sswitch_5
        0x33aff2 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    const-string v0, "AppOps service (appops) commands:"

    const-string v1, "  help"

    const-string v2, "    Print this help text."

    const-string v3, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Starts a given operation for a particular application."

    const-string v1, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    const-string v2, "    Stops a given operation for a particular application."

    const-string v3, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Set the mode for a particular application and operation."

    const-string v1, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    const-string v2, "    Return the mode for a particular application and optional operation."

    const-string v3, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Print all packages that currently have the given op in the given mode."

    const-string v1, "  reset [--user <USER_ID>] [<PACKAGE>]"

    const-string v2, "    Reset the given application or all applications to default modes."

    const-string v3, "  write-settings"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Immediately write pending changes to storage."

    const-string v1, "  read-settings"

    const-string v2, "    Read the last written settings, replacing current state in RAM."

    const-string v3, "  options:"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    const-string v1, "    <OP>      an AppOps operation."

    const-string v2, "    <MODE>    one of allow, ignore, deny, or default"

    const-string v3, "    <USER_ID> the user id under which the package is installed. If --user is"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "              not specified, the current user is assumed."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseUserOpMode(Ljava/io/PrintWriter;)I
    .locals 2

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    const/4 v1, -0x1

    if-nez v0, :cond_4

    const-string p0, "Error: Operation not specified."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    if-gez p1, :cond_7

    :goto_1
    return v1

    :cond_6
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final parseUserPackageOp(Ljava/io/PrintWriter;Z)I
    .locals 9

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const-string v4, "--user"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    goto :goto_0

    :cond_1
    const-string v4, "--uid"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    goto :goto_0

    :cond_2
    const-string v4, "--attribution"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v4, :cond_4

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v4, :cond_0

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v2, :cond_6

    const-string p0, "Error: Package name not specified."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    const-string p0, "Error: Operation not specified."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {p1, v2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    if-gez p2, :cond_9

    return v4

    :cond_8
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    :cond_9
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    if-ne p2, v0, :cond_a

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    :cond_a
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    :try_start_0
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    const/4 v0, 0x0

    if-ne p2, v4, :cond_e

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v3, :cond_e

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x75

    if-ne p2, v2, :cond_e

    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_e

    move p2, v3

    :goto_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-ge p2, v2, :cond_b

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_b

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v5, :cond_b

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    if-le p2, v3, :cond_e

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_e

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr p2, v3

    move v3, p2

    :goto_2
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_c

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_c

    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    if-le v3, p2, :cond_e

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v3, 0x61

    if-ne v7, v3, :cond_d

    add-int/lit16 p2, p2, 0x2710

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    goto :goto_3

    :cond_d
    const/16 v3, 0x73

    if-ne v7, v3, :cond_e

    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_e
    :goto_3
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    if-eq p2, v4, :cond_f

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_4

    :cond_f
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p2, :cond_10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    const-wide/16 v2, 0x2000

    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-interface {p2, v1, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    :cond_10
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    if-gez p2, :cond_11

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error: No UID for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    return v4

    :cond_11
    :goto_4
    return v0
.end method
