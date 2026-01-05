.class public final synthetic Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    const-string v1, " animation not completed in 1000 ms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UserSwitchingDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->run()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    const-string/jumbo v1, "dismissAnimation"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->run()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingDialog;->dismiss()V

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
