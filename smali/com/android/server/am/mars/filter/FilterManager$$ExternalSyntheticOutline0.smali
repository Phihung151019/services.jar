.class public abstract synthetic Lcom/android/server/am/mars/filter/FilterManager$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static m(Lcom/android/server/am/mars/filter/FilterFactory;ILcom/android/server/am/mars/filter/FilterChainBuilder;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    invoke-virtual {p0, p4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/am/mars/filter/FilterChainBuilder;->add(Lcom/android/server/am/mars/filter/IFilter;)V

    return-void
.end method
