.class public final Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAccessTime:J

.field public final mAttributionFlags:I

.field public final mAttributionTag:Ljava/lang/String;

.field public final mChainId:J

.field public final mDeviceId:Ljava/lang/String;

.field public final mDiscretizedAccessTime:J

.field public final mDiscretizedDuration:J

.field public final mDuration:J

.field public final mOpCode:I

.field public final mOpFlags:I

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I

.field public final mUidState:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iput p6, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iput p7, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    iput p8, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    iput-wide p9, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    iput-wide p11, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    sget-wide p1, Lcom/android/server/appop/DiscreteOpsRegistry;->sDiscreteHistoryQuantization:J

    div-long/2addr p11, p1

    mul-long/2addr p11, p1

    iput-wide p11, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    iput-wide p13, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    invoke-static {p13, p14}, Lcom/android/server/appop/DiscreteOpsRegistry;->discretizeDuration(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    iget v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    iget v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    iget-wide v5, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    iget-wide p0, p1, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_b

    return v0

    :cond_b
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DiscreteOp{uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', attributionTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', opCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpCode:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mOpFlags:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAttributionFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uidState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mUidState:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mChainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", accessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedAccessTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedAccessTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscretizedDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->mDiscretizedDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
