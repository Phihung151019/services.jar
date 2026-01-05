.class public final Lcom/android/server/am/mars/filter/FilterChainBuilder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public filterChain:Lcom/android/server/am/mars/filter/FilterChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/am/mars/filter/IFilter;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/FilterChain;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    iput-object v1, v0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-void
.end method
