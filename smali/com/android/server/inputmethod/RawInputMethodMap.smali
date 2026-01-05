.class public final Lcom/android/server/inputmethod/RawInputMethodMap;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_MAP:Landroid/util/ArrayMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;
    .locals 7

    iget-object v0, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    xor-int/2addr p3, v2

    const-string/jumbo v4, "Unknown directBootAwareness="

    const-string v5, ". Falling back to DirectBootAwareness.AUTO"

    const-string/jumbo v6, "RawInputMethodMap"

    invoke-static {p2, v4, v5, v6}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p3, v3

    goto :goto_0

    :cond_1
    xor-int/2addr p3, v2

    :goto_0
    move p2, v3

    :goto_1
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p3, :cond_2

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v6, :cond_2

    :goto_2
    move p2, v2

    goto :goto_4

    :cond_2
    iget-object v6, p1, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v6, v5, v4}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    invoke-virtual {v1, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    :goto_5
    new-instance p0, Lcom/android/server/inputmethod/InputMethodMap;

    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object p0
.end method
