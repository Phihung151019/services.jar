.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/display/DisplayManagerService;

    iput p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$1:I

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget-boolean v1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-ne v1, p0, :cond_0

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayPowerController;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$1:I

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object v2, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v2, v2, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object v4, v3, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/PersistentDataStore$DisplayState;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object v0, v3, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    :cond_2
    if-eqz v0, :cond_3

    iget-object p0, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/display/DisplayManagerService;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;->f$1:I

    check-cast p1, Lcom/android/server/display/LogicalDisplay;

    sget-boolean v2, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    if-eq p0, v2, :cond_4

    iput p0, p1, Lcom/android/server/display/LogicalDisplay;->mRefreshRateMode:I

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
