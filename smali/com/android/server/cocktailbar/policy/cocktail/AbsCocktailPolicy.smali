.class public abstract Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;->mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicyManager;

    return-void
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0

    return-void
.end method

.method public abstract getCocktailType()I
.end method

.method public abstract isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;IZ)Z
.end method

.method public abstract isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Z)Z
.end method

.method public abstract isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
.end method

.method public abstract isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
.end method
