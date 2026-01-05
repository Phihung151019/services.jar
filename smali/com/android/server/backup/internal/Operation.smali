.class public final Lcom/android/server/backup/internal/Operation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final callback:Lcom/android/server/backup/BackupRestoreTask;

.field public state:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupRestoreTask;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/Operation;->state:I

    iput-object p1, p0, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    iput p2, p0, Lcom/android/server/backup/internal/Operation;->type:I

    return-void
.end method
