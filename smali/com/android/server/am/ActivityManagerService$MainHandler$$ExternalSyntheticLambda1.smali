.class public final synthetic Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Message;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->f$0:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;->f$0:Landroid/os/Message;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/app/ActivityManagerInternal$BindServiceEventListener;

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BindServiceEventListener;->onBindingService(Ljava/lang/String;I)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/app/ActivityManagerInternal$BroadcastEventListener;

    iget-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p0, p0, Landroid/os/Message;->arg1:I

    invoke-interface {p1, v0, p0}, Landroid/app/ActivityManagerInternal$BroadcastEventListener;->onSendingBroadcast(Ljava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
