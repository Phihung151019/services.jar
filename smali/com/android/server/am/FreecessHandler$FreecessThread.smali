.class public final Lcom/android/server/am/FreecessHandler$FreecessThread;
.super Landroid/os/HandlerThread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/am/FreecessHandler$BluetoothHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mHandleAmsLockHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/server/am/FreecessHandler$BluetoothHandler;-><init>(Lcom/android/server/am/FreecessHandler;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mBluetoothHandler:Lcom/android/server/am/FreecessHandler$BluetoothHandler;

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$MainHandler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/server/am/FreecessHandler$MainHandler;-><init>(Lcom/android/server/am/FreecessHandler;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
