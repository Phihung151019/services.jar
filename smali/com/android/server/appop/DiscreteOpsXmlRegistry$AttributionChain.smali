.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mChain:Ljava/util/ArrayList;

.field public mExemptPkgs:Ljava/util/Set;

.field public mLastVisibleEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

.field public mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;


# virtual methods
.method public final getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget v0, v0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne p1, p4, :cond_0

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne p1, p2, :cond_0

    iget-wide p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide p2, p5, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
