.class public final Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field public static mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;


# instance fields
.field public final mAllApps:Z

.field public final mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public final mCompress:Z

.field public final mCurrentOpToken:I

.field public final mCurrentPassword:Ljava/lang/String;

.field public mCurrentTarget:Landroid/content/pm/PackageInfo;

.field public final mDoWidgets:Z

.field public final mEncryptPassword:Ljava/lang/String;

.field public final mExtraFlag:I

.field public final mIncludeApks:Z

.field public final mIncludeObbs:Z

.field public final mIncludeShared:Z

.field public final mIncludeSystem:Z

.field public final mKeyValue:Z

.field public final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

.field public final mOutputFile:Landroid/os/ParcelFileDescriptor;

.field public final mPackages:Ljava/util/ArrayList;

.field public final mPrivilegeApp:Z

.field public final mSmartSwitchBackupPath:[Ljava/lang/String;

.field public final mTransportFlags:I

.field public final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/internal/LifecycleOperationStorage;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/backup/utils/BackupEligibilityRules;ZI[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result p2

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    iput-boolean p5, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    iput-boolean p6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    iput-boolean p7, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    iput-boolean p8, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    iput-boolean p11, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    iput-boolean p12, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez p15, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    if-eqz p10, :cond_2

    const-string p2, ""

    invoke-virtual {p2, p10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iput-object p10, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    iput-object p9, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    :goto_2
    iput-boolean p13, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    iput-boolean p14, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move/from16 p2, p18

    iput-boolean p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    move/from16 p2, p19

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    move/from16 p2, p21

    iput p2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isYuvaSupported()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "BackupManagerService"

    const-string p1, "Backup Manager Yuva is Supported"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/backup/BackupManagerYuva;->getInstanceBackupYuva()Lcom/android/server/backup/BackupManagerYuva;

    move-result-object p0

    sput-object p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    :cond_3
    return-void
.end method

.method public static finalizeBackup(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "BackupManagerService"

    const-string v0, "Error attempting to finalize backup stream"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v1, "Unknown package "

    const-string v2, ", skipping"

    const-string v3, "BackupManagerService"

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 11

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/16 v1, 0x40

    new-array v2, v1, [B

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v3, "PBKDF2WithHmacSHA1"

    const/16 v4, 0x2710

    invoke-static {v3, v0, v2, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    const/16 v5, 0x20

    new-array v5, v5, [B

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    new-array v1, v1, [B

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v8, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v8, p2, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const-string p2, "AES-256"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-virtual {p0, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-static {v0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [C

    const/4 v9, 0x0

    :goto_0
    array-length v10, v6

    if-ge v9, v10, :cond_0

    aget-byte v10, v6, v9

    int-to-char v10, v10

    aput-char v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v7, v1, v4}, Lcom/android/server/backup/utils/PasswordUtils;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, v0

    array-length v6, v2

    add-int/2addr v4, v6

    array-length v6, v1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v2

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    array-length v0, v1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-static {p0, v5}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v8
.end method

.method public final execute()V
    .locals 0

    return-void
.end method

.method public final handleCancel(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "adb backup cancel of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mBackupAgentConnectionManager:Lcom/android/server/backup/BackupAgentConnectionManager;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/backup/BackupAgentConnectionManager;->unbindAgent(Landroid/content/pm/ApplicationInfo;Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    iget p0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {p1, p0}, Lcom/android/server/backup/internal/LifecycleOperationStorage;->removeOperation(I)V

    return-void
.end method

.method public final operationComplete(J)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 25

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_0

    const-string v0, ", including key-value backups"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- Performing adb backup"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ---"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v15, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v15, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/UserBackupManagerService;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.sharedstoragebackup"

    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v15, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "BackupManagerService"

    const-string/jumbo v3, "full backup observer went away: startBackup"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v6, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "BackupManagerYuva"

    const-string/jumbo v8, "backup started "

    iput-object v5, v1, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    if-eqz v5, :cond_2

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    iget-object v8, v1, Lcom/android/server/backup/BackupManagerYuva;->mBackupPackageName:Ljava/lang/String;

    invoke-interface {v5, v8}, Landroid/app/backup/IMemorySaverBackupRestoreObserver;->onStartBackup(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string/jumbo v5, "full backup observer went away: startBackup"

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/android/server/backup/BackupManagerYuva;->mMemorySaverObserver:Landroid/app/backup/IMemorySaverBackupRestoreObserver;

    :cond_2
    :goto_2
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    if-eqz v5, :cond_5

    const/high16 v5, 0x8000000

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move v5, v3

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-boolean v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-nez v8, :cond_3

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v4

    if-nez v8, :cond_4

    :cond_3
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    iget-boolean v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_6
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v6, v0, v1}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z

    if-eqz v5, :cond_8

    iget v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_c

    :cond_8
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x200000

    and-int/2addr v8, v9

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    iget-object v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    invoke-virtual {v8, v7}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Package "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v11, " is key-value."

    invoke-static {v9, v10, v11, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Package "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, " is not eligible for backup, removing."

    invoke-static {v9, v7, v10, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v7, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_2
    iget-object v7, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_d

    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v7, :cond_d

    move v7, v4

    goto :goto_b

    :catchall_0
    move-exception v0

    move v13, v4

    move-object v1, v6

    :goto_6
    move-object v3, v15

    :goto_7
    move-object v15, v2

    :goto_8
    move-object v2, v0

    goto/16 :goto_31

    :catch_2
    move-exception v0

    move v13, v4

    move-object v1, v6

    :goto_9
    move-object v3, v15

    goto/16 :goto_28

    :catch_3
    move v13, v4

    move-object v1, v6

    :goto_a
    move-object v3, v15

    goto/16 :goto_2c

    :cond_d
    move v7, v3

    :goto_b
    :try_start_4
    iget-boolean v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPrivilegeApp:Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v8, :cond_11

    :try_start_5
    iget-object v8, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    iget-object v8, v8, Lcom/android/server/backup/UserBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    iget-object v10, v8, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android.permission.BACKUP"

    const-string/jumbo v12, "hasBackupPassword"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f

    const-string/jumbo v10, "PBKDF2WithHmacSHA1"

    invoke-virtual {v8, v10, v9}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    iget v10, v8, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_e

    const-string/jumbo v10, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {v8, v10, v9}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_c

    :cond_e
    move v8, v3

    goto :goto_d

    :cond_f
    :goto_c
    move v8, v4

    :goto_d
    if-nez v8, :cond_11

    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IO error closing adb backup file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_7
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v6}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_10
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    :goto_f
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :cond_11
    :try_start_9
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x400

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "ANDROID BACKUP\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v9, :cond_12

    :try_start_a
    const-string v9, "\n1\n"
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_10

    :cond_12
    :try_start_b
    const-string v9, "\n0\n"

    :goto_10
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v7, :cond_13

    :try_start_c
    invoke-virtual {v6, v8, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v7

    goto :goto_11

    :catch_5
    move-exception v0

    move v13, v4

    move-object v1, v6

    move-object v3, v15

    move-object v15, v2

    goto/16 :goto_25

    :cond_13
    const-string/jumbo v7, "none\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v0

    :goto_11
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v8, 0x9

    invoke-direct {v0, v8}, Ljava/util/zip/Deflater;-><init>(I)V

    new-instance v8, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v8, v7, v0, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v7, v8

    :cond_14
    :try_start_d
    iget-boolean v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v0, :cond_15

    :try_start_e
    iget-object v0, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v8, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v2, v0

    move v13, v4

    move-object v1, v6

    move-object v3, v15

    move-object v15, v7

    goto/16 :goto_31

    :catch_6
    move-exception v0

    move v13, v4

    :goto_12
    move-object v1, v6

    move-object v2, v7

    goto/16 :goto_9

    :catch_7
    move v13, v4

    :catch_8
    move-object v1, v6

    move-object v2, v7

    goto/16 :goto_a

    :catch_9
    :try_start_f
    const-string v0, "BackupManagerService"

    const-string/jumbo v8, "Unable to find shared-storage backup handler"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_15

    iput-boolean v4, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :cond_15
    :goto_13
    :try_start_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v8, v3

    :goto_14
    if-ge v8, v0, :cond_1b

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "--- Performing full backup for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ---"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "com.android.sharedstoragebackup"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move v10, v0

    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    move-object v11, v1

    iget-object v1, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    move-object v12, v5

    iget-boolean v5, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move v13, v4

    move-object v4, v9

    :try_start_11
    iget v9, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    move v14, v10

    iget v10, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mTransportFlags:I

    move-object/from16 v17, v11

    iget-object v11, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-object/from16 v18, v12

    iget v12, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mExtraFlag:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    move/from16 v19, v13

    :try_start_12
    iget-object v13, v6, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mSmartSwitchBackupPath:[Ljava/lang/String;

    move/from16 v20, v14

    new-instance v14, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;

    invoke-direct {v14, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;-><init>(Landroid/app/backup/IBackupManagerMonitor;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    move/from16 v21, v3

    const/4 v3, 0x0

    move-object/from16 v22, v2

    move-object v2, v7

    move/from16 v23, v8

    const-wide v7, 0x7fffffffffffffffL

    move-object/from16 v24, v15

    move-object/from16 v15, v22

    :try_start_13
    invoke-direct/range {v0 .. v14}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JIILcom/android/server/backup/utils/BackupEligibilityRules;I[Ljava/lang/String;Lcom/android/server/backup/utils/BackupManagerMonitorEventSender;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    move-object v1, v6

    if-eqz v16, :cond_16

    :try_start_14
    const-string/jumbo v3, "Shared storage"
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_18

    :catchall_3
    move-exception v0

    move-object v15, v2

    move-object/from16 v3, v24

    const/4 v13, 0x1

    goto/16 :goto_8

    :catch_a
    move-exception v0

    :goto_15
    move-object/from16 v3, v24

    :goto_16
    const/4 v13, 0x1

    goto/16 :goto_28

    :catch_b
    :goto_17
    move-object/from16 v3, v24

    :catch_c
    const/4 v13, 0x1

    goto/16 :goto_2c

    :cond_16
    :try_start_15
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :goto_18
    :try_start_16
    iget-object v5, v1, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    if-eqz v5, :cond_17

    :try_start_17
    invoke-interface {v5, v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto :goto_1a

    :catch_d
    :try_start_18
    const-string v3, "BackupManagerService"

    const-string/jumbo v5, "full backup observer went away: backupPackage"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v15, v1, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_1a

    :goto_19
    move-object/from16 v3, v24

    goto :goto_1c

    :cond_17
    :goto_1a
    :try_start_19
    iput-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    if-eqz v0, :cond_1a

    if-nez v16, :cond_1a

    move-object/from16 v3, v24

    :try_start_1a
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    if-eqz v0, :cond_18

    const/4 v13, 0x1

    :try_start_1b
    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    goto :goto_1b

    :cond_18
    const/4 v13, 0x1

    :goto_1b
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    goto/16 :goto_7

    :catch_e
    move-exception v0

    goto/16 :goto_28

    :catchall_5
    move-exception v0

    :goto_1c
    const/4 v13, 0x1

    goto/16 :goto_7

    :catch_f
    move-exception v0

    goto :goto_16

    :cond_19
    :goto_1d
    const/4 v13, 0x1

    goto :goto_1e

    :cond_1a
    move-object/from16 v3, v24

    goto :goto_1d

    :goto_1e
    add-int/lit8 v8, v23, 0x1

    move-object v6, v1

    move-object v7, v2

    move v4, v13

    move-object v2, v15

    move-object/from16 v1, v17

    move-object/from16 v5, v18

    move/from16 v0, v20

    move-object v15, v3

    move/from16 v3, v21

    goto/16 :goto_14

    :catchall_6
    move-exception v0

    :goto_1f
    move-object/from16 v3, v24

    goto :goto_1c

    :catchall_7
    move-exception v0

    goto :goto_19

    :catchall_8
    move-exception v0

    move-object v1, v6

    goto :goto_1f

    :catch_10
    move-exception v0

    move-object v1, v6

    goto/16 :goto_15

    :catch_11
    move-object v1, v6

    goto :goto_17

    :catchall_9
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v15

    move/from16 v13, v19

    goto/16 :goto_7

    :catch_12
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v15

    move/from16 v13, v19

    goto/16 :goto_28

    :catch_13
    move-object v1, v6

    move-object v2, v7

    move-object v3, v15

    move/from16 v13, v19

    goto/16 :goto_2c

    :catchall_a
    move-exception v0

    :goto_20
    move-object v1, v6

    move-object v2, v7

    goto/16 :goto_6

    :catch_14
    move-exception v0

    goto/16 :goto_12

    :catchall_b
    move-exception v0

    move v13, v4

    goto :goto_20

    :cond_1b
    move-object/from16 v17, v1

    move/from16 v21, v3

    move v13, v4

    move-object v1, v6

    move-object v3, v15

    move-object v15, v2

    move-object v2, v7

    iget-boolean v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v4, v21

    :goto_21
    if-ge v4, v0, :cond_1d

    move-object/from16 v12, v17

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object v7, v5

    check-cast v7, Landroid/content/pm/PackageInfo;

    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Performing key-value backup for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v8, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v8, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v10

    iget-object v6, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v11, v6, Lcom/android/server/backup/UserBackupManagerService;->mDataDir:Ljava/io/File;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object v6, v2

    :try_start_1c
    invoke-direct/range {v5 .. v11}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/UserBackupManagerService;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_16
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    move-object v2, v6

    :try_start_1d
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v7, :cond_1c

    :try_start_1e
    invoke-interface {v7, v6}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_22

    :catch_15
    :try_start_1f
    const-string v6, "BackupManagerService"

    const-string/jumbo v7, "full backup observer went away: backupPackage"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v15, v1, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    :cond_1c
    :goto_22
    invoke-virtual {v5}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V

    move-object/from16 v17, v12

    goto :goto_21

    :catchall_c
    move-exception v0

    move-object v2, v6

    goto/16 :goto_7

    :catch_16
    move-exception v0

    move-object v2, v6

    goto/16 :goto_28

    :catch_17
    move-object v2, v6

    goto/16 :goto_2c

    :cond_1d
    invoke-static {v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error closing adb backup file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_21
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1e

    :goto_24
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    goto/16 :goto_30

    :catchall_d
    move-exception v0

    :try_start_22
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    throw v0

    :goto_25
    :try_start_23
    const-string v2, "BackupManagerService"

    const-string/jumbo v4, "Unable to emit archive header"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1f

    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_19
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    goto :goto_26

    :catchall_e
    move-exception v0

    goto/16 :goto_8

    :catch_19
    move-exception v0

    move-object v2, v15

    goto :goto_28

    :catch_1a
    move-object v2, v15

    goto/16 :goto_2c

    :cond_1f
    :goto_26
    :try_start_24
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1b

    goto :goto_27

    :catch_1b
    move-exception v0

    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error closing adb backup file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    iget-object v2, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_25
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_20
    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v2, "Full backup pass complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    goto/16 :goto_f

    :catchall_f
    move-exception v0

    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    throw v0

    :catch_1c
    move-exception v0

    move v13, v4

    move-object v1, v6

    move-object v3, v15

    move-object v15, v2

    goto :goto_28

    :catch_1d
    move v13, v4

    move-object v1, v6

    move-object v3, v15

    move-object v15, v2

    goto :goto_2c

    :goto_28
    :try_start_27
    const-string v4, "BackupManagerService"

    const-string v5, "Internal exception during full backup"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_21

    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_4

    :cond_21
    if-eqz v2, :cond_22

    :try_start_28
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_29

    :catch_1e
    move-exception v0

    goto :goto_2a

    :cond_22
    :goto_29
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1e

    goto :goto_2b

    :goto_2a
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error closing adb backup file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_29
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1e

    goto/16 :goto_24

    :catchall_10
    move-exception v0

    :try_start_2a
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    throw v0

    :catch_1f
    :goto_2c
    :try_start_2b
    const-string v0, "BackupManagerService"

    const-string v4, "App died during full backup"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_23

    iput-boolean v13, v0, Lcom/android/server/backup/BackupManagerYuva;->isMemorySaverBackupFail:Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_4

    :cond_23
    if-eqz v2, :cond_24

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_2d

    :catch_20
    move-exception v0

    goto :goto_2e

    :cond_24
    :goto_2d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_20

    goto :goto_2f

    :goto_2e
    const-string v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IO error closing adb backup file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_2d
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_1e

    goto/16 :goto_24

    :goto_30
    return-void

    :catchall_11
    move-exception v0

    :try_start_2e
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    throw v0

    :goto_31
    if-eqz v15, :cond_25

    :try_start_2f
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    goto :goto_32

    :catch_21
    move-exception v0

    goto :goto_33

    :cond_25
    :goto_32
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_21

    goto :goto_34

    :goto_33
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IO error closing adb backup file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    iget-object v4, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_30
    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_12

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupTask;->sendEndBackup()V

    sget-object v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupManagerYuva:Lcom/android/server/backup/BackupManagerYuva;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerYuva;->sendEndBackupCallback()V

    :cond_26
    invoke-virtual {v3}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    const-string v0, "BackupManagerService"

    const-string v3, "Full backup pass complete."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->setSepWakeLock()V

    iget-object v0, v1, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakeLock()Lcom/android/server/backup/BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/BackupWakeLock;->release()V

    throw v2

    :catchall_12
    move-exception v0

    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    throw v0
.end method
