.class public abstract Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# instance fields
.field public final mCocktailType:I

.field public final mContext:Landroid/content/Context;

.field public final mPrivateModeId:I

.field public final mPrivateModeName:Ljava/lang/String;

.field public final mRegistratonType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedCocktailType()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedPrivateModeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return-void
.end method


# virtual methods
.method public final getCocktailType()I
    .locals 0

    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    return p0
.end method

.method public abstract getDefinedCocktailType()I
.end method

.method public abstract getDefinedPrivateModeName()Ljava/lang/String;
.end method

.method public final getModeId()I
    .locals 0

    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    return p0
.end method

.method public final getModeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRegistrationType()I
    .locals 0

    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return p0
.end method

.method public abstract isEnableMode()Z
.end method

.method public final renewMode(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->isEnableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    return p0

    :cond_0
    return p1
.end method
