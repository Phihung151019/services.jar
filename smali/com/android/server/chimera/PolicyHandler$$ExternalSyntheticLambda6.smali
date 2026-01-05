.class public final synthetic Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/PolicyHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/PolicyHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/PolicyHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/chimera/PolicyHandler;

    check-cast p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    iget p1, p1, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    iget-object p0, p0, Lcom/android/server/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method
