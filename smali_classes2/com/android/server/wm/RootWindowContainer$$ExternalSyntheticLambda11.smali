.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda11;->f$0:I

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->switchUser(I)V

    return-void
.end method
