.class public final Lcom/android/server/accounts/TokenCache$TokenLruCache;
.super Landroid/util/LruCache;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAccountEvictors:Ljava/util/HashMap;

.field public mTokenEvictors:Ljava/util/HashMap;


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p3, Lcom/android/server/accounts/TokenCache$Value;

    check-cast p4, Lcom/android/server/accounts/TokenCache$Value;

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    iget-object p0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    new-instance p1, Landroid/util/Pair;

    iget-object p2, p2, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    :cond_0
    return-void
.end method

.method public final sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    iget-object p0, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method
