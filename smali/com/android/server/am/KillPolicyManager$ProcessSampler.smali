.class public final Lcom/android/server/am/KillPolicyManager$ProcessSampler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ADJ_PRIORITY_BY_LABEL_INDEX:[I

.field public static final ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z


# instance fields
.field public mIsUserTrialDevice:Z

.field public mTotalProcessInfos:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ADJ_PRIORITY_BY_LABEL_INDEX:[I

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x4
        0x0
        0x1
        0x1
        0x1
        0x5
        0x5
        0x2
        0x5
        0x4
        0x2
        0x6
        0x6
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final sampleAdjPriority(IZ)Ljava/util/List;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    move p2, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    if-ltz v1, :cond_1

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->ALWAYS_RUNNING_ADJ_BY_LABEL_INDEX:[Z

    aget-boolean v1, v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_4

    move p1, p2

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/am/KillPolicyManager$ProcessSampler$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
