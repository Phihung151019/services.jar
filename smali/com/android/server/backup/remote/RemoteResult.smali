.class public final Lcom/android/server/backup/remote/RemoteResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

.field public static final FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;


# instance fields
.field public final mType:I

.field public final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_TIMED_OUT:Lcom/android/server/backup/remote/RemoteResult;

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_CANCELLED:Lcom/android/server/backup/remote/RemoteResult;

    new-instance v0, Lcom/android/server/backup/remote/RemoteResult;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/remote/RemoteResult;-><init>(IJ)V

    sput-object v0, Lcom/android/server/backup/remote/RemoteResult;->FAILED_THREAD_INTERRUPTED:Lcom/android/server/backup/remote/RemoteResult;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    iput-wide p2, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/backup/remote/RemoteResult;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/server/backup/remote/RemoteResult;

    iget v0, p1, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-ne v1, v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    iget-wide p0, p1, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RemoteResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mType:I

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    if-eq v1, p0, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    const/4 p0, 0x3

    if-ne v1, p0, :cond_0

    const-string p0, "FAILED_THREAD_INTERRUPTED"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string/jumbo v0, "Unknown type"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    const-string p0, "FAILED_CANCELLED"

    goto :goto_0

    :cond_2
    const-string p0, "FAILED_TIMED_OUT"

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/android/server/backup/remote/RemoteResult;->mValue:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
