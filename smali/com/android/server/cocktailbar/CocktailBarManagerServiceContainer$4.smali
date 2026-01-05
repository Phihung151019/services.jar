.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$TaskSystemBarsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    return-void
.end method


# virtual methods
.method public final onTransientSystemBarsVisibilityChanged(IZZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$4;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mSystemUiVisibilityPolicyController:Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;

    iget p1, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p3, p2}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->setState(IIZ)V

    iget p2, p0, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->mSystemUiVisibility:I

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/systemui/SystemUiVisibilityPolicyController;->systemUiVisibilityChanged()V

    :cond_0
    return-void
.end method
