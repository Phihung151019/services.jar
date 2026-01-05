.class public final Lcom/android/server/input/KeyboardLedController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLedController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/KeyboardLedController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget p1, p0, Lcom/android/server/input/KeyboardLedController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    iget-object p1, p1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    iget-object p1, p1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
