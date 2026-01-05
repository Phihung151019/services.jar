.class public final synthetic Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mReduceBrightColorsTintController:Lcom/android/server/display/color/ReduceBrightColorsTintController;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-static {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-static {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mapplyTint(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
