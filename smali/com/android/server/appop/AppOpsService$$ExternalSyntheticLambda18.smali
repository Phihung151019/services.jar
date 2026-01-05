.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseLongArray;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;->f$0:Landroid/util/SparseLongArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda18;->f$0:Landroid/util/SparseLongArray;

    check-cast p1, Lcom/android/server/appop/AttributedOp;

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    new-instance v0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;-><init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V

    invoke-virtual {p1, v0}, Lcom/android/server/appop/AttributedOp;->doForAllInProgressStartOpEvents(Ljava/util/function/Consumer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
