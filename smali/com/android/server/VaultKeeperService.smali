.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/VaultKeeperService$1;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mServiceSupport:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vkjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Lcom/android/server/VaultKeeperService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const-string/jumbo v0, "VK_WakeLock"

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private native nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I
.end method


# virtual methods
.method public final checkDataWritable(Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "checkDataWritable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VaultKeeper not support("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v1, ")"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 p0, -0x68

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 p0, -0x6a

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p0, -0x69

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public final destroy(Ljava/lang/String;[B[B[B)I
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 p0, -0x68

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 p0, -0x6a

    return p0

    :cond_1
    const/16 v1, -0x66

    if-eqz p2, :cond_2

    array-length v3, p2

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "destroy : Invalid hmac length "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p2

    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_2
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    array-length v3, p3

    if-nez v3, :cond_3

    const-string/jumbo p0, "destroy : if cert is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    array-length v3, p4

    if-nez v3, :cond_4

    const-string/jumbo p0, "destroy : if signature is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    const-string/jumbo p0, "destroy : Invalid arguments(too many arguments)"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_6
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p0, -0x69

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public final encryptMessage(Ljava/lang/String;[B)[B
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "encryptMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    if-eqz p2, :cond_2

    array-length v3, p2

    if-nez v3, :cond_2

    const-string/jumbo p0, "encryptMessage : if msg is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_3
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2
.end method

.method public final generateHotpCode(Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "generateHotpCode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VaultKeeper not support("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v1, ")"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 p0, -0x68

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 p0, -0x6a

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p0, -0x69

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "system_server"

    const-string/jumbo v1, "NOT Allowed : "

    const-string/jumbo v2, "Permission denied. Check your UID ("

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get service instance by ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "VaultKeeperService"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_b

    if-nez p1, :cond_0

    :try_start_1
    const-string/jumbo p1, "Vault name is null"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "Vault name is wrong"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const v6, 0x186a0

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    rem-int/2addr p1, v6

    const/16 v7, 0x3e8

    if-ne p1, v7, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    rem-int/2addr p1, v6

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_3
    :try_start_7
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v0, "system"

    invoke-static {v0}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t signed with platform key."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_9
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_5

    const-string p1, "ActivityManager is null, something wrong in framework"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :cond_5
    :try_start_b
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo p1, "getRunningAppProcesses return null List. Cannot check permision"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_d
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_7

    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object v0, p1

    goto :goto_1

    :cond_8
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_9

    const-string p1, "Invalid package name"

    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :cond_9
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "Invalid package length"

    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    :cond_a
    :goto_2
    :try_start_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client info : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0

    return-object v0

    :goto_3
    :try_start_13
    const-string v0, "Fail to check permission(Exception)"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v3

    :goto_4
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_b
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0

    return-object v3

    :goto_5
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v3
.end method

.method public final initialize(Ljava/lang/String;[B[B[B[B)I
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v2, ")"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 p0, -0x68

    return p0

    :cond_0
    move-object v1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 p0, -0x6a

    return p0

    :cond_1
    const/16 v3, -0x66

    if-eqz p2, :cond_2

    array-length v4, p2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "initialize : if key is exist, it should be 32 Bytes. but now("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p2

    invoke-static {p1, v1, v0, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v3

    :cond_2
    if-eqz p3, :cond_3

    array-length v1, p3

    if-nez v1, :cond_3

    const-string/jumbo p0, "initialize : if initUnsheltered is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz p4, :cond_4

    array-length v1, p4

    if-nez v1, :cond_4

    const-string/jumbo p0, "initialize : if cert is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    if-eqz p5, :cond_5

    array-length v1, p5

    if-nez v1, :cond_5

    const-string/jumbo p0, "initialize :  if signature is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    array-length v1, p5

    array-length v4, p4

    add-int/2addr v1, v4

    new-array v1, v1, [B

    array-length v4, p5

    const/4 v5, 0x0

    invoke-static {p5, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p5

    array-length v6, p4

    invoke-static {p4, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-nez p4, :cond_7

    if-nez p5, :cond_7

    const-string/jumbo p0, "initialize : All of input param is empty."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_7
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {p4, v3, v4, p5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_8
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p0, -0x69

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0
.end method

.method public final isInitialized(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "isInitialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VaultKeeper not support("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v1, ")"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public final migrationStorage(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "migrationStorage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VaultKeeper not support("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string v1, ")"

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_2
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public final read(Ljava/lang/String;I[I)[B
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "read"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-lt p2, v3, :cond_5

    const/4 v4, 0x2

    if-le p2, v4, :cond_2

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return-object v2

    :cond_3
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2

    :cond_5
    :goto_2
    const-string/jumbo p0, "read : Invalid type value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final sensitiveBox(Ljava/lang/String;I[I)[B
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "sensitiveBox"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-lt p2, v3, :cond_5

    const/16 v4, 0x9

    if-le p2, v4, :cond_2

    goto :goto_2

    :cond_2
    if-nez p3, :cond_3

    :goto_0
    return-object v2

    :cond_3
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-object v2

    :cond_5
    :goto_2
    const-string/jumbo p0, "sensitiveBox : Invalid type value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final verifyCertificate(Ljava/lang/String;[B)Z
    .locals 7

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "verifyCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p0, "verifyCertificate : cert is null."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    array-length v3, p2

    if-nez v3, :cond_3

    const-string/jumbo p0, "verifyCertificate : certificate length is zero"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_4

    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_4
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2
.end method

.method public final write(Ljava/lang/String;I[B[B[B)I
    .locals 8

    const-string/jumbo v0, "VaultKeeperService"

    const-string/jumbo v1, "write"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "VaultKeeper not support("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    const-string p2, ")"

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 p0, -0x68

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 p0, -0x6a

    return p0

    :cond_1
    const/4 v1, 0x1

    const/16 v3, -0x66

    if-lt p2, v1, :cond_7

    const/4 v4, 0x2

    if-le p2, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    array-length v4, p3

    if-nez v4, :cond_3

    const-string/jumbo p0, "write : if data is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz p4, :cond_4

    array-length v4, p4

    if-nez v4, :cond_4

    const-string/jumbo p0, "write : if cert is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    if-eqz p5, :cond_5

    array-length v4, p5

    if-nez v4, :cond_5

    const-string/jumbo p0, "write : if sig is exist, it should contain value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    iget-object p1, v1, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_6
    const-string/jumbo p0, "Unable to acquire lock"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 p0, -0x69

    return p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/16 p0, -0x67

    return p0

    :cond_7
    :goto_0
    const-string/jumbo p0, "write : Invalid type value."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
