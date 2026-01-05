.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIsComplete:Z

.field public final mMessageSequenceNumber:I

.field public final mNanoAppId:J

.field public mNextRetryTime:J

.field public mNumCompletedStartCalls:I

.field public final mOwnerId:I

.field public final mPackage:Ljava/lang/String;

.field public mTimeoutTime:J

.field public final mTransactionId:I

.field public final mTransactionType:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    iput-wide p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    const p1, 0x7fffffff

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    const-wide p2, 0x7fffffffffffffffL

    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    iput-wide p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    const p3, 0x7fffffff

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    iput-wide p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    iput p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    return-void
.end method


# virtual methods
.method public final getOwnerId()J
    .locals 6

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mOwnerId:I

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public onQueryResponse(ILjava/util/List;)V
    .locals 0

    return-void
.end method

.method public abstract onTransact()I
.end method

.method public abstract onTransactionComplete(I)V
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "appId = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v2, "package = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7fffffff

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mMessageSequenceNumber:I

    if-eq v3, v2, :cond_1

    const-string v2, ", messageSequenceNumber = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    :cond_2
    const-string v1, ", nextRetryTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNextRetryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTimeoutTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", numCompletedStartCalls = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNumCompletedStartCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getOwnerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
