.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$1:I

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserController$4;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$1:I

    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$2:I

    iget-object v0, v0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/UserController;->startUser(II)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$1:I

    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda10;->f$2:I

    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
