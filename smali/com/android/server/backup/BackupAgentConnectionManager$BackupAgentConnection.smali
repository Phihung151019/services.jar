.class public final Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public backupAgent:Landroid/app/IBackupAgent;

.field public final backupMode:I

.field public connecting:Z

.field public final inRestrictedMode:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->connecting:Z

    iput-object p1, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput p2, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->backupMode:I

    iput-boolean p3, p0, Lcom/android/server/backup/BackupAgentConnectionManager$BackupAgentConnection;->inRestrictedMode:Z

    return-void
.end method
