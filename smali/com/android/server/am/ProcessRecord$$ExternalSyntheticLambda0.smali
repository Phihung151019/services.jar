.class public final synthetic Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/procstats/ProcessState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/procstats/ProcessState;

    check-cast p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object p1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz p1, :cond_0

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_0
    return-void
.end method
