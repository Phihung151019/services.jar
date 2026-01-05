.class public Lcom/android/server/knox/dar/DarManagerService;
.super Lcom/samsung/android/knox/dar/IDarManagerService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NULL_USER:Landroid/content/pm/UserInfo;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

.field public final mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

.field public final mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

.field public final mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

.field public final mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

.field public final mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, -0x2710

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/IDarManagerService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/DarManagerService$1;-><init>(Lcom/android/server/knox/dar/DarManagerService;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserSwitchObserver:Lcom/android/server/knox/dar/DarManagerService$1;

    const-string v1, "DarManagerService"

    const-string v2, "DarManagerService init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    sget-object v2, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    if-nez v2, :cond_1

    const-class v2, Lcom/android/server/knox/dar/KeyProtector;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/knox/dar/KeyProtector;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sput-object v3, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v2, Lcom/android/server/knox/dar/KeyProtector;->sInstance:Lcom/android/server/knox/dar/KeyProtector;

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p1, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->systemReady()V

    new-instance v0, Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/VirtualLockImpl;-><init>(Lcom/android/server/knox/dar/DarManagerService$Injector;)V

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance p1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    invoke-direct {p1, v1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    const-string p0, "DarManagerService_SDP"

    const-string/jumbo p1, "prepare EndpointMonitor Service"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fileRead(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static fileWrite(Ljava/lang/String;[B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public final addBlockedClearablePackages(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final addEngine(Lcom/samsung/android/knox/sdp/core/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final checkSystemPermission()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "DarManagerService"

    const-string/jumbo v1, "Require system permission."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred in pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearResetPasswordToken(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clear Reset password token for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final createEncPkgDir(ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return p0
.end method

.method public final deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public doesSpecificKeyExist(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->attach(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/KeyProtector;->checkSecretKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p2, "Key exists in keystore("

    const-string v0, ")"

    const-string v1, "KeyProtector"

    invoke-static {p2, p0, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    const-string v0, "DarManagerService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    if-eqz p3, :cond_7

    array-length p0, p3

    if-lez p0, :cond_7

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p1, "-a"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo p1, "sdplog"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_1
    const-string/jumbo p0, "sdplog_dump"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "-------------------------------------------------- START DUMP --------------------------------------------------"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    const-string p0, "Failed to dump: "

    sget-object p1, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    const-string/jumbo p3, "SDPLogFile"

    if-nez p1, :cond_2

    const-string p0, "Failed to dump: Maybe target file is already being used..."

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "Target file busy"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/data/log/sdp_log"

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLogFile;->check(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x11

    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    add-int/lit8 v1, p0, 0x1

    const/16 v2, 0x1770

    if-lt p0, v2, :cond_3

    const-string p1, "Dump line count reached to the limit: 6000"

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p0, v1

    goto :goto_0

    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    sget-object p0, Lcom/android/server/knox/dar/sdp/SDPLogFile;->FILE_LOCK:Ljava/util/concurrent/locks/Lock;

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :goto_6
    const-string p0, "-------------------------------------------------- END DUMP --------------------------------------------------"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void
.end method

.method public final exists(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public generateAndSaveSpecificKey(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveSpecificKeyViaProtector([BLjava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    return p0

    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    throw p0
.end method

.method public final getAvailableUserId()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public final getBlockedClearablePackages(I)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInnerAuthUserId(I)I
    .locals 0

    const/16 p0, -0x2710

    return p0
.end method

.method public final getMainUserId(I)I
    .locals 0

    const/16 p0, -0x2710

    return p0
.end method

.method public final getPackageListForDualDarPolicy(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPasswordMinimumLengthForInner()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getReservedUserIdForSystem()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x2710

    return p0
.end method

.method public getSpecificKeyViaProtector(Ljava/lang/String;I)[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(ILjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final getSupportedSDKVersion()D
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public handleUnlockSecureFolderWithToken(I)V
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    const-string/jumbo v0, "SdpTokenHandle"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v1, "DarManagerService"

    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "get SecureFolder Token Handle Failed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    const-string/jumbo v0, "SdpResetToken"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->getSpecificKeyViaProtector(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockSettingsInternal;

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v4, v2, v3, v0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->unlockUserWithToken(J[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Unexpected failure while unlock secure folder with token"

    invoke-static {v2, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/android/server/knox/dar/SecureUtil;->clear([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SecureFolder user "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been unlocked [ res : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final isDarSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isDefaultPathUser(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceRootKeyInstalled()Z
    .locals 10

    const-string/jumbo v0, "ro.hardware.virtual_device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DarManagerService"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue .. "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v0, "ro.security.keystore.keytype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sakm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-string v0, "Check SAK instead for JDM with GRDM or KnoxVault2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KnoxTestKey"

    const-string v4, "Failed while check SAK : "

    iget-object v5, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    new-instance v7, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v7}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    sget-object v8, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;

    move-result-object v7

    if-eqz v7, :cond_1

    move v3, v1

    :cond_1
    if-eqz v3, :cond_2

    const-string v7, "Generated keypair is protected by SAK"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isEmTokenAllowed()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v0, "Failed while check SAK. But, EM Token is allowed. Continue - "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v1

    :goto_3
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return v3

    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_2
    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v0, "DRK service is not ready..."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    goto :goto_6

    :goto_8
    invoke-static {v3}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return v3

    :goto_9
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isEmTokenAllowed()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p0, "EM Token status : "

    const-string v1, "DarManagerService"

    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final isInnerAuthRequired(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isKnoxKeyInstallable()Z
    .locals 15

    const-string v0, "KnoxTestKey"

    const-string/jumbo v1, "ro.hardware.virtual_device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p0, "DarManagerService"

    const-string/jumbo v0, "Will be Failed in device integrity check. But, running on VirtualDevice. Continue - "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x0

    :try_start_0
    new-instance v5, Lcom/samsung/android/security/keystore/AttestationUtils;

    invoke-direct {v5}, Lcom/samsung/android/security/keystore/AttestationUtils;-><init>()V

    sget-object v6, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v8, 0x4

    invoke-direct {v7, v0, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v13, "SHA-384"

    const-string/jumbo v14, "SHA-512"

    const-string/jumbo v9, "NONE"

    const-string/jumbo v10, "SHA-1"

    const-string/jumbo v11, "SHA-224"

    const-string/jumbo v12, "SHA-256"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    invoke-direct {v8, v6, v1, v7}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>([BZLandroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v5, v8}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->deleteKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "challenge == null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isLicensed()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final isResetPasswordTokenActive(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v2, p1}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSDPEnabled(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isSdpSupported()Z
    .locals 1

    const-string p0, "DarManagerService_SDP"

    const-string/jumbo v0, "SDP not supported"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSdpSupportedSecureFolder(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/knox/dar/DarManagerService;->NULL_USER:Landroid/content/pm/UserInfo;

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isSensitive(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return p0
.end method

.method public final isVirtualLockSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final lock(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final migrate(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final onBiometricsAuthenticated(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    return-void
.end method

.method public final onDeviceOwnerLocked(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    return-void
.end method

.method public prepareSecuredDataKey(I)V
    .locals 2

    const-string/jumbo v0, "SdpSecureDataKey"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->doesSpecificKeyExist(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/knox/dar/DarManagerService;->generateAndSaveSpecificKey(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Generate secure data key for user %d [ res : %b ]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DarManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final registerClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    return-void
.end method

.method public final registerListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final removeEngine(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final reportApplicationBinding(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->isOn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "DarManagerService"

    if-eq v0, p3, :cond_0

    const-string/jumbo p0, "reportApplicationBinding: pid is not matched"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p3}, Landroid/app/ActivityManagerInternal;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "reportApplicationBinding: Package is not valid with pid : "

    invoke-static {p3, p0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/DarManagerService$2;

    move-wide v5, p1

    move v1, p3

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/knox/dar/DarManagerService$2;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final reserveUserIdForSystem()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/16 v1, -0x2710

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    const-string/jumbo v0, "reserveUserIdForSystem"

    invoke-static {v0}, Lcom/android/server/knox/dar/DarManagerService$Injector;->enforceCallerKnoxCoreOrSelf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getReservedUserIdForSystem()I

    move-result v2

    if-eq v2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/VirtualLockImpl;->getAvailableUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "vl.reserved.userid"

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    return v1
.end method

.method public final resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final resetPasswordWithToken(Ljava/lang/String;[BI)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Reset password with token for user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualLockImpl"

    invoke-static {v1, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    invoke-virtual {v0, p3}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createPasswordOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez p1, :cond_3

    const-class p1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object p1, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/knox/dar/VirtualLockImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockscreenCredential;J[BI)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public saveResetTokenViaProtectorForLegacy([BI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SdpResetToken"

    invoke-static {p2, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return p0
.end method

.method public saveSpecificKeyViaProtector([BLjava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/knox/dar/SecureUtil;->isAnyoneEmptyHere([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p2, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p1

    invoke-static {p1}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public saveTokenHandleViaProtectorForLegacy(JI)Z
    .locals 2

    sget-object v0, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/server/knox/dar/sdp/security/BytesUtil;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mKeyProtector:Lcom/android/server/knox/dar/KeyProtector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SdpTokenHandle"

    invoke-static {p3, p0, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect(ILjava/lang/String;[B)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->record(Z)V

    return p0
.end method

.method public final saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final setDualDarInfo(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setInnerAuthUserId(II)V
    .locals 0

    return-void
.end method

.method public final setMainUserId(II)V
    .locals 0

    return-void
.end method

.method public final setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final setResetPasswordToken([BI)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isVirtualLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mVirtualLockImpl:Lcom/android/server/knox/dar/VirtualLockImpl;

    const-string/jumbo v0, "vl.rst.token.handle"

    iget-object v2, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mDarDatabaseCache:Lcom/android/server/knox/dar/DarDatabaseCache;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Set reset password token for user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VirtualLockImpl"

    invoke-static {v4, v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    array-length v3, p1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual {v2, p2}, Lcom/android/server/knox/dar/DarDatabaseCache;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p0, p2, v5, v6}, Lcom/android/server/knox/dar/VirtualLockImpl;->clearResetPasswordTokenInternal(IJ)Z

    iget-object v5, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/knox/dar/VirtualLockImpl;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$Injector;->mEscrowTokenStateChangeCallback:Lcom/android/server/knox/dar/DarManagerService$$ExternalSyntheticLambda0;

    invoke-virtual {v5, p1, p2, p0}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p2, v0, v5}, Lcom/android/server/knox/dar/DarDatabaseCache;->putInternal(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long p0, p0, v5

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must be at least 32-byte long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return v1
.end method

.method public setResetTokenForLegacy([BI)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Set reset token for Legacy user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/knox/dar/DarManagerService;->saveTokenHandleViaProtectorForLegacy(JI)Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v6, Lcom/android/server/knox/dar/SecureUtil;->sSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/knox/dar/DarManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v4, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeEscrowToken(JI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p2, "Unexpected exception while set reset token for Legacy"

    invoke-static {p1, v3, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    goto :goto_1

    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Result of set reset token for Legacy : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_4
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mInjector:Lcom/android/server/knox/dar/DarManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final setSensitive(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/4 p0, 0x0

    return p0
.end method

.method public final startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x6

    return p0
.end method

.method public final startTracing(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/knox/dar/DarManagerService;->startMonitoring(IILandroid/os/Bundle;Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)I

    move-result p0

    return p0
.end method

.method public final stopMonitoring(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mEndpointMonitorImpl:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->stopMonitoring(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x6

    return p0
.end method

.method public final stopTracing(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/DarManagerService;->stopMonitoring(II)I

    move-result p0

    return p0
.end method

.method public final systemReady()V
    .locals 3

    const-string v0, "DarManagerService"

    const-string/jumbo v1, "systemReady for DarManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DarManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/knox/dar/DarManagerService$DarHandler;-><init>(Lcom/android/server/knox/dar/DarManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/knox/dar/DarManagerService;->prepareSecuredDataKey(I)V

    const-class p0, Lcom/android/server/knox/dar/DarManagerService;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method

.method public final unregisterClient(ILcom/samsung/android/knox/dar/sdp/ISdpListener;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    return-void
.end method

.method public final unregisterListener(Ljava/lang/String;Lcom/samsung/android/knox/dar/sdp/ISdpListener;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->isSdpSupported()Z

    const/16 p0, -0xa

    return p0
.end method
