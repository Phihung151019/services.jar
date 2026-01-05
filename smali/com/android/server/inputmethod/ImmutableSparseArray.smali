.class public final Lcom/android/server/inputmethod/ImmutableSparseArray;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;


# instance fields
.field public final mArray:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/inputmethod/ImmutableSparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    sput-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object p1
.end method

.method public final cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object p1
.end method
