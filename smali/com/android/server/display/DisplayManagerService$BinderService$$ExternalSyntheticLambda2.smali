.class public final synthetic Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

.field public final synthetic f$1:Landroid/hardware/display/BrightnessConfiguration;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$6:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/DisplayManagerService$BinderService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$1:Landroid/hardware/display/BrightnessConfiguration;

    iget v4, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$2:I

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$4:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$5:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticLambda2;->f$6:Ljava/util/List;

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget p0, Lcom/android/server/display/DisplayManagerService$BinderService;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v3, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetBrightnessConfigurationForDisplayWithStatsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
