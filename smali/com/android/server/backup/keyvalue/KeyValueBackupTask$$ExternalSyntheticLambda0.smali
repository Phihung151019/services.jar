.class public final synthetic Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/backup/remote/RemoteCallable;


# instance fields
.field public final synthetic f$0:Landroid/app/IBackupAgent;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/IBackupAgent;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBackupAgent;

    iput-wide p2, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final call(Lcom/android/server/backup/remote/FutureBackupCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$0:Landroid/app/IBackupAgent;

    sget-object v1, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->THREAD_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-wide v1, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/backup/keyvalue/KeyValueBackupTask$$ExternalSyntheticLambda0;->f$2:J

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    return-void
.end method
