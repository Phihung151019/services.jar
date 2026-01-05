.class public final Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iput p2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->val$userId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mHost:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->val$userId:I

    iget v2, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->sendEdgeAppStartBr(II)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    iget-object v0, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v1, v0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    if-nez v1, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->val$userId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->sendEdgeAppStartBr(II)V

    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer$2;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;

    iget v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceContainer;->mStartCocktailBarCnt:I

    :cond_2
    :goto_0
    return-void
.end method
