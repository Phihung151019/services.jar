.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Landroid/util/SparseBooleanArray;


# direct methods
.method public synthetic constructor <init>(IILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/util/SparseBooleanArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;->f$4:Landroid/util/SparseBooleanArray;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    const-string v4, "Adding MP: "

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz v5, :cond_3

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-lez v5, :cond_3

    if-eq v5, v0, :cond_3

    if-eq v5, v1, :cond_3

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v0, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v7, "android.providers.media.module"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ActivityManager"

    const-string p1, "Adding MP++"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to add MP pid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "Adding MP--"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v0, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-boolean p1, p1, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz p1, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    :goto_1
    return-void
.end method
