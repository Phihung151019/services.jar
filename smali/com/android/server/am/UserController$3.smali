.class public final Lcom/android/server/am/UserController$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserController$3;->$r8$classId:I

    iput p1, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    iput-object p2, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/android/server/am/UserController$$ExternalSyntheticLambda1;B)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/am/UserController$3;->$r8$classId:I

    iput p1, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    iput-object p2, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    iget p1, p0, Lcom/android/server/am/UserController$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "broadcast-ACTION_SHUTDOWN-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    const-string p3, "-[stopUser]"

    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-static {p2, p1}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    return-void

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "broadcast-ACTION_USER_STOPPING-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    const-string p3, "-[stopUser]"

    invoke-static {p2, p1, p3}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-static {p2, p1}, Lcom/android/server/am/UserController;->-$$Nest$smasyncTraceEnd(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda1;->run()V

    return-void

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Finished processing BOOT_COMPLETED for u"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/UserController$3;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/Thread;

    iget p2, p0, Lcom/android/server/am/UserController$3;->val$userId:I

    new-instance p3, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;

    const/4 p4, 0x1

    invoke-direct {p3, p2, p4, p0}, Lcom/android/server/am/UserController$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
