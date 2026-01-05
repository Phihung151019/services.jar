.class public final synthetic Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 2

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    if-ltz p0, :cond_1

    const/16 p1, 0x11

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    aget p0, p1, p0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x3e8

    :goto_1
    return p0

    :pswitch_0
    iget p0, p1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    const/16 p1, 0x11

    if-ltz p0, :cond_3

    if-lt p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    aget-boolean v0, v0, p0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x3e8

    if-eqz v0, :cond_5

    if-ltz p0, :cond_5

    if-lt p0, p1, :cond_4

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    aget v1, p1, p0

    :cond_5
    :goto_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
