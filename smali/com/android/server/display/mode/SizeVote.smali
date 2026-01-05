.class public final Lcom/android/server/display/mode/SizeVote;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/mode/Vote;


# instance fields
.field public final mHeight:I

.field public final mMinHeight:I

.field public final mMinWidth:I

.field public final mWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    iput p2, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    iput p3, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    iput p4, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/display/mode/SizeVote;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/server/display/mode/SizeVote;

    iget v1, p1, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    iget v3, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    if-ne v3, v1, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    iget v3, p1, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    iget p1, p1, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SizeVote{ mWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    const-string v1, " }"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 6

    iget v0, p0, Lcom/android/server/display/mode/SizeVote;->mHeight:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/server/display/mode/SizeVote;->mWidth:I

    if-lez v1, :cond_1

    iget v2, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    iget v3, p0, Lcom/android/server/display/mode/SizeVote;->mMinHeight:I

    iget p0, p0, Lcom/android/server/display/mode/SizeVote;->mMinWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    iget v5, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    if-ne v5, v4, :cond_0

    iput v1, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    iput v3, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    return-void

    :cond_0
    iget-boolean v4, p1, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    if-eqz v4, :cond_1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p1, Lcom/android/server/display/mode/VoteSummary;->width:I

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->height:I

    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    iget p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    :cond_1
    return-void
.end method
