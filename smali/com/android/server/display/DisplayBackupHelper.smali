.class public Lcom/android/server/display/DisplayBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DisplayBackupHelper"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBackupHelper$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayBackupHelper;-><init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/display/DisplayBackupHelper$Injector;)V
    .locals 2

    const-string/jumbo v0, "display"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    iput-object p2, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 7

    const-string v0, "DisplayBackupHelper"

    const-string/jumbo v1, "applyRestoredPayload for "

    const-string/jumbo v2, "display"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget-boolean v2, v2, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    new-instance v3, Landroid/util/AtomicFileOutputStream;

    new-instance v4, Landroid/util/AtomicFile;

    sget-boolean v5, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    new-instance v5, Ljava/io/File;

    invoke-static {v2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v6, "display_topology.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "topology-state"

    invoke-direct {v4, v5, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFileOutputStream;-><init>(Landroid/util/AtomicFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, p2}, Landroid/util/AtomicFileOutputStream;->write([B)V

    invoke-virtual {v3}, Landroid/util/AtomicFileOutputStream;->markSuccess()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p1, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    if-nez p1, :cond_1

    const-string p0, "DisplayManagerInternal is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget p0, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/hardware/display/DisplayManagerInternal;->reloadTopologies(I)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v3}, Landroid/util/AtomicFileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string/jumbo p1, "applyRestoredPayload failed"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 5

    const-string v0, "DisplayBackupHelper"

    const-string/jumbo v1, "getBackupPayload for "

    const-string/jumbo v2, "display"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayBackupHelper;->mInjector:Lcom/android/server/display/DisplayBackupHelper$Injector;

    iget-boolean v2, v2, Lcom/android/server/display/DisplayBackupHelper$Injector;->mIsDisplayTopologyEnabled:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/android/server/display/DisplayBackupHelper;->mUserId:I

    new-instance v2, Landroid/util/AtomicFile;

    sget-boolean v3, Lcom/android/server/display/DisplayTopologyXmlStore;->DEBUG:Z

    new-instance v3, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v4, "display_topology.xml"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p0, "topology-state"

    invoke-direct {v2, v3, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " done, size="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean p1, Lcom/android/server/display/DisplayBackupHelper;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "Skip topology backup"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
