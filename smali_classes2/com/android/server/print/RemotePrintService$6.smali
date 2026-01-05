.class public final Lcom/android/server/print/RemotePrintService$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$priorityList:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;Ljava/util/List;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/print/RemotePrintService$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/print/RemotePrintService$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$6;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$6;->val$priorityList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
