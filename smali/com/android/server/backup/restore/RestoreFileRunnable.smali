.class public final Lcom/android/server/backup/restore/RestoreFileRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAgent:Landroid/app/IBackupAgent;

.field public final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field public final mInfo:Lcom/android/server/backup/FileMetadata;

.field public final mSocket:Landroid/os/ParcelFileDescriptor;

.field public final mToken:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iput-object p3, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    iput p5, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mInfo:Lcom/android/server/backup/FileMetadata;

    move-object v4, v2

    iget-wide v2, v4, Lcom/android/server/backup/FileMetadata;->size:J

    move-object v5, v4

    iget v4, v5, Lcom/android/server/backup/FileMetadata;->type:I

    move-object v6, v5

    iget-object v5, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v7, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object v9, v7

    iget-wide v7, v9, Lcom/android/server/backup/FileMetadata;->mode:J

    iget-wide v9, v9, Lcom/android/server/backup/FileMetadata;->mtime:J

    iget v11, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mToken:I

    iget-object p0, p0, Lcom/android/server/backup/restore/RestoreFileRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v12, p0, Lcom/android/server/backup/UserBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface/range {v0 .. v12}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
