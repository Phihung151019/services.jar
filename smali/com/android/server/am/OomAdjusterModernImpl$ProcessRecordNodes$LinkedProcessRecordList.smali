.class public final Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

.field public final mValueFunction:Ljava/util/function/ToIntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/ToIntFunction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    new-instance v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    invoke-direct {v2, v1}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v2, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->mValueFunction:Ljava/util/function/ToIntFunction;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->HEAD:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes$LinkedProcessRecordList;->TAIL:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    if-eq v1, p0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    :cond_0
    iput-object p0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mNext:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    iput-object v0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;->mPrev:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNode;

    return-void
.end method
