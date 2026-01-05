.class public final Lcom/android/server/am/mars/filter/FilterChain;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFilter:Lcom/android/server/am/mars/filter/IFilter;

.field public nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;


# virtual methods
.method public final filter(IIILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/IFilter;->filter(IIILjava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterChain;->filter(IIILjava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
