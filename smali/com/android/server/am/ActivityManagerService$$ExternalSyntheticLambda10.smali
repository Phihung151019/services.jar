.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;
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

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda10;->f$0:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {p1, p0}, Landroid/os/Process;->sendSignal(II)V

    :cond_0
    return-void
.end method
