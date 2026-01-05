.class public final synthetic Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowListenerController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IntArray;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method
