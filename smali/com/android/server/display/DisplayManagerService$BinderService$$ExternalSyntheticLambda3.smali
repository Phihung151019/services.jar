.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

.field public final synthetic f$1:Landroid/hardware/display/BrightnessConfiguration;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;I)V
    .locals 0

    iput p5, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    if-ne v4, v0, :cond_0

    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget v4, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    if-eq v4, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p1, p1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v0, v2, p1, v3, p0}, Lcom/android/server/display/DisplayManagerService;->setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
