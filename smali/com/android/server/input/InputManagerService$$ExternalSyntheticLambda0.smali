.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$flatten$12(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$6(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$5(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :pswitch_2
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$9(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$8(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dumpAssociations$7(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_5
    check-cast p0, Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/input/InputManagerService;->lambda$dump$4(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
