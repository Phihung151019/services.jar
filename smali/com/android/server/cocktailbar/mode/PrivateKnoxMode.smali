.class public final Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getDefinedCocktailType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getDefinedPrivateModeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "knoxmode"

    return-object p0
.end method

.method public final isEnableMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final onBroadcastReceived(Landroid/content/Intent;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method
