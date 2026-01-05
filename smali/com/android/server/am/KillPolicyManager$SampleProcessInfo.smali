.class public final Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public adjLabelIndex:I

.field public procState:I

.field public processName:Ljava/lang/String;

.field public pssInMb:I

.field public swapPssInMb:I

.field public writebackInMb:I


# virtual methods
.method public final toJsonArray()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->procState:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->pssInMb:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->swapPssInMb:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->writebackInMb:I

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    return-object v0
.end method
