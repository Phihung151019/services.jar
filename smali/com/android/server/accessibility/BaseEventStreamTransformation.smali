.class public abstract Lcom/android/server/accessibility/BaseEventStreamTransformation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# instance fields
.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;


# virtual methods
.method public final getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 0

    iget-object p0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object p0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
