.class public final synthetic Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

.field public final synthetic f$1:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/sec/TimeToLeaveHelper;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iput-object p2, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 0

    iget p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "succeeded to remove documents"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/notification/sec/TimeToLeaveHelper;

    iget-object p0, p0, Lcom/android/server/notification/sec/TimeToLeaveHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    const-string/jumbo p0, "TimeToLeaveHelper"

    const-string/jumbo p1, "succeeded to put documents"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
