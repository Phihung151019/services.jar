.class public final Lcom/android/server/backup/fullbackup/FullBackupEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final lastBackup:J

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    iput-wide p1, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v0, p0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    iget-wide p0, p1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
