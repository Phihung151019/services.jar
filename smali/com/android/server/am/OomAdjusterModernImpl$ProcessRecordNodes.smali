.class public final Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFirstPopulatedSlot:I

.field public final mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

.field public final mSlotFunction:Ljava/util/function/ToIntFunction;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    iput p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    :goto_0
    new-array v0, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    :goto_1
    if-ge p1, p3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    new-instance v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    invoke-direct {v1, p2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;-><init>(Ljava/util/function/ToIntFunction;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    new-array p1, p3, [Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->reset()V

    return-void
.end method


# virtual methods
.method public final offer(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mSlotFunction:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge p1, v1, :cond_0

    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    aget-object p0, p0, p1

    iget-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    iget-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v2, v3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    if-le v2, p1, :cond_1

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object p0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    return-void
.end method

.method public final poll()Lcom/android/server/am/ProcessRecord;
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    if-nez v3, :cond_2

    iget v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    if-ge v4, v1, :cond_2

    aget-object v3, v0, v4

    iget-object v4, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v4, v4, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v3, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-ne v4, v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    move-object v3, v4

    :goto_1
    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mFirstPopulatedSlot:I

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-object v2

    :cond_3
    iget-object p0, v3, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mApp:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mProcessRecordNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->reset()V

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final unlink(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mLinkedNodes:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget v1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mType:I

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    sget-object v1, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    const/4 v4, 0x0

    aget v4, v1, v4

    const/16 v5, 0x11

    if-lt p1, v4, :cond_4

    aget v4, v1, v5

    if-gt p1, v4, :cond_4

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    neg-int p1, v5

    add-int/lit8 v5, p1, -0x1

    goto :goto_1

    :cond_2
    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ltz p1, :cond_3

    const/16 v1, 0x13

    if-gt p1, v1, :cond_3

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x14

    goto :goto_0

    :cond_4
    :goto_1
    if-eq v5, v2, :cond_5

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->mLastNode:[Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aget-object p1, p0, v5

    if-ne p1, v0, :cond_5

    iget-object p1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    aput-object p1, p0, v5

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->unlink()V

    return-void
.end method
