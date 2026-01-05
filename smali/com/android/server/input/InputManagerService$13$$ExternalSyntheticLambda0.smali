.class public final synthetic Lcom/android/server/input/InputManagerService$13$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputManagerService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService$2;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/input/InputManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/input/InputManagerService$13$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$13$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/InputManagerService$2;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->showingTouchSensitivityNotificationIfNeeded()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->updateFlowPointerSettings()V

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$2;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
