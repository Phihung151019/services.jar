.class public final Lcom/android/server/IntentResolver$IteratorWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public mCur:Ljava/lang/Object;

.field public final mI:Ljava/util/Iterator;

.field public final synthetic this$0:Lcom/android/server/IntentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    iput-object p2, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mCur:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->this$0:Lcom/android/server/IntentResolver;

    invoke-virtual {v1, v0}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/IntentResolver$IteratorWrapper;->mI:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
