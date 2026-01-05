.class public final Lcom/android/server/am/mars/filter/FilterFactory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public filterHashMap:Ljava/util/HashMap;

.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getFilter(I)Lcom/android/server/am/mars/filter/IFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterFactory;->filterHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/filter/IFilter;

    return-object p0
.end method
