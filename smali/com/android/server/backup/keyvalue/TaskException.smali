.class Lcom/android/server/backup/keyvalue/TaskException;
.super Lcom/android/server/backup/keyvalue/BackupException;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mStateCompromised:Z

.field private final mStatus:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/BackupException;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    iput p1, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/Exception;)V

    iput-boolean p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    iput p3, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method public static stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    instance-of v0, p0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    new-instance v2, Lcom/android/server/backup/keyvalue/TaskException;

    iget v0, v0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    invoke-direct {v2, p0, v1, v0}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/16 v2, -0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    return-object v0
.end method


# virtual methods
.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return p0
.end method

.method public final isStateCompromised()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    return p0
.end method
