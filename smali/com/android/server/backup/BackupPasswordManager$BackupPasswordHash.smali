.class public final Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final hash:Ljava/lang/String;

.field public final salt:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    return-void
.end method
