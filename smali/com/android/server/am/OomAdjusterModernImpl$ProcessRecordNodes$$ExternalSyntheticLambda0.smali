.class public final synthetic Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    sget-object p1, Lcom/android/server/am/OomAdjusterModernImpl;->ADJ_SLOT_VALUES:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    const/16 v1, 0x11

    if-lt p0, v0, :cond_1

    aget v0, p1, v1

    if-gt p0, v0, :cond_1

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    add-int/lit8 v1, p0, -0x1

    :cond_1
    :goto_0
    return v1

    :pswitch_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return p0

    :pswitch_2
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-ltz p0, :cond_2

    const/16 p1, 0x13

    if-gt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p0, 0x14

    :goto_1
    return p0

    :pswitch_3
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
