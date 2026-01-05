.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$1:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda2;->f$2:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "dispatch of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method
