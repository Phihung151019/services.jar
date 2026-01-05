.class public final Lcom/android/server/backup/WearBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "wear"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    const-class v0, Lcom/android/server/backup/WearBackupInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/WearBackupInternal;

    iput-object v0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/server/backup/WearBackupInternal;->applyRestoredPayload([B)V

    :cond_0
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    const-string/jumbo v0, "wear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backup/WearBackupHelper;->mWearBackupInternal:Lcom/android/server/backup/WearBackupInternal;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/backup/BlobBackupHelper;->getLogger()Landroid/app/backup/BackupRestoreEventLogger;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/server/backup/WearBackupInternal;->getBackupPayload(Landroid/app/backup/BackupRestoreEventLogger;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
