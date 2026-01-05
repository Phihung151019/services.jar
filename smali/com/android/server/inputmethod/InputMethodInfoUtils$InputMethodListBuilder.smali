.class public final Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mInputMethodSet:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final fillImes(Ljava/util/List;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodInfoUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p2, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move p5, v6

    move-object p6, v7

    goto :goto_0

    :cond_1
    return-void
.end method
