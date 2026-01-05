.class public final synthetic Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/DexController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DexController;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iput p2, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->updateDualViewMode(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DexController;

    iget p0, p0, Lcom/android/server/wm/DexController$$ExternalSyntheticLambda4;->f$1:I

    iget-object v0, v0, Lcom/android/server/wm/DexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->updateDualViewMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
