.class public Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    sput-object p2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    const-class p0, Landroid/app/backup/BackupManagerInternal;

    invoke-static {p0, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "backup"

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/backup/BackupManagerService$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    new-instance v0, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/BackupManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    iget-object p0, p0, Lcom/android/server/backup/BackupManagerService$Lifecycle;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService;->postToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public publishService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
