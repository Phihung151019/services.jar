.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:[Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda3;->f$0:[Lcom/android/server/wm/TaskFragment;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p0, 0x1

    return p0
.end method
