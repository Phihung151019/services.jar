.class public final synthetic Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/fullbackup/FullBackupEngine;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iput-wide p2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final call(Lcom/android/server/backup/remote/FutureBackupCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v1, v0, Lcom/android/server/backup/fullbackup/FullBackupEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-wide v2, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/backup/fullbackup/FullBackupEngine$$ExternalSyntheticLambda0;->f$2:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method
