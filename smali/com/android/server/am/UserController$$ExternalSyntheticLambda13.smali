.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/UserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/UserController;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->endUserSwitch()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
