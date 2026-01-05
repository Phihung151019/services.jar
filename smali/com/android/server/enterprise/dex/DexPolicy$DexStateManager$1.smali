.class public final Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->-$$Nest$misExternalDisplayDexMode(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    const-string/jumbo v0, "onDisplayAdded: #Id="

    const-string v1, " isInDesktopWindowing="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v1, v1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    const-string v2, "DexPolicyService"

    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mhandleDexModePackageDisable(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->-$$Nest$mapplyDscRestrictionsForDexScreenResolution(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$menableEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_0
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->-$$Nest$misExternalDisplayDexMode(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "previousDexState : "

    const-string v2, ", currentDexState : "

    invoke-static {v0, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v1, v1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    const-string v2, "DexPolicyService"

    invoke-static {v2, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mhandleDexModePackageDisable(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->-$$Nest$mapplyDscRestrictionsForDexScreenResolution(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$menableEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V

    return-void

    :cond_2
    iget-object p1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mhandleDexModePackageEnable(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mremoveEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->-$$Nest$misExternalDisplayDexMode(Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    const-string/jumbo v0, "onDisplayRemoved: #Id="

    const-string v1, " isInDesktopWindowing="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-boolean v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->mIsExternalDisplayDexMode:Z

    const-string v1, "DexPolicyService"

    invoke-static {v1, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object p1, p1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mhandleDexModePackageEnable(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager$1;->this$1:Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->-$$Nest$mremoveEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V

    const-string/jumbo p0, "handleDexModePackageEnable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
