.class public final synthetic Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/CompatConfig;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/CompatConfig;

    iput-object p2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p3, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/CompatConfig;

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-wide v2, p0, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;->f$2:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    new-instance p0, Lcom/android/server/compat/CompatChange;

    invoke-direct {p0, v2, v3}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object p0
.end method
