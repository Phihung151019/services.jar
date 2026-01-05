.class public final Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;
.super Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSystemBarAppearance:I

    return-void
.end method

.method public final topAppWindowChanged(IZZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService$CocktalBarLocalService;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerService;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerService;->mCocktailBarService:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSystemUiVisibilityPolicyController:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p2, p3}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    iget p3, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    and-int/2addr p2, p3

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p3, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    :cond_2
    iget p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->systemUiVisibilityChanged()V

    :cond_3
    return-void
.end method

.method public final turnOffWakupCocktailBarFromPowerManager(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final updateSysfsGripDisableFromWindowManager(Z)V
    .locals 0

    return-void
.end method

.method public final wakupCocktailBarFromWindowManager(ZII)V
    .locals 0

    return-void
.end method
