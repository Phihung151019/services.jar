.class public final synthetic Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/BackupManagerService$Lifecycle;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/BackupManagerService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/BackupManagerService$Lifecycle;

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v1, v0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->isBackupActivatedForUser(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->stopServiceForUser(I)V

    :cond_2
    const-string v1, "Default backup user changed from "

    const-string v3, " to "

    invoke-static {v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/server/backup/BackupManagerService;->mDefaultBackupUserId:I

    const-string v3, "BackupManagerService"

    invoke-static {v1, v2, v3}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/backup/BackupManagerService;->startServiceForUser(I)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/backup/BackupManagerService;->mHasFirstUserUnlockedSinceBoot:Z

    return-void
.end method
