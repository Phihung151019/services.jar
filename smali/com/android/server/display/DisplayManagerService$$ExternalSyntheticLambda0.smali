.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/util/IntArray;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget v0, Lcom/android/server/display/DisplayManagerService$LocalService;->$r8$clinit:I

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    return-void

    :pswitch_0
    check-cast p0, Landroid/view/Display$Mode;

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/view/Display$Mode;

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
