.class public final synthetic Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TransparentPolicy$TransparentPolicyState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
