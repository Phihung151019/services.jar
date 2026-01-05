.class public final Lcom/android/server/print/RemotePrintService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
